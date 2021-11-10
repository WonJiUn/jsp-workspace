<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>chkLogin.jsp<br>
<c:set var='dbId' value="1"/>
<c:set var='dbPwd' value="1"/>
<c:set var='inputId' value="${param.id }"/>
<c:set var='inputPwd' value="${param.pwd }"/>

<c:choose>
	<c:when test="${dbId eq inputId}">
		<c:choose>
			<c:when test="${dbPwd eq inputPwd }">
				로그인 성공
				<script type="text/javascript">
					alert('로그인 성공')
				</script>
			</c:when>
			<c:otherwise>
				비밀번호 틀림
			</c:otherwise>
		</c:choose>
	</c:when>
	<c:otherwise>
		<b style="color:red">존재하지 않는 아이디 입니다</b>
	</c:otherwise>
</c:choose>
<%--
<c:choose>
	<c:when test="${dbId == inputId && dbPwd eq inputPwd }">
		if문의 조건처럼 여러개 가능. 이 중에서 1개만 선택됨
		<c:redirect url="main.jsp"/>
	</c:when>
	<c:otherwise>
		else문 실행
		<c:redirect url="loginForm.jsp"/>
	</c:otherwise>
</c:choose>
--%>
<%--
<c:if test="${dbId == inputId && dbPwd eq inputPwd }">
	인증성공
	아래의 문법과 같은 동작을 함. 형식을 바꿔본것. 
	그러나 지금방식의 경우 로그인을 성공하든 실패하든 두 if문이 모두 실행되는 불필요함이 있다.
	<c:redirect url="main.jsp"/>
</c:if>
<c:if test="${dbId != inputId || dbPwd ne inputPwd }">
	인증실패
</c:if>
--%>
	<%--
		String dbId="1";
		String dbPwd="1";
		String inputId = request.getParameter("id");
		String inputPwd = request.getParameter("pwd");
		if(dbId.equals(inputId) && dbPwd.equals(inputPwd)){
			out.print("인증통과");
			response.sendRedirect("main.jsp?id=" + inputId);
			//다음페이지에 아이디를 넘겨주는방법1
			//RequestDispatcher dispatcher = request.getRequestDispatcher("main.jsp");
			//dispatcher.forward(request,response);
			//다음페이지에 아이디를 넘겨주는방법2
		}else{
			out.print("인증실패!!!");
			response.sendRedirect("loginForm.jsp");
			//인증실패시 다시 로그인페이지로 보냄(다른페이지를 보내줌)
		}
	--%>
</body>
</html>