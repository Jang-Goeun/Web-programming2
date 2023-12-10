<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration" import="java.util.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 40</title>
</head>
<body>
<%
	String[] hobbyList = request.getParameterValues("hobby");
	session.setAttribute("hobbyList", hobbyList);
	
	String[] index = {"0", "1", "2", "3", "4"};
	session.setAttribute("index", index);
	
	int count = hobbyList.length;
	session.setAttribute("count", count);
%>
<h1>Processing Parameters</h1><br>
	id: ${param.id} <br>
	pw: ${param.pw} <br>
	gender: ${param.gender} <br>
	phone1: ${param.phone1}<br>
	phone2: ${param.phone2} <br>
	phone3: ${param.phone3} <br>
	email: ${param.email} <br>
	birth: ${param.birth} <br>
	hobby: 선택된 관심분야 ${sessionScope.count}개 <br>
	&nbsp;&nbsp; [${sessionScope.index[0]}]: ${sessionScope.hobbyList[0]}<br>
	&nbsp;&nbsp; [${sessionScope.index[1]}]: ${sessionScope.hobbyList[1]}<br>
	&nbsp;&nbsp; [${sessionScope.index[2]}]: ${sessionScope.hobbyList[2]}<br>
	&nbsp;&nbsp; [${sessionScope.index[3]}]: ${sessionScope.hobbyList[3]}<br>
	&nbsp;&nbsp; [${sessionScope.index[4]}]: ${sessionScope.hobbyList[4]}<br>

</body>
</html>