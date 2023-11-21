<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 04</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("username");
		String pwd = request.getParameter("passwd");
	%>
	<%
		if(name == null && pwd == null){
	%>
		<jsp:forward page="page_control_04.jsp"/>
	<%
		} else {
	%>
		<jsp:forward page="page_control_04.jsp">
			<jsp:param name="username" value="<%=name %>"/>
			<jsp:param name="passwd" value="<%=pwd %>"/>
			<jsp:param name="src" value="page_control_02.jsp"/>
		</jsp:forward>
	<%
		}
	%>
</body>
</html>