<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Object: 03</title>
</head>
<body>
	<%
		long nowTime = new Date().getTime();
		long sessiontime = nowTime - session.getCreationTime();
	%>
	세션이 생성된 후 <%=sessiontime / 1000 %>초가 지났습니다.
</body>
</html>