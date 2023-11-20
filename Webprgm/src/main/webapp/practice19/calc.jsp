<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script>
    function calc() {
        var exp = prompt("스크립트 프롬프트:\n계산할 수식을 입력하세요", "123+456");

        if (exp != null ) { 
            var result = eval(exp);
            alert(result);
        }
    }
</script>
</head>
<body>
	<div align="center">
		<form method="post" action="calc_result.jsp">
			<table>
		        <tr>
		            <td colspan="2" class="blue">CalCuLaTor</td>
		        </tr>
		        <tr>
		            <td style="width: 200px;"><input type="image" src="image/cal.jpg" style="width: 230px; height: 300px;"></td>
		            <td style="width: 170px; text-align: center;">
		            	<input type="text" name="num1" value="0" size="10"><br><br>
		            	<select name="op">
		            		<option value="0" selected>+</option>
		            		<option value="1">-</option>
		            		<option value="2">*</option>
		            		<option value="3">/</option>
		            	</select><br><br>
		            	<input type="text" name="num2" value="0" size="10"><br><br>
		            	<input type="submit" value="="><br><br>
		            	<input type="text" disabled size="10">
		            </td>
		        </tr>
		        <tr>
		            <td colspan="2" class="blue"></td>
		        </tr>
		    </table>
	    </form>
    </div>
</body>
</html>