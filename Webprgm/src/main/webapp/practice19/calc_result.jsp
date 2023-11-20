<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration, java.util.ArrayList" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
<style>
        td {
            width: 400px;
            border: 1px gray solid;
            text-align: center;
        }
        td.blue {
            background-color: #32CCFE;
            height: 56px;
            font-style: italic;
            font-size: 40px;
        }
        input {text-align: center;}
</style>
</head>
<body>
	<div align="center">
<%! 
	ArrayList<String> name = new ArrayList<String>();
	int num1, num2, result;
	String printOp;
%>
<%
	Enumeration<String> e = request.getParameterNames();
	while(e.hasMoreElements()){
		name.add(e.nextElement()); 
	}
	
	num1 = Integer.parseInt(request.getParameter(name.get(0)));
	num2 = Integer.parseInt(request.getParameter(name.get(2)));
	String op = request.getParameter(name.get(1));
	
	switch (op) {
		case "0" : result = num1 + num2; printOp = "+"; break;
		case "1" : result = num1 - num2; printOp = "-"; break;
		case "2" : result = num1 * num2; printOp = "*"; break;
		case "3" : result = num1 / num2; printOp = "/"; break;
	}
%>
	<table>
        <tr>
            <td colspan="2" class="blue">CalCuLaTor</td>
        </tr>
        <tr>
            <td style="width: 200px;"><input type="image" src="image/cal.jpg" style="width: 230px; height: 300px;"></td>
            <td style="width: 170px; text-align: center;">
            	<input type="text" name="num1" value="<%= num1 %>" size="10" readonly><br><br>
            	<%= printOp %>
            	<br><br>
            	<input type="text" name="num2" value="<%= num2 %>" size="10" readonly><br><br>
            	=<br><br>
            	<input type="text" value="<%= result %>"  size="10" readonly>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="blue"></td>
        </tr>
	</table>
	</div>
</body>
</html>