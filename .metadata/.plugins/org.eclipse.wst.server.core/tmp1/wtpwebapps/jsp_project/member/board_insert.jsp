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
	
	ID : ${loginUser }<br>
	제목 : ${param.title }<br>
	내용 : ${param.contents }<br>
	
	<jsp:useBean id="dao" class="com.care.root.member.dao.BoardDAO"/>
	<jsp:useBean id="dto" class="com.care.root.member.dto.BoardDTO"/>
	<jsp:setProperty property="*" name="dto"/>
	
	<c:choose>
		<c:when test="${empty loginUser }">
			<c:redirect url="login.jsp"/>
		</c:when>
		<c:when test="${empty param.title }">
			<script type="text/javascript">
			alert('제목을 입력해주세요')
			location.href="board_write.jsp";
			</script>
		</c:when>
		<c:when test="${empty param.contents }">
			<script type="text/javascript">
			alert('내용을 입력해주세요')
			location.href="board_write.jsp";
			</script>
		</c:when>
		<c:otherwise>
			<c:set var="result" value="${dao.board_insert(dto) }" />
			<c:choose>
				<c:when test="${result == 1 }">
					<script type="text/javascript">
					alert('작성 성공!')
					location.href="board.jsp";
					</script>
				</c:when>
				<c:otherwise>
					<script type="text/javascript">
					alert('문제발생 작성실패')
					location.href="board_write.jsp";
					</script>
				</c:otherwise>
			</c:choose>
		</c:otherwise>
	</c:choose>
	
</body>
</html>