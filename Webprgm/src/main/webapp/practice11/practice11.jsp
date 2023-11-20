<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 11</title>
<%
	out.println("<style>");
	out.println("table, td{border: 1px solid black}");
	out.println("td{width: 95px; height: 200px; padding-left:10px}");
	out.println("</style>");
%>
</head>
<body>
<%
	out.println("<div align=\"center\">");
	out.println("<h1>구구단 출력</h1>");
	out.println("<hr>");
	out.println("<table>");
	out.println("<tr>");
	
	for(int i = 2; i < 6; i++){
		out.println("<td>");
		for(int j = 1; j < 10; j++){
			out.println(i + " * " + j + " = " + (i * j) + "<br>");
		}
		out.println("</td>");
	}
	
	out.println("</tr>");
	out.println("<tr>");
	
	for(int i = 6; i < 10; i++){
		out.println("<td>");
		for(int j = 1; j < 10; j++){
			out.println(i + " * " + j + " = " + (i * j) + "<br>");
		}
		out.println("</td>");
	}
	
	out.println("</tr>");
	out.println("</table>");
	out.println("</div>");
%>
</body>
</html>