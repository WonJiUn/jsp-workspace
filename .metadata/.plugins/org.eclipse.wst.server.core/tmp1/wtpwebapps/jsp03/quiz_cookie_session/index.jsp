<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>Quiz_index<hr>
	<h1>Home | CARE_LAB</h1>
	<h3>어서오세요</h3>
	<h3>반갑습니다</h3>
	<%
		boolean chk = true;
		Cookie[] cookieArr = request.getCookies();
		
		if(cookieArr != null){
			for(Cookie c : cookieArr){
				out.print("name : " + c.getName() + " , ");
				out.print("value : " + c.getValue() + "<br>");
				if(c.getName().equals("quizCookie")){
					chk = false;
				}
			}
		}%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="<%=chk %>">
	<script>
	window.open("popup.jsp","","width=300,height=200,top=500,left=500")
	</script>
</c:if>	

</body>
</html>