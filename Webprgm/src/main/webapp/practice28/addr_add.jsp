<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_add.jsp</title>
	<style>
		body{text-align:center;}
	</style>
</head>
<body>
	<div align="center">
		<h2>등록내용</h2>
		<%
			request.setCharacterEncoding("UTF-8");
			
			Enumeration<String> e = request.getParameterNames();
			String nameList[] = {"이름", "전화번호", "이메일", "성별"};
			int i = 0, check = 0;
				String s = "";
			
			while(e.hasMoreElements())
			{
				String name = e.nextElement();
				String data = request.getParameter(name);
				
				out.print(nameList[i] + ": ");
				
				if(name.equalsIgnoreCase("gender")){
					int d = Integer.parseInt(data);
					if(d == 0){
						out.println("남");
						s +="남";
					}else{
						out.println("여");
						s +="여";
					}
				} else {
					out.println(data);
					s += data + "/";
				}
				out.println("<br><br>");
				i++;
			}
			
			@SuppressWarnings("unchecked") // 자바의 어노테이션 중 하나로, 경고를 무시도록 지시함
			ArrayList<String> addrbook = (ArrayList<String>) application.getAttribute("addrbook"); //실행 시에 해당 객체가 실제로 ArrayList<String>인지 확인할 수 없어서 이러한 경고가 발생 
			
			if(addrbook == null) {
				addrbook = new ArrayList<String>();
				// application 에 ArrayList 저장
				application.setAttribute("addrbook", addrbook);
			}
			
			for(String d : addrbook){
				if(d.equalsIgnoreCase(s)){
					check = 1;
				}
			}
			
			if(check == 0)
				addrbook.add(s);
		%>
		<hr>
		<a href="addr_list.jsp">목록 보기</a>
		&nbsp;&nbsp;&nbsp;
		<a href="addr_form.jsp">주소 추가</a>
	</div>
</body>
</html>