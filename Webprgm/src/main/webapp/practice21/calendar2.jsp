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
	h3 {display:inline-block; }
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
	int presentMonth = today.get(Calendar.MONTH) + 1;
	int presentDay = today.get(Calendar.DATE);
	
	Calendar cal = Calendar.getInstance();
	int year = presentYear;
	int month = presentMonth;	
	
	String sYear = request.getParameter("YEAR");
	if(sYear != null){
		year = Integer.parseInt(sYear);
		String sMonth = request.getParameter("MONTH");
		month = Integer.parseInt(sMonth);
		
		if(month == -1){
			month = 0;
		}else if(month == 12){
			month = 11;
		}
	}
	cal.set(year, month - 1, 1);
		
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	int startDay = cal.get(Calendar.DAY_OF_WEEK);
	int cnt = 0;
%>
	<div align="center">
	<form method="get" action="calendar.jsp">
		<h3 style="float:left;">
			<a href="calendar.jsp?YEAR=<%=year - 1%>&MONTH=<%=month%>"><input type="image" src="./images/left.png" name="YEAR" value="<%=year-1%>"></a>
			 <%=year%>년 
			<a href="calendar.jsp?YEAR=<%=year + 1%>&MONTH=<%=month%>"><input type="image" src="./images/right.png" name="YEAR" value="<%=year+1%>"></a>
		</h3>
		<h3 style="text-align: center;">
			<a href="calendar.jsp?YEAR=<%=year%>&MONTH=<%=month - 1%>">
			<input type="image" src="./images/left.png" name="MONTH" value="<%=month-1%>">
			</a> <%=month%>월 <a href="calendar.jsp?YEAR=<%=year%>&MONTH=<%=month + 1%>">
			<input type="image" src="./images/right.png" name="MONTH" value="<%=month-1%>">
			</a>
		</h3>
		<h3 style="float:right;"><%=presentYear%>-<%=presentMonth%>-<%=presentDay%></h3>
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
	</form>
	</div>
</body>
</html>