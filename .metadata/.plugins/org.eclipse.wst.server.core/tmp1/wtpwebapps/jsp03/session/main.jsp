<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>main.jsp<hr color="red">
<!-- c:redirect url="login.jsp" 를 사용하면 알림창이 뜨지 않는 이유 : 
	서버에서 먼저 번역 후 사용자가 HTML, 스크립트, css을 처리하는 순서이기 때문. 
	redirect가 서버단계에서 먼저 처리되기 때문에 alert는 실행되지 못함.
 -->
	로그인 성공한 사용자만 입장 가능합니다<hr color="red">
	<a href="login.jsp">로그인_페이지이동</a>
	<a href="logout.jsp">로그아웃_페이지이동</a>
	<c:choose>
		<c:when test="${loginUser == null }">
			<script type="text/javascript">
				alert('메인페이지에 접근하시려면 우선 로그인해주세요')
				location.href="login.jsp";
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert('${loginUser} 님 환영합니다')
			</script>
			<p><b>${loginUser}</b> 님 환영합니다</p>
		</c:otherwise>
	</c:choose>
</body>
</html>