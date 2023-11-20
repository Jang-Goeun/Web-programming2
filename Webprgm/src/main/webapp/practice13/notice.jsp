<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage = "true" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 13</title>
<%
	out.println("<style>");
	out.println("img.imageLogo{display: inline-block; margin-left: 70px;}");
	out.println("table {text-align: center; font-weight: bold; height: 350px; width: 600px;}");
	out.println("</style>");
%>
</head>
<body>
<%
	out.println("<div align=\"center\">");
	out.println("<img src=\"./image/eclass_title.jpg\">");
	out.println("<table>");
	out.println("<tr style=\"background-color: #ffdab9;\">");
	out.println("<td>오류가 발생했습니다.</td>");
	out.println("</tr>");
	out.println("<tr style=\"background-color: #ffefd5;\">");
	out.println("<td>");
	out.println("<input type=\"image\" src=\"./image/flower.gif\">");
	out.println("<br><br>오류발생시간:");
%>
<%=new java.util.Date() %>
<%
	out.println("<br><br>최대한 빨리 조치하겠습니다.");
	out.println("</td>");
	out.println("</tr>");
	out.println("</table>");
	out.println("</form>");
	out.println("</div>");
%>
</body>
</html>