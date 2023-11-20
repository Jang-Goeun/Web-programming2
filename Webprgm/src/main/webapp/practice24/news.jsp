<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>news</title>
	<style>
		hr.news{width:130px; margin-left : 0;}
	</style>
</head>
<body>
	<div>
		<%
			request.setCharacterEncoding("UTF-8");
		
			String task1 = request.getParameter("TASK1");
			String task2 = request.getParameter("TASK2");
			
			if (task1 == "")
				task1 = "일정 없음";
			
			if (task2 == "")
				task2 = "일정 없음";
		%>
		<h2>오늘의 일정</h2>
		<hr class="news">
		<ol>
			<li><%=task1 %></li>
			<li><%=task2 %></li>
		</ol>
	</div>
</body>
</html>