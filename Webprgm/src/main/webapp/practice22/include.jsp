<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include action</title>
<style>
	body{text-align:center;}
</style>
</head>
<body>
<%
    String name = "Dongduk University";
    String date = "2011/04/05";
%>

	<h2>include 액션 연습</h2>
	<hr>
	<jsp:include page="greeting.jsp">
			<jsp:param name="name" value="Dongduk University"/>
			<jsp:param name="date" value="2011/04/05"/>
	</jsp:include>
</html>