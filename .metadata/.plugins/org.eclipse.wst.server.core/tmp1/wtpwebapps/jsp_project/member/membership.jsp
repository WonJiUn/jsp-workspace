<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>MEMBERSHIP</title>
<style type="text/css">
	a {text-decoration: none; color: black;}
	.memberlink:hover{text-decoration: underline;}
</style>
</head>
<body>
	<c:import url="../default/header.jsp"/>
	<div class="wrap">
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
		<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
		<!-- ArrayList<MemberDTO> list = dao.getMemberList();
		dao라는 이름으로 객체생성 -> 거기에 있는 getMemberList()라는 함수 호출 -->
		<c:set var="list" value="${dao.getMemberList() }"/>
		리턴 값 : ${list }
		<table border="1">
			<tr>
				<th>아이디</th> <th>비밀번호</th> <th>이름</th> <th>주소</th>
			</tr>
			<c:forEach var = "member" items="${list }">
			<!-- forEach : 반복문으로 list의 0번째, 1번째, 2번째값...을 차례대로 가져와서 테이블로 만들어줌 -->
			<tr>
				<td>${member.id }</td>
				<td>${member.pwd }</td>
				<td class="memberlink"><a href="${contextPath}/member/member_info.jsp?id=${member.id}">${member.name }</a></td>
				<td>${member.addr }</td>
			</tr>
			</c:forEach>
			<tr>
				<td colspan="4"><button type="button" onclick="location.href='${contextPath}/member/member_register.jsp'">등록</button>
			</tr>
		</table>
	</div>	
	<c:import url="../default/footer.jsp"/>
	<!-- 지금은 개인정보가 4개뿐이기 때문에 ?id=${member.id}&pwd=${member.pwd} 
	이런식으로 앤드를 사용하여 여러개를 넘길수 있지만, 정보가 많아질수록 이런 방식은 힘들기 때문에 
	primary key값 하나만 넘겨서 데이터베이스에서 다시 가져오는 방식으로 사용하는게 좋다. -->
</body>
</html>