<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- form action으로 정보를 넘겨주고 useBean을 이용해 name이 같은 dto에 세터를 이용하여 값을 세팅 -->
</head>
<body>
<fmt:requestEncoding value="utf-8"/>
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
	
	<jsp:useBean id="dto" class="com.care.root.member.dto.MemberDTO"/>
	<jsp:setProperty property="*" name="dto"/>
	
	<c:set var="result" value="${dao.modify_save(dto) }"/>
	
	<c:choose>
		<c:when test="${result == 1 }">
			<script type="text/javascript">
			alert('수정되었습니다')
			location.href="member_info.jsp?id=${dto.id}";
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
			alert('수정실패!')
			location.href="modify.jsp?id=${dto.id}";
			</script>
		</c:otherwise>
	</c:choose>
	
	
	
</body>
</html>