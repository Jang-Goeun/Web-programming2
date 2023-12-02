<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
	<style>
		table {
		    border-collapse:collapse;
		    margin: 0 auto;
		}
		form {width:526px; height:373px;}
		table, td {border: 1px solid black;}
		td.color {
		    width: 70px;
		    text-align: center;
		    font-weight: bold;
		    background-color: #ececec;
		}
		input.imageAlign {vertical-align:middle;}
	</style>
</head>
<body>
	 <div align="center">
		<img src="image/eclass_title.jpg">
		<form name="frm2" method="post" action="Practice17.jsp">
		    <table>
		        <tr>
		            <td colspan="2" class="color">회원가입</td>
		        </tr>
		        <tr>
		            <td class="color">아이디</td>
		            <td>
		                <input size="13" name = "id"> 
		                <input type="image" src="image/check.gif" class="imageAlign">
		            </td>
		        </tr>
		        <tr>
		            <td class="color">패스워드</td>
		            <td>
		                <input type="password" size="12" name = "pw">
		            </td>
		        </tr>
		        <tr>
		            <td class="color">성별</td>
		            <td>
		                <input type="radio" name="gender" value="0">남
		                <input type="radio" name="gender" value="1" checked>여
		            </td>
		        </tr>
		        <tr>
		            <td class="color">국적</td>
		            <td>
		                <input size="20" placeholder="대한민국" readonly>
		                <input type="button" value="국적변경" disabled>
		            </td>
		        </tr>
		        <tr>
		            <td class="color">휴대폰</td>
		            <td>
		                <select name="phone1" id="전화번호">
		                    <option value="0">010</option>
		                    <option value="1">011</option>
		               		<option value="2">017</option>
		               		<option value="3">070</option>
			           </select>
			           -
			           <input name="phone2" size="4" maxlength="4"> 
			           -
			           <input name="phone3" size="4" maxlength="4"> 
			       </td>
			   </tr>
			   <tr>
			       <td class="color">이메일</td>
			       <td>
			           <input type="email" size="38"  name="email"> 
			       </td>
			   </tr>
			   <tr>
			       <td class="color">생일</td>
			       <td>
			           <input size="20" placeholder="연도-월-일" name="birth"> 
			       </td>
			   </tr>
			   <tr>
			       <td class="color">관심분야</td>
			       <td>
			           <input type="checkbox" name="hobby" value="0">뉴스
			           <input type="checkbox" name="hobby" value="1" checked>맛집
			           <input type="checkbox" name="hobby" value="2">책
			           <input type="checkbox" name="hobby" value="3">영화
			           <input type="checkbox" name="hobby" value="4">여행
			       </td>
			   </tr>
			   <tr>
			       <td class="color">가입인사</td>
			       <td>
			           <textarea name="memo" id="가입인사" cols="60" rows="5" placeholder="회원들에게 간단한 가입인사를 남겨주세요"></textarea>
			       </td>
			   </tr>
			   <tr>
			       <td class="color">증명사진</td>
			       <td>
			           <input type="file"> 
			       </td>
			   </tr>
			   <tr>
			       <td colspan="2" class="color">
			           <input type="submit" value="가입하기">
		                <input type="reset" value="다시작성">
		            </td>
		        </tr>
		    </table>
		</form>
	</div>
</body>
</html>