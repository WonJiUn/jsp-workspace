<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOARD</title>
<style type="text/css">
	table{ margin:30px 0 20px 0;}
	tr{height:35px;}
	button{height: 30px;}
	.msg_title{text-decoration: none; color:black;}
	.msg_title:hover{text-decoration: underline;}
</style>
</head>
<body>
<fmt:requestEncoding value="utf-8"/>
<c:import url="../default/header.jsp"/>
	<div class="wrap"> 
	<jsp:useBean id="dao" class="com.care.root.member.dao.BoardDAO"/>
	<c:set var="list" value="${dao.getBoardList() }"/>
	<c:choose>
		<c:when test="${empty loginUser }">
			<c:redirect url="login.jsp"/>
		</c:when>
		<c:otherwise>
			<table border="1">
				<tr>
					<th width="150px">작성자</th><th width="300px">제목</th>
				</tr>
				<c:forEach var="msg_board" items="${list }">
				<tr>
					<td>${msg_board.id }</td>
					<td><a href="${contextPath}/member/board_contents.jsp?title=${msg_board.title }" class="msg_title">${msg_board.title }</a></td>
				</tr>
				</c:forEach>
				
			</table>
			<button type="button" onclick="location.href='${contextPath}/member/board_write.jsp'">글쓰기</button>
		</c:otherwise>
	</c:choose>
	
	</div>	
	<%-- 게시글마다 고유번호를 하나씩 자동부여하는걸 만들었어야 했는데 늦게 깨달아서 어쩔수없이 제목을 유일값으로 설정함 --%>
<c:import url="../default/footer.jsp"/>
</body>
</html>