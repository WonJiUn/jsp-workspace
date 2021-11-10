<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>main.jsp<br>
	성공적으로 로그인 되었습니다.<br>
	request로 저장된 아이디/비밀번호 정보는 바로 다음페이지(chkLogin)까지만 전달이 되기 때문에 리다이렉트된 여기에서는 사용할 수 없다<br>
	넘어온 아이디 : ${param.id }
</body>
</html>