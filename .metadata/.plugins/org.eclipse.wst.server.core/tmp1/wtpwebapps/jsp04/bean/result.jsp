<%@page import="jsp04.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>result.jsp<hr>
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		MemberDTO dto = new MemberDTO();
		dto.setId(id); dto.setPwd(pwd); dto.setName(name);
		//dto가 가지고있는 값은 디비에 저장한다.
		//이런 방식으로 만들면 저장할 값이 많은만큼 많이 만들어야한다는 단점이 있음
		//아래 useBean을 만들어서 사용하는 방식이 이럴때는 더 편리함
		//단, 아래의 방식으로 사용할때는 DTO에서 만든 이름과 membership.dto에서의 name이 같아야만 가능하다
		//MemberDTO라는 자료형으로 객체생성 -> 세터에 이름이 같은 모든값들을 자동으로 저장
		//(전페이지에서 넘어오는 이름이 다르면 property="id", value="${param.id}"처럼 따로 적어줘야함)
	%>
	<%= dto.getId() %> <%= dto.getPwd() %> <%= dto.getName() %>
	<hr>
	<jsp:useBean id="member" class="jsp04.MemberDTO"/>
	<jsp:setProperty property="*" name="member"/>
	태그로 처리<br>
	${member.id }
	${member.pwd }
	${member.name }
</body>
</html>