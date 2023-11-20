<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Object 02</title>
</head>
<body>
<%! int count = 0; %>
<%	
	out.println(request.getParameter("id") + "님 환영합니다." + "<br><br>");
	out.println("현재 시간 : " + new Date() + "<br><br>");
	
	Integer count = (Integer) application.getAttribute("count");

	if (count != null){
		count = count + 1;
	} else {
		count = Integer.valueOf(0);
	}
	
	application.setAttribute("count", count);
	application.log("오늘의 접속자수 : " + count);
%>
	오늘의 접속자수 : <%=count %>
</body>
</html>