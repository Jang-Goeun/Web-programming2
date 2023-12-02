<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch07 : addr_add.jsp</title>
	<style>
		body{text-align:center;}
	</style>
</head>
<body>
	<div align="center">
		<h2>등록내용</h2>
			<jsp:useBean id="addrbean" class="jspbook.pr32.AddrBean" scope="page" />
			<jsp:setProperty name="addrbean" property="*" />
			<jsp:useBean id="addrmanager" class="jspbook.pr32.AddrManager" scope="application" />
			<% addrmanager.add(addrbean); %>
			
			이름: <jsp:getProperty name="addrbean" property="username" /><br><br>
			전화번호: <jsp:getProperty name="addrbean" property="tel" /><br><br>
			이메일: <jsp:getProperty name="addrbean" property="email" /><br><br>
			성별: <jsp:getProperty name="addrbean" property="gender" /><br><br>
			그룹: <jsp:getProperty name="addrbean" property="group" /><br><br>
		<hr>
		<a href="addr_form.jsp">주소 추가</a>
		&nbsp;&nbsp;&nbsp;
		<a href="addr_list.jsp">전체 목록 보기</a>
		&nbsp;&nbsp;&nbsp;
		<a href="addr_list_group.jsp">그룹별 목록 보기</a>
	</div>
</body>
</html>