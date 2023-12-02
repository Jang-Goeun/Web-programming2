<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<jsp:useBean id="calc" class="jspbook.pr31.Calculator" scope="page" />
	<jsp:setProperty name="calc" property="*" />
	<div align="center">
	<table>
        <tr>
            <td colspan="2" class="blue">CalCuLaTor</td>
        </tr>
        <tr>
            <td style="width: 200px;"><input type="image" src="image/cal.jpg" style="width: 230px; height: 300px;"></td>
            <td style="width: 170px; text-align: center;">
            	<input type="text" name="num1" value="${ calc.getOp1() }" size="10" readonly><br><br>
            	${ calc.getOperator() }
            	<br><br>
            	<input type="text" name="num2" value="${ calc.getOp2() }" size="10" readonly><br><br>
            	=<br><br>
            	<input type="text" value="${ calc.getcalc() }"  size="10" readonly>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="blue"></td>
        </tr>
	</table>
	</div>
</body>
</html>