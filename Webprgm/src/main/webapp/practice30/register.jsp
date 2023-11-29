<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register.jsp</title>
<style>
	body{text-align:center;}
</style>
</head>
<body>
	<h2>등록내용</h2>
	<% request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="login" class="jspbook.pr30.LoginBean" scope="page" />
	<jsp:setProperty name="login" property="*" />
	
	이름 : <jsp:getProperty name="login" property="id" /><br><br>
	패스워드 : <jsp:getProperty name="login" property="pw" /><br><br>
	이메일 : <jsp:getProperty name="login" property="email" /><br><br>
	성별 : <jsp:getProperty name="login" property="gender" /><br><br>
	생일 : <jsp:getProperty name="login" property="birth" /><br><br>
	
	<hr>
	<jsp:getProperty name="login" property="str" />
</body>
</html>