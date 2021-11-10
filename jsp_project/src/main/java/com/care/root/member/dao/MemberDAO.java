package com.care.root.member.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.care.root.member.dto.MemberDTO;

public class MemberDAO {
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//System.out.println("드라이브 로드 성공");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","java2","1234");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public ArrayList<MemberDTO> getMemberList() {
		//System.out.println("getMemberList() 호출되었습니다");
		String sql = "select * from jsp_member";
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) { //다음항목이 존재하면 rs.next()에 참이 들어옴
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public int register(MemberDTO dto) {
		//System.out.println("id : " + dto.getId());
		//System.out.println("pwd : " + dto.getPwd());
		//System.out.println("name : " + dto.getName());
		//System.out.println("addr : " + dto.getAddr());
		//값이 잘 넘어오는지 테스트하는 팁. 한글이 깨지는지도 항상 확인해야함
		
		String sql = "insert into jsp_member(id,pwd,name,addr) values(?,?,?,?)";
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPwd());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getAddr());
			
			result = ps.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		//ID는 유일값으로 설정했기 때문에 중복불가. 이 경우 콘솔창에 에러메시지가 뜨지만 문제가 생긴건 아님
		return result;
	}
	public MemberDTO getPersonal(String id) {
		String sql = "select * from jsp_member where id= '" + id + "'";
		MemberDTO dto = null;
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto = new MemberDTO();
				dto.setId( rs.getString("id") );
				dto.setPwd( rs.getString("pwd") );
				dto.setName( rs.getString("name") );
				dto.setAddr( rs.getString("addr") );
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	public int delete(String id) {
		int result = 0;
		String sql = "delete from jsp_member where id='"+ id +"'";
		try {
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public int modify_save(MemberDTO dto) {
		String sql = "update jsp_member set addr=?, name=?, pwd=? where id=?";
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getAddr());
			ps.setString(2, dto.getName() );
			ps.setString(3, dto.getPwd());
			ps.setString(4, dto.getId() );
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public MemberDTO loginchk(String id) {
		String sql = "select * from jsp_member where id= '" + id + "'";
		MemberDTO dto = null;
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto = new MemberDTO();
				dto.setId( rs.getString("id") );
				dto.setPwd( rs.getString("pwd") );
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
}
