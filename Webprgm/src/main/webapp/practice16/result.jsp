<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 20</title>
</head>
<body>
	<h2>전달된 파라미터 이름들</h2><p>
<%
	Enumeration<String> e = request.getParameterNames();
	
	while(e.hasMoreElements()){
		String name = (String)e.nextElement();
		out.println(name);
		out.println("<br>");
	}
%>

	<hr>
<%
	String type = request.getParameter("type");
	String strId = request.getParameter("strId");
	String strPwd = request.getParameter("strPwd");
%>
	타입 : <%= type %><br>
	아이디 : <%= strId %><br>
	비밀번호 : <%= strPwd %>
</body>
</html>