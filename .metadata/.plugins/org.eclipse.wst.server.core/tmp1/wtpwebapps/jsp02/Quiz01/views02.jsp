<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="q2" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>views02.jsp<br>
<% String name = request.getParameter("name"); %>
<% out.print("name : " + name); %><br>
이름 : ${param.name }<br>
<% String gender = request.getParameter("gender"); %>
<% out.print("gender : " + gender); %><br>
성별 : ${param.gender }<br>
<q2:forEach var="var" items="${paramValues.season }">
		season : ${var }<br>
</q2:forEach>
</body>
</html>