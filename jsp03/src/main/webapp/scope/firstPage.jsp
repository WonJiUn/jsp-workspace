<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>firstPage.jsp<br>
<!-- 
	page : 현재 페이지에서만 유지되는 값
	request : 현재 페이지 또는 다음 페이지까지 유지되는 값
		단, request는 다음 페이지까지 전달하고자 하면 forword사용해야 한다.
	session : 웹 브라우저가 살아있는 동안 유지된다.
	application : 서버가 살아있는 동안 유지된다.
	
	설정할 종류.setAttribute("설정할이름", "값")
	
	name은 첫번째페이지에서는 page value, 두번째페이지는 session value가 나온다.(작은범위가 우선시됨을 알수있음)
	
	세션설정값에서 scope를 안주면 현재페이지에서만 사용하는 변수가 됨
 -->
	<%
		pageContext.setAttribute("name", "page value");
		request.setAttribute("name", "request value");
		session.setAttribute("name", "session value");
		application.setAttribute("name", "application value");
		
		//request.getRequestDispatcher("secondPage.jsp").forward(request,response);
	%>
	name : ${name }<br>
	page : <%= pageContext.getAttribute("name") %> , el문법 : ${pageScope.name }<br>
	request : <%= request.getAttribute("name") %> , ${requestScope.name }<br>
	session : <%= session.getAttribute("name") %> , ${sessionScope.name }<br>
	application : <%= application.getAttribute("name") %> , ${applicationScope.name }<br>
	<a href="secondPage.jsp">secondPage.jsp</a>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="se" value="세션설정값입니다" scope="session"/>
session: ${se }<br>
</body>
</html>