<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
<%
	Calendar cal = Calendar.getInstance();

	String []week = {" ", "일", "월", "화", "수", "목", "금", "토"};
	String YEAR = request.getParameter("YEAR");
	String MONTH = request.getParameter("MONTH");
	int year;
	int month;
	
	if (YEAR != "" && MONTH != ""){
		year = Integer.parseInt(YEAR);
		month = Integer.parseInt(MONTH);
		cal.set(year, (month - 1), 1); 
	}else{
		year = cal.get(Calendar.YEAR);
		month = cal.get(Calendar.MONTH);
		cal.set(year, month, 1); 
		month += 1;
	}
	
	
	out.println("<h2>" + year + "년 " + month + "월</h2>");
	out.println("<hr>");
	
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	int startDay = cal.get(Calendar.DAY_OF_WEEK);
	
	for(int i = 1; i <= end; i++){			
		if( i == 1)
			for(int j = 1; j < startDay; j++)
				out.println("&nbsp" + "&nbsp");
		out.println(i + "&nbsp" + "&nbsp");
		
		if ( (i + startDay) % 7  ==  1)
			out.println("<br>");
	}
%>
	
	
</body>
</html>