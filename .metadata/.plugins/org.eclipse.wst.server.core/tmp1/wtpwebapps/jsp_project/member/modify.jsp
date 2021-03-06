<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	hr{margin: 10px 0;}
</style>
</head>
<body>
<c:import url="../default/header.jsp"/>
	<div class="wrap">
		<h1>개인정보 수정</h1>
		<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
		<c:set var="mem" value="${dao.getPersonal(param.id) }"/>
		<form action="modify_save.jsp" method="post">
		<input type="hidden" name="id" value="${mem.id }">
		<table border="1">
			<tr>
				<th>아이디</th><td>${param.id }</td>
			</tr>
			<tr>
				<th>비밀번호</th><td><input type="text" name="pwd" value="${mem.pwd }"></td>
			</tr>
			<tr>
				<th>이름</th><td><input type="text" name="name" value="${mem.name }"></td>
			</tr>
			<tr>
				<th>주소</th><td><input type="text" name="addr" value="${mem.addr }"></td>
			</tr>
			
		</table>
		<hr>
		<input type="submit" value="수정하기">
		<input type="button" value="이전" onclick="history.back()">
		</form>
	</div>	
<c:import url="../default/footer.jsp"/>
</body>
</html>