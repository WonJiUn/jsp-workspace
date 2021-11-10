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
<jsp:useBean id="dao" class="com.care.root.member.dao.BoardDAO"/>
<jsp:useBean id="dto" class="com.care.root.member.dto.BoardDTO"/>
<jsp:setProperty property="*" name="dto"/>
	<c:choose>
		<c:when test="${empty loginUser }">
			<c:redirect url="login.jsp"/>
		</c:when>
		<c:when test="${param.id != loginUser}">
			<c:redirect url="board.jsp"/>
		</c:when>
		<c:otherwise>
			${param.id }<br>
			${param.title }<br>
			${param.contents }<br>
			${unmodified_title }
			
			<c:set var="result" value="${dao.modify_save(dto) }" />
			
			<c:choose>
				<c:when test="${result == 1 }">
					<script type="text/javascript">
					alert('수정 성공!')
					location.href="board.jsp";
					</script>
				</c:when>
				<c:otherwise>
					<script type="text/javascript">
					alert('문제발생 수정실패')
					location.href="board.jsp";
					</script>
				</c:otherwise>
			</c:choose>
			
		</c:otherwise>
	</c:choose>

</body>
</html>