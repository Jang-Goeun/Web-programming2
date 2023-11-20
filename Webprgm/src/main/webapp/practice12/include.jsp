<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 12</title>
<% 
	out.println("<style>");
	out.println("td.includeTd{padding: 20px}");
	out.println("</style>");
%>
</head>
<body>
<%
	out.println("<div align=\"center\">");
	out.println("<h2>include 지시어 연습</h2>");
	out.println("<hr>");
	out.println("<table>");
	out.println("<tr>");
	out.println("<td class=\"includeTd\">");
%>
<%@ include file="calendar.jsp" %>
<%
	out.println("</td>");
	out.println("<td class=\"includeTd\">");
%>
<%@ include file="news.jsp" %>
<%
	out.println("</td>");
	out.println("</tr>");
	out.println("</table>");
	out.println("</div>");
%>
</body>
</html>