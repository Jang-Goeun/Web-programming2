<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 14</title>
</head>
<body>
<%
	String []week = {" ", "일", "월", "화", "수", "목", "금", "토"};
	Calendar cal = Calendar.getInstance(); 
	Calendar birth = Calendar.getInstance();
 	cal.set(2008, Calendar.FEBRUARY, 1);
 	birth.set(2001, Calendar.APRIL, 2);
	
	out.println("오늘은 " + cal.get(Calendar.YEAR) + "년 " + (cal.get(Calendar.MONTH) +  1) + "월" + cal.get(Calendar.DATE) + "일 " + week[cal.get(Calendar.DAY_OF_WEEK)] + "요일입니다.");
	out.println("<br><br>");
	out.println("이번 달은 " + cal.getMinimum(Calendar.DATE) + "일부터 시작하여 " + cal.getMaximum(Calendar.DATE) + "일에 끝납니다.");
	out.println("<br><br>");
	out.println("내 생일 " + birth.get(Calendar.YEAR) + "년 " + (birth.get(Calendar.MONTH) + 1) + "월 " + birth.get(Calendar.DATE) + "일은 " + week[birth.get(Calendar.DAY_OF_WEEK)] + "요일입니다.");
%>
</body>
</html>