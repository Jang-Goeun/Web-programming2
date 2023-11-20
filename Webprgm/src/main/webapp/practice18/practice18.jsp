<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar.jsp</title>
<%
	out.println("<style>");
	out.println("h3{float: right;}");
	out.println("table, td{border:1px solid black;}");
	out.println("table{border-collapse:collapse; text-align:center;}");
	out.println("td{width:70px; height:30px;");
	out.println("</style>");
%>
</head>
<body>
<%!
	public String parseDay(int cnt, String day) {
		String str = " ";
		
		if(cnt % 7 == 0){
			str = "<font color=\"red\">" + day + "</font>";
		} else if(cnt % 7 == 6){
			str = "<font color=\"blue\">" + day + "</font>";
		} else {
			str = "<font color=\"black\">" + day + "</font>";			
		}
		
		return str;
	}
%>

<%
	String []week = {"일", "월", "화", "수", "목", "금", "토"};
	Calendar today = Calendar.getInstance();
	int year = today.get(Calendar.YEAR);
	int month = today.get(Calendar.MONTH) + 1;
	int day = today.get(Calendar.DATE);
	
	Calendar cal = Calendar.getInstance();	
	cal.set(year, (month - 1), 1); 
	
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	int startDay = cal.get(Calendar.DAY_OF_WEEK);
	int cnt = 0;
	
	out.println("<div align=\"center\"><table><caption><h3>" + year + "-" + month + "-" + day + "</h3></caption><tr>");
	for(int i = 0; i < 7; i++){
		out.println("<td>" + parseDay(cnt, week[i]) + "</td>");
		cnt++;
	}
	out.println("</tr><tr>");
	
	for(int i = 0; i < startDay - 1; i++){
		out.println("<td></td>");
		cnt++;
	}
	
	for(int i = 1; i <= end; i++){	
		out.println("<td>" + parseDay(cnt, String.valueOf(i)) + "</td>");
		
		if ( (i + startDay) % 7  ==  1)
			out.println("</tr><tr>");

		cnt++;
	}
	
	while(cnt % 6 != 0){
		out.println("<td></td>");
		cnt++;
	}

	out.println("</tr></table></div>");	
%>
</body>
</html>