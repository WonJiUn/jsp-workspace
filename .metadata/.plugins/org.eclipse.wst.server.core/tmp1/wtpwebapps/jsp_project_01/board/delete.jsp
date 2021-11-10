<%@page import="com.care.root.board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:requestEncoding value="utf-8"/>
	<%
		BoardDAO dao = new BoardDAO();
		int result = dao.delete(request.getParameter("id"));
		//response.sendRedirect("list.jsp");
		if(result == 1){
			out.print("<script>alert('성공적으로 삭제되었습니다');" + "location.href='list.jsp'</script>");
		}else{
			out.print("<script>alert('문제발생 삭제실패');" + "location.href='list.jsp'</script>");
		}
	%>	
		<%-- 
		if(result == 1){%>
			<script type="text/javascript">
				alert('삭제성공');
				location.href="list.jsp"
			</script>
		<%}else{%>
		
		<%}%>
		
	--%>
	
	
	
	<%--
	<jsp:useBean id="dao" class="com.care.root.board.dao.BoardDAO"/>
	${dao.delete(param.id) }
	<c:redirect url="list.jsp"/>
	--%>

</body>
</html>