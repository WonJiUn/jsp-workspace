<%@page import="jsp04.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>userBean.jsp<hr>
<jsp:useBean id="dto" class="jsp04.MemberDTO"/>
<jsp:setProperty property="pwd" name="dto" value="비밀번호"/>
${dto.setId("안녕하세요") }
id : ${dto.id }, ${dto.getId() }<br>
pwd : ${dto.pwd },
<jsp:getProperty property="pwd" name="dto"/>
<!--
	위랑 아래는 동일한 기능으로 작동함
	jsp:setProperty 세터
	jsp:getProperty 게터
 -->

<%-- 
	<% %>안에서는 자바문법 사용가능. 
	<%
		MemberDTO dto = new MemberDTO();
		dto.setId("111");
	%>
	id : <%= dto.getId() %>
--%>
</body>
</html>