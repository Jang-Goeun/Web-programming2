<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Object: 02</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("username");
	%>
	<%=name %>님 환영합니다.
	<br><br>
	세션 ID : <%=session.getId() %>
	<br>
	세션 지속시간(default) : <%=session.getMaxInactiveInterval() %>초
	<br><br>
	<a href="session_03.jsp" target='_blank'>session_03.jsp로 가기</a>
</body>
</html>