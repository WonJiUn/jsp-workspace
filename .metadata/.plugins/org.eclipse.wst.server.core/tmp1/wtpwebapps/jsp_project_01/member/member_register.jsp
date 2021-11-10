<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${contextPath }/css/member.css" rel="stylesheet" >
<style type="text/css">
	form input { width : 300px; 
			padding:10px;
			border: 1px solid black; 
			margin: 5px 0;
			border-radius: 5px; 
			}
</style>
</head>
<body>
<c:import url="../default/header.jsp"/>
<div class="wrap">
	<div style="width:300px; margin: 0 auto;">
		<h2 style="text-align: center; margin: 20px 0;">회 원 가 입</h2>
		<form action="${contextPath }/member/register.jsp" method="post">
			<input type="text" name="id" placeholder="input id"><br>
			<input type="password" name="pwd" placeholder="input password"><br>
			<input type="text" name="name" placeholder="input name"><br>
			<input type="text" name="addr" placeholder="input address"><br>
			<button class="btn btn_position" type="submit" >reigster</button>
		</form>
	</div>
</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>