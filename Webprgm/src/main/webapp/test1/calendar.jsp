<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jspbook.t1.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>calendar.jsp</title>
		<style>
			form{width:1300px;}
			div {text-align:center;}
			#d1 {margin:20px;}
			#s1 {position: absolute; left:10px;}
			#s3{position: absolute; right:10px;}
			table, td {border:1px solid black;}
			table {border-collapse:collapse; text-align:center;}
			td {width:250px; height:50px;}
			a {text-decoration: underline;}
			input {width: 20px;}
		</style>
	</head>
	<body>
	<jsp:useBean id="calendar" class="jspbook.t1.CalendarBean" scope="session"/>
	<jsp:setProperty name="calendar" property="*" />
		<div>
			<div id="d1">
				<span id="s1">
					<a href="calendar.jsp?YEAR=${calendar.prevYear}&MONTH=${calendar.month1}">◀</a>
					${calendar.year}년 
					<a href="calendar.jsp?YEAR=${calendar.nextYear}&MONTH=${calendar.month1}">▶</a>
				 </span>
				<span id="s2">
					<a href="calendar.jsp?YEAR=${calendar.year}&MONTH=${calendar.prevMonth}">◀</a>
				 	 ${calendar.month}월 
				 	<a href="calendar.jsp?YEAR=${calendar.year}&MONTH=${calendar.nextMonth}">▶</a>
				</span>
				<span id="s3">
					${calendar.presentYear}-${calendar.presentMonth}-${calendar.presentDay}
				</span>
			</div>
			<table>
				<tr>
					<c:set var="index" value="0"/>
					<c:set var="week" value='<%= new String[] {"일", "월", "화", "수", "목", "금", "토"} %>'/>
					<c:forEach var="w" items="${week}">
						<td style="height:20px;">
							<c:choose>
								<c:when test="${index % 7 == 0}">
									<font color="red">${w}</font>
								</c:when>
								<c:when test="${index % 7 == 6}">
									<font color="blue">${w}</font>
								</c:when>
								<c:otherwise>
									<font color="black">${w}</font>
								</c:otherwise>
							</c:choose>
						</td>
						<c:set var="index" value="${index + 1}" />
					</c:forEach>
				</tr>
				<tr>
					<c:set var="cnt" value="1"/>
					<c:forEach var="i" begin="1" end="${calendar.startDay - 1}">
						<td></td>
						<c:set var="cnt" value="${cnt + 1}" />
					</c:forEach>
					<c:forEach var="i" begin="1" end="${calendar.end}">
						<td>
							<c:choose>
								<c:when test="${cnt % 7 == 1}">
									<font color="red">${i}</font>
								</c:when>
								<c:when test="${cnt % 7 == 0}">
									<font color="blue">${i}</font>
								</c:when>
								<c:otherwise>
									<font color="black">${i}</font>
								</c:otherwise>
							</c:choose>
						</td>
						<c:if test="${cnt % 7 == 0 && i != calendar.end}">
					        </tr><tr>
						</c:if>
						<c:set var="cnt" value="${cnt + 1}" />
					</c:forEach>
					
					<c:forEach var="i" begin="0" end="6">
						<c:if test="${cnt % 7 != 1}">
							<td></td>
							<c:set var="cnt" value="${cnt + 1}" />
						</c:if>
					</c:forEach>
				</tr>
			</table>
		</div>
	</body>
</html>