<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<style type="text/css">
	button{width: 60px; height:50px;}
	table{position: relative; left:74%}
	.regist{text-decoration: none; color:black;}
	.regist:hover{text-decoration: underline;}
</style>
</head>
<body>
<fmt:requestEncoding value="utf-8"/>
<c:import url="../default/header.jsp"/>
	<div class="wrap">
	<c:choose>
		<c:when test="${not empty loginUser }">
			<c:redirect url="../default/main.jsp"/>
		</c:when>
		<c:otherwise>
		
		<h1>로그인 페이지 입니다</h1>
		<form action="loginchk.jsp">
		<table>
			<tr>
				<td><input type="text" name="id" placeholder="아이디"></td>
				<td rowspan="2"><button type="submit">로그인</button></td>
			</tr>
			<tr>
				<td><input type="text" name="pwd" placeholder="비밀번호"></td>
			</tr>
			<tr>
				<td colspan="2"><a href="${contextPath}/member/member_register.jsp" class="regist">회원가입</a></td>
			</tr>
		</table>
		</form>
		
		</c:otherwise>
	</c:choose>
	</div>	
<c:import url="../default/footer.jsp"/>
</body>
</html>