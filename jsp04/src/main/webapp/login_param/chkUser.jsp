<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!-- 여기서 forward경로에 el태그를 사용하면 오류발생 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- 한글 깨지는것을 막기위한 코드 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>chkUser.jsp<br>
<fmt:requestEncoding value="utf-8"/>
<%-- redirect로 넘겨주면 아이디, 비밀번호값은 넘어가지 않고, 포워드만 넘겨줄 수 있다 --%>
<c:set var="user" value="${param.user }"/>
<c:choose>
	<c:when test="${user == 'user' }">
		<c:redirect url="userPage.jsp">
			<c:param name="n" value="jstl로 넘겨줌"/>
		</c:redirect>
	</c:when>
	<c:otherwise>
		<jsp:forward page="adminPage.jsp">
			<jsp:param value="추가로 넘어가는 값" name="n"/>
		</jsp:forward>
	</c:otherwise>
</c:choose>
<%-- 
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String user = request.getParameter("user");
		if(user.equals("user")){%>
			<jsp:forward page="userPage.jsp">
				<jsp:param value="추가로 넘어가는 값" name="n"/>
			</jsp:forward>
		<%}else{%>
			<jsp:forward page="adminPage.jsp">
				<jsp:param value="추가로 넘어가는 값" name="n"/>
			</jsp:forward>
		<%}
	%>
--%>
</body>
</html>