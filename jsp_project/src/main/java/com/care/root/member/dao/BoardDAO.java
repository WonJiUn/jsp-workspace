package com.care.root.member.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.care.root.member.dto.BoardDTO;

public class BoardDAO {
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public BoardDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//System.out.println("드라이브 로드 성공");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","java2","1234");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int board_insert(BoardDTO dto) {
		//System.out.println("id : " + dto.getId());
		//System.out.println("제목 : " + dto.getTitle());
		//System.out.println("내용 : " + dto.getContents());
		
		String sql = "insert into jsp_board(id,title,contents) values(?,?,?)";
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getTitle());
			ps.setString(3, dto.getContents());
			
			result = ps.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public ArrayList<BoardDTO> getBoardList() {
		String sql = "select * from jsp_board";
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) { //다음항목이 존재하면 rs.next()에 참이 들어옴
				BoardDTO dto = new BoardDTO();
				dto.setId(rs.getString("id"));
				dto.setTitle(rs.getString("title"));
				dto.setContents(rs.getString("contents"));
				
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public BoardDTO selectBoard(String title) {
		String sql = "select * from jsp_board where title= '" + title + "'";
		BoardDTO dto = null;
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto = new BoardDTO();
				dto.setId( rs.getString("id") );
				dto.setTitle( rs.getString("title") );
				dto.setContents( rs.getString("contents") );
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	public int modify_save(BoardDTO dto) {
		//System.out.println("원래제목 : " + dto.getUnmodified_title());
		//System.out.println("제목 : " + dto.getTitle());
		//System.out.println("내용 : " + dto.getContents());
		
		String sql = "update jsp_board set title=?, contents=? where title=?";
		
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getTitle());
			ps.setString(2, dto.getContents());
			ps.setString(3, dto.getUnmodified_title());
			
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public int delete(String title) {
		int result = 0;
		String sql = "delete from jsp_board where title='"+ title +"'";
		try {
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
