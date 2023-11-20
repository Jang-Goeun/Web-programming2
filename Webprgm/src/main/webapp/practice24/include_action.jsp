<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 24</title>
<style>
	td.includeTd{padding: 20px}
</style>
</head>
<body>
	<div align="center">
	<%
		String YEAR = "2017";
		String MONTH = "10";
		String TASK1 = "";
		String TASK2 = "Homework";
	%>
		<h1>Include Action Practice</h1>
		<hr>
		<table>
			<tr>
				<td class="includeTd">
					<jsp:include page="calendar.jsp">
							<jsp:param name="YEAR" value=""/>
							<jsp:param name="MONTH" value="9"/>
					</jsp:include>
				</td>
				<td class="includeTd">
					<jsp:include page="news.jsp">
							<jsp:param name="TASK1" value=""/>
							<jsp:param name="TASK2" value="Homework"/>
					</jsp:include>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>