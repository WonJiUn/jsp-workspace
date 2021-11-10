<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%= "<h1>test1.jsp입니다</h1>" %>
	<hr>
	<%= "<a href='http://localhost:8070/jsp01/test1/test2/test2.jsp'>test2이동 합니다</a>" %>
	<%= "<p><a href='http://localhost:8070/jsp01/webContent.jsp'>webContent이동 합니다</a></p>" %>
	<hr>
	<h3>절대경로</h3>
	<a href='/jsp01/test1/test2/test2.jsp'>test2이동 합니다</a>
	<p><a href='/jsp01/webContent.jsp'>webContent이동 합니다</a></p>
	<hr>
	<h3>상대경로</h3>
	<a href='test2/test2.jsp'>test2이동 합니다</a>
	<p><a href='../webContent.jsp'>webContent이동 합니다</a></p>
</body>
</html>