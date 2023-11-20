<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
<%
	String []week = {" ", "일", "월", "화", "수", "목", "금", "토"};
	int year = 2016;
	int month = 11;
	
	Calendar cal = Calendar.getInstance();
	cal.set(year, (month - 1), 1); 
	
	out.println("<h1>" + year + "년 " + month + "월</h1>");
	out.println("<hr>");
	
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	int startDay = cal.get(Calendar.DAY_OF_WEEK);
	
	for(int i = 1; i <= end; i++){			
		if( i == 1)
			for(int j = 1; j <= startDay * 2; j++)
				out.println("&nbsp");
		out.println(i + "&nbsp" + "&nbsp");
		
		if ( (i + startDay) % 7  ==  1)
			out.println("<br>");
	}
%>
	
	
</body>
</html>