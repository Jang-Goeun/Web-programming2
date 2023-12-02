<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration, java.util.ArrayList" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 22</title>
</head>
<body>
<%!
	String[] mChoices = {"hobby"};
	String[] gNames = {"남자", "여자"};
	String[] telCompany = {"010", "011", "017", "070"};
	String[] hobbyNames = {"뉴스", "맛집", "책", "영화", "여행"};
	
	ArrayList<String> getParameterNames(HttpServletRequest request) {
		ArrayList<String> name = new ArrayList<String>();
		Enumeration<String> e = request.getParameterNames();
		while (e.hasMoreElements()) {
			String data = e.nextElement();
			name.add(data);
		}
		return name;
	}
%>
<%
	ArrayList<String> name = getParameterNames(request);

	for(String eachName : name){
		if(eachName.equalsIgnoreCase(mChoices[0])){
			out.println(eachName + " : ");
			String[] data = request.getParameterValues(eachName);
			if (data != null){
				for(String eachData : data) 
					out.println(eachData + "/");
			}
			out.println("<br>");			
		}else{
			out.println(eachName + " : " + request.getParameter(eachName));
			out.println("<br>");
		}	
	}
	
	out.println("<hr>");
	out.println("<h1>Processing Parameters</h1>");

	for(String eachName : name){
		out.println(eachName + " : ");
		if(eachName.equalsIgnoreCase(mChoices[0])){
			String[] data = request.getParameterValues(eachName);
			if (data != null){
				for(String eachData : data) {
					int index = Integer.parseInt(eachData);
					out.println(hobbyNames[index] + "/");
				}
			}			
		}else{
			String data = request.getParameter(eachName);
			
			if (eachName.equalsIgnoreCase("gender")) {
				int index = Integer.parseInt(data);
				out.println(gNames[index]);
			}		
			else if (eachName.equalsIgnoreCase("phone1")){
				int index = Integer.parseInt(data);
				out.println(telCompany[index]);
			}
			else
				out.println(data);
		}	
		out.println("<br>");
	}
%>
</body>
</html>