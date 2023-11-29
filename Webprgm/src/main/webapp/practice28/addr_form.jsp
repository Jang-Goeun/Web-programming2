<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_form.jsp</title>
<style>
	table, td {border:1px solid black;}
	td{padding:4px;}
</style>
</head>
<body>
	<div align="center">
		<h2>주소록 등록</h2>
		<hr>
		<form method="post" action="addr_add.jsp">
			<table>
				<tr>
					<td>
						이름
					</td>
					<td>
						<input type="text" name="username">
					</td>
				</tr>
				<tr>
					<td>
						전화번호
					</td>
					<td>
						<input type="text" name="tel">
					</td>
				</tr>
				<tr>
					<td>
						이메일
					</td>
					<td>
						<input type="text" name="email">
					</td>
				</tr>
				<tr>
					<td>
						성별
					</td>
					<td>
						<select name="gender">
							<option value=0 selected>남</option>
							<option value=1>여</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align:center;">
						<input type="submit" value="확인">
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>