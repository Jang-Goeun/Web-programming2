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
			<c:choose>
			    <c:when test="${addrmanager.getAddrcount() > 0}">
			        <c:forEach var="i" begin="${addrmanager.getStartIndex()}" end="${addrmanager.getLastIndex()}">
			            <jsp:setProperty name="addrmanager" property="list" value="${addrmanager.getList(i)}" />
			            <tr>
			                <td>${addrmanager.getList().getUsername()}</td>
			                <td>${addrmanager.getList().getTel()}</td>
			                <td>${addrmanager.getList().getEmail()}</td>
			                <td>${addrmanager.getList().getGender()}</td>
			                <td>${addrmanager.getList().getGroup()}</td>
			            </tr>
			        </c:forEach>
			   	</c:when>
			</c:choose>
		</table>
		<c:forEach var="i" begin="1" end="${addrmanager.getAllpage()}">
			<c:choose>
				<c:when test="${addrmanager.getCurrentPage() == i}">
					${i}
				</c:when>
				<c:otherwise>
					<a href="addr_list.jsp?sindex=${i}">${i}</a>
				</c:otherwise>
			</c:choose>
			<c:if test="${i != addrmanager.getAllpage()}">|</c:if>
		</c:forEach>
		
	</div>
</body>
</html>