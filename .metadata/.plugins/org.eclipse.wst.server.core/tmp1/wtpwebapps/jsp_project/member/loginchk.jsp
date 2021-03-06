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
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
 
	<c:set var="mem" value="${dao.loginchk(param.id) }"/>
	
	<%--
	${param.id } 
	${param.pwd }
	${mem.id }
	${mem.pwd }
	--%>
	
	<c:choose>
		<c:when test="${empty param.id}">
			<script type="text/javascript">
				alert('아이디를 입력해주세요')
				location.href="login.jsp";
			</script>
		</c:when>
		<c:when test="${empty param.pwd}">
			<script type="text/javascript">
				alert('비밀번호를 입력해주세요')
				location.href="login.jsp";
			</script>
		</c:when>
		<c:when test="${empty mem.id }">
			<script type="text/javascript">
				alert('등록되지 않은 아이디입니다')
				location.href="login.jsp";
			</script>
		</c:when>
		<c:when test="${param.id == mem.id && param.pwd != mem.pwd }">
			<script type="text/javascript">
				alert('비밀번호가 일치하지 않습니다')
				location.href="login.jsp";
			</script>
		</c:when>
		<c:otherwise>
			<c:set var='loginUser' value='${param.id }' scope="session"/>
			<script type="text/javascript">
				alert('${mem.id}님 환영합니다')
				location.href="login_success.jsp";
			</script>
		</c:otherwise>
	</c:choose>
</body>
</html>