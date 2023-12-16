<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr32.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addrmanager" class="jspbook.pr32.AddrManager" scope="application" />
		
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ch07 : 주소록 목록</title>
	<style>
		table, td {margin:auto; border:1px solid black; text-align:center;}
		table {width:500px;}
	</style>
</head>
<body>
	<div align="center">
		<h2>주소록(그룹별 보기)</h2>
		<hr>
		<a href="addr_form.jsp">주소추가</a>
		&nbsp;&nbsp;&nbsp;
		<a href="addr_list.jsp">전체 목록 보기</a>
		<br>
		<h2>그룹 : 가족</h2>
		<table>
			<tr>
				<td>이름</td>
				<td>전화번호</td>
				<td>이메일</td>
				<td>성별</td>
				<td>그룹</td>
			</tr>
			<%
				for(AddrBean ab : addrmanager.getAddrList()) {
					if(ab.getGroup().equals("가족")) {
						out.println("<tr>");
						out.println("<td>" + ab.getUsername() + "</td>");
						out.println("<td>" + ab.getTel() + "</td>");
						out.println("<td>" + ab.getEmail() + "</td>");
						out.println("<td>" + ab.getGender() + "</td>");
						out.println("<td>" + ab.getGroup() + "</td>");
						out.println("</tr>");
					}	
				}
			%>
		</table>
			
			
		<h2>그룹 : 친구</h2>
		<table>
			<tr>
				<td>이름</td>
				<td>전화번호</td>
				<td>이메일</td>
				<td>성별</td>
				<td>그룹</td>
			</tr>
			<%
			
				for(AddrBean ab : addrmanager.getAddrList()) {
					if(ab.getGroup().equals("친구")) {
						out.println("<tr>");
						out.println("<td>" + ab.getUsername() + "</td>");
						out.println("<td>" + ab.getTel() + "</td>");
						out.println("<td>" + ab.getEmail() + "</td>");
						out.println("<td>" + ab.getGender() + "</td>");
						out.println("<td>" + ab.getGroup() + "</td>");
						out.println("</tr>");
					}
				}
				
			%>
			</table>
			
			<h2>그룹 : 직장</h2>
			<table>
				<tr>
					<td>이름</td>
					<td>전화번호</td>
					<td>이메일</td>
					<td>성별</td>
					<td>그룹</td>
				</tr>
			<%
				for(AddrBean ab : addrmanager.getAddrList()) {
					if(ab.getGroup().equals("직장")) {
						out.println("<tr>");
						out.println("<td>" + ab.getUsername() + "</td>");
						out.println("<td>" + ab.getTel() + "</td>");
						out.println("<td>" + ab.getEmail() + "</td>");
						out.println("<td>" + ab.getGender() + "</td>");
						out.println("<td>" + ab.getGroup() + "</td>");
						out.println("</tr>");
					}	
				}
			
			%>
		</table>
	</div>
</body>
</html>