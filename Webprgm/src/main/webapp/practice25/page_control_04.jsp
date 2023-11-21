<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 04</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String src = request.getParameter("src");
		String name = request.getParameter("username");
	%>
		<%=src %> 에서 전달된 내용입니다.
		<br>
		page_control_04.jsp에서 출력합니다.
		<hr>
		념겨받은 파라미터들
		<br>
	<%	
		Enumeration<String> e = request.getParameterNames();
		while(e.hasMoreElements()) {
			String s = e.nextElement();
			out.println(s + " : " + request.getParameter(s) + "<br>");	
		}
	%>
		<hr>
		안녕하세요, <%=name %>님, 반갑습니다.
</body>
</html>