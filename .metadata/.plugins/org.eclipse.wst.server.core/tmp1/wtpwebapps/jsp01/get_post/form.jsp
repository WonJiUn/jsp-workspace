<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>form.jsp<br>
<!-- form 경로는 절대경로, 상대경로 아무거나 써도 상관없음 -->
<h1>get방식</h1>
	<form action="/jsp01/get_post/getMethod.jsp" method="get">
		<input type="text" name="id" placeholder="input id"><br>
		<input type="password" name="pwd" placeholder="input password"><br>
		<input type="submit" value="쿼리전송"><br>
	</form>
<h1>post방식</h1>
	<form action="/jsp01/get_post/postMethod.jsp" method="post">
		<input type="text" name="id" placeholder="input id"><br>
		<input type="password" name="pwd" placeholder="input password"><br>
		<input type="submit" value="쿼리전송"><br>
	</form>
</body>
</html>