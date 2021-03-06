<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{margin:30px 0;}
	.board_title{width: 400px; height: 20px; font-size: 12pt;}
	.board_contents{width: 605px; height: 300px; text-align: top;}
	.submit_btn{text-align: right;}
	button{height: 30px;}
	textarea{white-space: pre; font-size: 12pt;}
</style>
</head>
<body>
<fmt:requestEncoding value="utf-8"/>
<c:import url="../default/header.jsp"/>
	<div class="wrap">
	<c:choose>
		<c:when test="${empty loginUser }">
			<c:redirect url="login.jsp"/>
		</c:when>
		<c:otherwise>
			<form action="board_insert.jsp" method="post">
			<h1>새 게시글 작성</h1>
			<input type="hidden" name="id" value="${loginUser }">
			<table border="1">
				<tr>
					<th width="150px">[ID] ${loginUser }</th>
					<td>[제목] <input name="title" class="board_title" type="text" placeholder="제목을 입력해주세요"></td>
				</tr>
				<tr>
					<td colspan="2">
					<textarea name="contents" class="board_contents" placeholder="내용을 입력해주세요"></textarea>
					</td>
				</tr>
				<tr>
					<td class="submit_btn" colspan="2"><button type="submit">작성하기</button></td>
				</tr>
			</table>
			</form>
		</c:otherwise>
	</c:choose>
	</div>	
<c:import url="../default/footer.jsp"/>
</body>
</html>