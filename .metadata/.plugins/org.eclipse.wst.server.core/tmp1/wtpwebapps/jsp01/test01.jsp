<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>연습입니다...</h1>
	<%
		//자바 + html + jsp 문법 혼용가능
		//아래의 언어는 웹브라우저에서 번역을 못하기때문에 서버에서 html로 번역해서 클라이언트에게 보내줌
		int num = 100;
		System.out.print("결과 : " + num);
		out.print("<i>결과</i> : " + num + "<b>입니다</b>");
		//out.print를 <%= 으로 줄여서 표현할 수 있다
	%>
	<%= "<i>결과1111</i> : " + num + "<b>입니다</b>" %>
	
	<% int num1 = 10, num2 = 20; %>
	<%= num1 %> + <%= num2 %> = <%= num1 + num2 %> 
	
	<hr>
	<h1>jstl 문법</h1>
	script 등을 제외하고 하나의 괄호 안에서 닫을 수 있다.
	<c:set var='n1' value="안녕하세요" />
	<c:out value="aaaaa"/>
	
	<h1>el 문법</h1>
	${n1 }
</body>
</html>