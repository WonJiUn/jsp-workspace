<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>MakeCookie<hr>
	<% 
	Cookie cookie = new Cookie("quizCookie","myCookie");
	cookie.setMaxAge(10);
	response.addCookie(cookie);
	%>
	쿠키가 생성되었습니다
	<script type="text/javascript">
		window.close();
		//location.href='pop_close.jsp' 
		//페이지가 안 닫히는 경우가 생길 수 있음. 그럴때는 페이지를 하나 더 만들어서 window.close() 코드를 넣어주면 됨
	</script>
</body>
</html>