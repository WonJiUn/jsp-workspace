<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>LOGIN_SUCCESS</title>
</head>
<body>
<fmt:requestEncoding value="utf-8"/>
<c:import url="../default/header.jsp"/>
	<div class="wrap">
	
	<h1>로그인 성공</h1>
	로그인한 아이디 : ${loginUser }
	</div>	
<c:import url="../default/footer.jsp"/>
</body>
</html>