<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>loginForm.jsp
<form action="${contextPath }/response/chkLogin.jsp" method="post">
	<input type="text" name="id" placeholder="input id"><br>
	<input type="password" name="pwd" placeholder="input password"><br>
	<input type="submit" value="LOGIN"><br>
	
</form>
</body>
</html>