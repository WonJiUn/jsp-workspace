<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>postMethod.jsp<br>
<fmt:requestEncoding value="utf-8"/>
<% request.setCharacterEncoding("utf-8"); %>
<!-- 위의 코드를 넣지않으면 한글을 요청할시 글자가 깨짐. 
fmt방식으로(jstl방식) 처리해도 되고, setCharacter방식으로(jsp방식) 처리해도 됨. 
prefix : 별칭-->
	<h1>postMethod 입니다</h1>
	아이디 : <%= request.getParameter("id") %><br>
	비밀번호 : <%= request.getParameter("pwd") %><br>
	<hr>
	${param.id }<br>
	${param.pwd }<br>
	<hr>
	<a href='/jsp01/webContent.jsp'>webContent이동</a>
	<p><a href='/jsp01/test1/test1.jsp'>test1이동</a></p>
	<p><a href='/jsp01/test1/test2/test2.jsp'>test2이동</a></p>
	<hr>
</body>
</html>