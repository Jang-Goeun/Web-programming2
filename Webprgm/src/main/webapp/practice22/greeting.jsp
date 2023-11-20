<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>greeting message</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String date = request.getParameter("date");
%>
	<h3>greeting.jsp에서 출력한 메시지입니다.</h3>
	<%=name %>님 환영합니다.<br>오늘은 <%=date %>입니다.
</body>
</html>