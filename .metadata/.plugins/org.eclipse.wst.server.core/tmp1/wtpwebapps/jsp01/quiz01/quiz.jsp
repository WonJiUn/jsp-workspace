<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<h1>Quiz01</h1>
	<form action="/jsp01/quiz01/result.jsp" method="get">
		<input type="text" name="num" placeholder="숫자를 입력하세요"><br>
		<input type="radio" name="gender" value="남자">남
		<input type="radio" name="gender" value="여자">여<br>
		<input type="submit" value="쿼리 전송">
	
	</form>
</body>
</html>