<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 

	<script type="text/javascript">
		if(!confirm("정말 삭제하시겠습니다?")){
			location.href="membership.jsp";
		}else{
			location.href="delete.jsp";
		}
		
	</script>
	
</body>
</html>