<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>calendar.jsp</title>
		<style>
			form{width:1300px;}
			table, td {border:1px solid black;}
			p {display:inline-block; }
			p.hrf1 {text-align:left;}
			p.hrf2 {text-align:center;}
			p.hrf3 {text-align:right;}
			table {border-collapse:collapse; text-align:center;}
			td {width:250px; height:50px;}
			a {text-decoration: underline;}
			input {width: 20px;}
		</style>
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
			int presentYear = today.get(Calendar.YEAR);
			int presentMonth = today.get(Calendar.MONTH);
			int presentDay = today.get(Calendar.DATE);
			
			Calendar cal = Calendar.getInstance();
			int year = presentYear;
			int month = presentMonth;	
			
			cal.set(year, month, 1);
				
			int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
			int startDay = cal.get(Calendar.DAY_OF_WEEK);
			int cnt = 0;
		%>
		<%
			out.print("<p class=\"hrf1\"><a herf=\"calendar.jsp?YEAR=" + (year-1));
			out.println("&MONTH=" + month + "\">" + "◀ </a>");
			out.println(year + "년 ");
			out.print("<a herf=\"calendar.jsp?YEAR=" + (year+1));
			out.println("&MONTH=" + month + "\">" + "▶ </a></p>");

			out.print("<p class=\"hrf2\"><a herf=\"calendar.jsp?YEAR=" + year);
			out.println("&MONTH=" + (month-1) + "\">" + "◀ </a>");
			out.println((month+1) + "월 ");
			out.print("<a herf=\"calendar.jsp?YEAR=" + year);
			out.println("&MONTH=" + (month+1) + "\">" + "▶ </a></p>");
			
			out.println("<p class=\"hrf3\">" + presentYear + "-" + (presentMonth+1) + "-" + presentDay + "</p>");
			
		%>
		<table>
			<tr>
				<%	
					for(int i = 0; i < 7; i++){
						out.println("<td style=\"height:20px;\">" + parseDay(cnt, week[i]) + "</td>");
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
				%>
			</tr>
		</table>
	</body>
</html>