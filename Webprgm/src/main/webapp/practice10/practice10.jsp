<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 10</title>
<%
	out.println("<style>");
	out.println("table, td{ border: 1px solid black;}");
	out.println("td{ width:100px; height:30px; text-align:center; }");
	out.println("</style>");
%>
</head>
<body>
	<%
		String []s = {"월", "화", "수", "목", "금"}; 
	 
		out.println("<div align=\"center\">");
		out.println("<table>");
		out.println("<tr>");
		out.println("<td><font color=\"red\">일</font></td>");
		
		for (int i = 0; i < 5; i++)  // 요일 작성 for문
			out.println("<td>" + s[i] + "</td>");

		out.println("<td><font color=\"blue\">토</font></td>");
		out.println("</tr>");
		
		for (int i = 0; i < 4; i++)  {
			out.println("<tr>");
			for(int j = 0; j < 7; j++)
				out.println("<td> &nbsp; </td>");
			out.println("</tr>");
		}
		
		out.println("</table>");
		out.println("</div>");
	%>
</body>
</html>