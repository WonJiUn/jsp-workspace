<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>index.jsp<hr>
<!-- 
	session : 서버에서 관리하는 값
	cookie : 클라이언트가 관리하는 값
 -->
	<h1>CARE_LAB</h1>
	<h3>어서오세요~!</h3>
	<%
		boolean bool = false;
		Cookie[] cookieArr = request.getCookies(); //사용자가 접속하면 모든 쿠키값을 얻어온다.
		//우리가 보낸 쿠키는 새로고침을 2번 더 하면 나온다(최초로 쿠키값을 보내기 전이므로)
		//c의 자료형이 쿠키
		if(cookieArr != null){
			for(Cookie c : cookieArr){
				out.print("name : " + c.getName() + " : ");
				out.print("value : " + c.getValue() + "<br>");
				if(c.getName().equals("testCookie")){
					bool = true;
				}
			}
		}
		/*
		for(int i= 0; i<cookieArr.length; i++){
			out.print("name : " + cookieArr[i].getName() + " : ");
			out.print("value : " + cookieArr[i].getValue() + "<br>");
		}
		*/
		Cookie cookie = new Cookie("testCookie","myCookie");
		cookie.setMaxAge(5); //쿠키 (5)초간 유지(여기까지는 사용자에게 쿠키가 날아가지않음)
		
		response.addCookie(cookie); //사용자에게 쿠키전달. 
		//페이지 새로고침하면 다시 요청하기 때문에 유지되는것처럼 보이지만 F12 어플리케이션에서 새로고침하면 5초후 사라지는것을 확인할수있다.
	%>
	<% if(bool == false){ %>
	<script type="text/javascript">
		window.open("popup.jsp","","width=300, height=200, top=500, left=500")
	</script>
	<%} %>
</body>
</html>