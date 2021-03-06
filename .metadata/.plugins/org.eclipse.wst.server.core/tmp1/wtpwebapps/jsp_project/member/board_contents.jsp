<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>BOARD_CONTENTS</title>
<style type="text/css">
	table{margin:30px 0;}
	.board_title{width: 400px; height: 20px; font-size: 12pt;}
	.board_contents{width: 605px; height: 300px; text-align: top;}
	.btns{text-align: right;}
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
		<jsp:useBean id="dao" class="com.care.root.member.dao.BoardDAO"/>
		<c:set var="dto" value="${dao.selectBoard(param.title) }"/>
			<table border="1">
				<tr>
					<th width="150px">[ID] ${dto.id }</th>
					<td class="board_title">[제목] ${dto.title }</td>
				</tr>
				<tr>
					<td colspan="2">
					<textarea class="board_contents" readonly>${dto.contents }</textarea>
					</td>
				</tr>
				<c:choose>
				<c:when test="${loginUser == dto.id }">
				<tr>
					<td class="btns" colspan="2">
					<button type="button" onclick="location.href='${contextPath}/member/board_modify.jsp?title=${dto.title }'">수정하기</button>
					<button type="button" onclick="location.href='${contextPath}/member/board_deleteAsk.jsp?title=${dto.title }&id=${dto.id }'">삭제하기</button>
					</td>
				</tr>
				</c:when>
				
				</c:choose>
			</table>
		</c:otherwise>
	</c:choose>
	
	
	</div>	
	<%-- 게시글마다 고유번호를 하나씩 자동부여하는걸 만들었어야 했는데 늦게 깨달아서 어쩔수없이 제목을 유일값으로 설정함 --%>
<c:import url="../default/footer.jsp"/>
</body>
</html>