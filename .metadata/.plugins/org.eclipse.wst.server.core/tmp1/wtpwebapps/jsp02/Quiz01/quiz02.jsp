<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="q2" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#wrap{width: 400px; height: 200px; margin:auto; border: 1px solid red;}
	h2{text-align: center;}
	.center{text-align: center;}
</style>
</head>
<body>
<div id="wrap">
	<h2>설문 조사</h2>
	<q2:set var="contextPath" value="${pageContext.request.contextPath }"/>
	<form action="${contextPath }/Quiz01/views02.jsp">
	<table border="1" align="center">
		<tr>
			<td class="center">이름 : </td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td class="center">성별 : </td>
			<td><input type="radio" name="gender" value="남자다잉" >남자
			<input type="radio" name="gender" value="여자다잉" checked>여자</td>
		</tr>
		<tr>
			<td class="center">좋아하는 계절 : </td>
			<td><input type="checkbox" name="season" value="봄">봄
			<input type="checkbox" name="season" value="여름">여름
			<input type="checkbox" name="season" value="가을">가을
			<input type="checkbox" name="season" value="겨울">겨울</td>
			
		</tr>
		<tr>
			<td class="center"><input type="submit" value="전송"></td>
			<td class="center"><input type="reset" value="취소"></td>
		</tr>
	</table>
	</form>
</div>
</body>
</html>