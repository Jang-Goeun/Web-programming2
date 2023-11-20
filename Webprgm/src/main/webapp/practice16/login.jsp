<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이클립스 로그인</title>
<%
	out.println("<style>");
	out.println("body{width: 1100px; margin: auto;}");
	out.println("div { display: block;}");
	out.println("h2 {text-align: center;}");
	out.println("hr {width: 964px;}");
	out.println("img.imageLogo{ float: left; margin-left: 250px;}");
	out.println("div.d1 { margin-right: 135px; font-weight: bold;}");
	out.println("p { margin-left: 10px;}");
	out.println("td {width: 80px;}");
	out.println("tr {line-height: 35px;}");
	out.println("</style>");
%>
</head>
<body>
<%
	out.println("<div align=\"center\">");
	out.println("<img src=\"image/eclass_title.jpg\">");
	out.println("<h2>로그인</h2><hr>");
	out.println("<img src=\"image/eclass_logo.png\" class=\"imageLogo\">");
	out.println("<div class=\"d1\" align=\"left\">");
	out.println("<p>회원님의 아이디와 비밀번호를 정확히 입력하세요.</p>");
	out.println("<form method=\"post\" name=\"frm1\" action=\"result.jsp\">");
	out.println("<table>");
	out.println("<tr>");
	out.println("<td></td>");
	out.println("<td>");
	out.println("<select name=\"type\">");
	out.println("<option value=\"학부생\">학부생</option>");
	out.println("<option value=\"교수진\">교수진</option>");
	out.println("<option value=\"대학원생\">대학원생</option>");
	out.println("</select>");
	out.println("</td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>아이디</td>");
	out.println("<td><input type=\"text\" style=\"background-color: #ffff99;\" name=\"strId\" maxlength=\"20\"></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>비밀번호</td>");
	out.println("<td><input type=\"password\" style=\"background-color: #ffff99;\" name=\"strPwd\" maxlength=\"20\"></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td colspan=\"2\">");
	out.println("<input type=\"submit\" value=\"로그인\">");
	out.println("<input type=\"button\" value=\"가입하기\">");
	out.println("</td>");
	out.println("</tr>");
	out.println("</table>");
	out.println("</form>");
	out.println("</div>");
	out.println("</div>"); 
%>
</body>
</html>