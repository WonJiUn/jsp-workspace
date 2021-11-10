<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 포워드로 값을 넘겨줬기 때문에 여기는 taglib 없이 바로 쓸 수 있다! -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>adminPage.jsp<hr>
	아이디 : <%=request.getParameter("id") %><br>
	비밀번호 : ${param.pwd }<br>
	사용자 : ${param.user }<br>
	추가 값 : <%=request.getParameter("n") %>
	<hr>
	<a href="javascript:history.back()">이전</a>

</body>
</html>