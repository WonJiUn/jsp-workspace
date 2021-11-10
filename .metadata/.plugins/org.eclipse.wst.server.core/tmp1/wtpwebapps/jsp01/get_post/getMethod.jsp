<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>getMethod.jsp<br>
	<h1>getMethod 입니다</h1>
	아이디 : <%= request.getParameter("id") %><br>
	비밀번호 : <%= request.getParameter("pwd") %><br>
	<hr>
	${param.id }<br>
	${param.pwd }<br>
	<hr>
	<a href='/jsp01/webContent.jsp'>webContent이동</a>
	<p><a href='/jsp01/test1/test1.jsp'>test1이동</a></p>
	<p><a href='/jsp01/test1/test2/test2.jsp'>test2이동</a></p>
	<hr>
</body>
</html>