<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>addr_list.jsp</title>
	<style>
		body {text-align:center;}
		ol {   
			text-align:left;
			display: table;
		  	margin-left: auto;
		  	margin-right: auto; 
		  } 
	</style>
</head>
<body>
	<h2>주소록</h2>
	<hr>
		<%
			@SuppressWarnings("unchecked") // 자바의 어노테이션 중 하나로, 경고를 무시도록 지시함
			ArrayList<String> addrbook = (ArrayList<String>) application.getAttribute("addrbook"); //실행 시에 해당 객체가 실제로 ArrayList<String>인지 확인할 수 없어서 이러한 경고가 발생
			
			out.println("<ol>");
			for(int i = 1; i < addrbook.size(); i++){
				out.println("<li>" + addrbook.get(i) + "</li>");
			}
			out.println("</ol>");
		%>
	<hr>
	<a href="addr_form.jsp">주소추가</a>
</body>
</html>