<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBERSHIP_INFO</title>
<style type="text/css">
	hr{margin: 10px 0;}
</style>
</head>
<body>
<fmt:requestEncoding value="utf-8"/>
<c:import url="../default/header.jsp"/>
	<div class="wrap">
	
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
		<h1>개인 정보</h1>
		<c:set var="mem" value="${dao.getPersonal(param.id) }"/>
		<table border="1">
			<tr>
				<th>아이디</th><td>${param.id }</td>
			</tr>
			<tr>
				<th>비밀번호</th><td>${mem.pwd }</td>
			</tr>
			<tr>
				<th>이름</th><td>${mem.name }</td>
			</tr>
			<tr>
				<th>주소</th><td>${mem.addr }</td>
			</tr>
			
		</table>
		<hr>
		<button type="button" onclick="location.href='modify.jsp?id=${mem.id }'">수정</button>
		<c:set var="session_id" value="${ mem.id}" scope="session"/>
		<button type="button" onclick="location.href='deleteAsk.jsp'">삭제</button>
		
	</div>	
<c:import url="../default/footer.jsp"/>
</body>
</html>