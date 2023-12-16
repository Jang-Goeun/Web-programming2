<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr32.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addrmanager" class="jspbook.pr32.AddrManager" scope="application" />
<jsp:setProperty name="addrmanager" property="*" />

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ch07 : 주소록 목록</title>
	<style>
		table, td {margin:auto;  border:1px solid black; text-align:center;}
		table {width:500px;}
	</style>
</head>
<body>
	<div align="center">
		<h2>주소록(전체보기)</h2>
		<hr>
		<a href="addr_form.jsp">주소추가</a>
		&nbsp;&nbsp;&nbsp;
		<a href="addr_list_group.jsp">그룹별 목록 보기</a>
		<br><br>
		<table>
			<tr>
				<td>이름</td>
				<td>전화번호</td>
				<td>이메일</td>
				<td>성별</td>
				<td>그룹</td>
			</tr>
		<%
			int i, j;
			//rpp!! 
			int rpp = 3;
			int allpage;
			int size = addrmanager.getAddrcount();
			
			if(size <= rpp)
				allpage = 1;
			else if(size % rpp != 0)
				allpage = size / rpp + 1;
			else
				allpage = size / rpp;
			
			int currentPage;
			String sindex = request.getParameter("sindex");
			if(sindex == null)
				currentPage = 1;
			else
				currentPage = Integer.parseInt(sindex);
		
			AddrBean ab = null;
			int startIndex = rpp * (currentPage - 1);
			int lastIndex = startIndex + rpp;
			
		%>
		<%
			for(j = startIndex; j < lastIndex; j++) {
				if(j >= size)
					break;
				else if(j >= 0) {
					ab = addrmanager.getAddrList().get(j);
				}
		%>
		<tr>
			<td><%=ab.getUsername() %></td>
			<td><%=ab.getTel() %></td>
			<td><%=ab.getEmail() %></td>
			<td><%=ab.getGender() %></td>
			<td><%=ab.getGroup() %></td>
		</tr>
		<%
			}
		%>
		</table>
		<%	
			for(i = 1; i <= allpage; i++) {
				if(i == currentPage) {
					out.print(i);
				}
				else { 
					out.print("<a href=\"addr_list.jsp?sindex=" + i + "\">" + i + "</a>");
				}
				
				if(i != allpage) {
					out.print(" | ");
				}
			}
		%>
	</div>
</body>
</html>