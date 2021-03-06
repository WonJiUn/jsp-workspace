<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	id : ${session_id }<br>
	id : ${sessionScope.session_id }
	
	<%--
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
	${dao.delete(session_id) }
	<c:remove var="session_id" scope="session"/>
	<c:redirect url="membership.jsp"/>
	--%>
	
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
	<jsp:useBean id="dto" class="com.care.root.member.dto.MemberDTO"/>
	<c:set var="result" value="${dao.delete(session_id) }"/>
	<c:remove var="session_id" scope="session"/>
	
	<c:choose>
		<c:when test="${result == 1 }">
			<script type="text/javascript">
			alert('삭제되었습니다')
			location.href="membership.jsp";
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
			alert('삭제실패!')
			location.href="member_info.jsp?id=${dto.id}";
			</script>
		</c:otherwise>
	</c:choose>
	
</body>
</html>