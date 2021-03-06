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
		
		<script type="text/javascript">
		if(!confirm("정말 삭제하시겠습니다?")){
			location.href="${contextPath}/member/board_contents.jsp?title=${param.title }";
		}else{
			location.href="board_deleteDB.jsp?title=${param.title}&id=${param.id}";
		}
		
		</script>
		</c:otherwise>
	</c:choose>
	
</body>
</html>