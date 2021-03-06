<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>BOARD_MODIFY</title>
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
	<jsp:useBean id="dao" class="com.care.root.member.dao.BoardDAO"/>
	<c:set var="dto" value="${dao.selectBoard(param.title) }"/>
	
	<c:choose>
		<c:when test="${empty loginUser }">
			<c:redirect url="login.jsp"/>
		</c:when>
		<c:when test="${dto.id != loginUser}">
			<c:redirect url="board.jsp"/>
		</c:when>
		<c:otherwise>
		<h1>게시글 수정</h1>
			<form action="board_modifyDB.jsp" method="post">
			<input type="hidden" name="id" value="${loginUser }">
			<table border="1">
				<tr>
					<th width="150px">[ID] ${dto.id }</th>
					<td>[제목] <input name="title" class="board_title" type="text" value="${dto.title }"></td>
					
					<input type="hidden" name="unmodified_title" value="${dto.title }">
				</tr>
				<tr>
					<td colspan="2">
					<textarea name="contents" class="board_contents">${dto.contents }</textarea>
					</td>
				</tr>
				<tr>
					<td class="submit_btn" colspan="2"><button type="submit">수정하기</button></td>
				</tr>
			</table>
			</form>
		</c:otherwise>
	</c:choose>
	</div>	
<c:import url="../default/footer.jsp"/>
</body>
</html>