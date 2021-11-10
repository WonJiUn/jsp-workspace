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
</head>
<body>
<jsp:useBean id="dao" class="com.care.root.member.dao.BoardDAO"/>
	<fmt:requestEncoding value="utf-8"/>
	<div class="wrap">
		<c:choose>
		<c:when test="${empty loginUser }">
			<c:redirect url="login.jsp"/>
		</c:when>
		<c:when test="${param.id != loginUser}">
			<c:redirect url="board.jsp"/>
		</c:when>
		<c:otherwise>
			<c:set var="result" value="${dao.delete(param.title) }" />
			<c:choose>
				<c:when test="${result == 1 }">
					<script type="text/javascript">
					alert('삭제 성공!')
					location.href="board.jsp";
					</script>
				</c:when>
				<c:otherwise>
					<script type="text/javascript">
					alert('문제발생 삭제실패')
					location.href="board.jsp";
					</script>
				</c:otherwise>
			</c:choose>
		</c:otherwise>
	</c:choose>
</body>
</html>