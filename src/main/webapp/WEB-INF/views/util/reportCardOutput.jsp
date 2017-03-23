<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>ReportCard</title>
</head>
<body>
<%! 
		public String[] getGrade(int korean,int english,int math,int science){
		String[] arr = new String[3];
		int total = korean + english + math + science;
		int average = total / 4;
		String grade = "";
		if(average >=90){
			grade = "A";			
		}else if(average >=80){
			grade = "B";
		}else if(average >=70){
			grade = "C";
		}else{
			grade = "D";
		}
		arr[0] = String.valueOf(total);     
		arr[1] = String.valueOf(average);
		arr[2] = grade;
		
		return arr;
}
%>
<%
int korean = Integer.parseInt(request.getParameter("korean"));
int english = Integer.parseInt(request.getParameter("english"));
int math = Integer.parseInt(request.getParameter("math"));
int science = Integer.parseInt(request.getParameter("science"));

	String arr[] = getGrade(korean, english, math, science);
%>
총점 : <%= arr[0] %> <br />
평균 : <%= arr[1] %> <br />
등급 : <%= arr[2] %> <br />

</body>
</html>