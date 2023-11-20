<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
<%
	out.println("<style>");
	out.println("table.calendarTable{ border-collapse: collapse;}");
	out.println("table.calendarTable, td.calendarTd{ border: 1px solid black;}");
	out.println("td.calendarTd{ width:50px; height:50px; text-align:center; }");
	out.println("</style>");
%>
</head>
<body>
	<%
		String []s = {"월", "화", "수", "목", "금"}; 
	 
		out.println("<div align=\"center\">");
		out.println("<table class=\"calendarTable\">");
		out.println("<tr>");
		out.println("<td class=\"calendarTd\"><font color=\"red\">일</font></td>");
		
		for (int i = 0; i < 5; i++)  // 요일 작성 for문
			out.println("<td class=\"calendarTd\">" + s[i] + "</td>");

		out.println("<td class=\"calendarTd\"><font color=\"blue\">토</font></td>");
		out.println("</tr>");
		
		for (int i = 0; i < 4; i++)  {
			out.println("<tr>");
			for(int j = 0; j < 7; j++)
				out.println("<td class=\"calendarTd\"> &nbsp; </td>");
			out.println("</tr>");
		}
		
		out.println("</table>");
		out.println("</div>");
	%>
	
</body>
</html>