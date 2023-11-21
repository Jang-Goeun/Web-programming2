<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 04</title>
</head>
<body>
	<%
	String URL = "http://localhost:5665/Webprgm/practice25/page_control_04.jsp?";
	String src = "page_control_03.jsp";
	URL += "src=" + src;
	response.sendRedirect(URL);
	%>
</body>
</html>