<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>ex01_1.jsp<br>
	forEach<br>
	<c:forEach var="var" items="${paramValues.check }">
		${var }
	</c:forEach>
<hr>
	<%
		String checkbox = request.getParameter("check");
		//이렇게 하면 체크박스의 경우 선택한 값중에 하나만 넘어오게되는 문제가있다
		//values = {"사과", "배", "키위"}
		String[] values = request.getParameterValues("check");
		//아래와 같이 꺽쇠안에 연산은 앞으로는 잘 사용하지 않는다. 위에 c:(el문법)이나 jstl을 사용. 
		//이 배열방법은 if문이 필요하지만 위의 forEach로 값 여러개를 받아오는것은 if문이 없어도 오류가 발생하지 않음
		if(values != null){
			for(int i = 0; i<values.length; i++){
				out.print(values[i]);
			}
			out.print("<hr>");
			for(String n : values){
				out.print(n);
			}
		}
		out.print("<hr>");
		String[] test = {"안녕","하세","요"};
		for(String s : test){
			out.print(s);
		}
		int[] arr = {111,222,333,444};
		for(int i : arr){
			out.print(i);
		}
	%>
	<hr>
	<%= checkbox %><hr>
	<%-- 
	<%= values[0] %> <%= values[1] %> <%= values[2] %>
	//체크박스를 전부 선택하지 않으면 오류발생
	--%>
</body>
</html>