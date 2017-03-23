<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>BMI 측정</title>
<link rel="stylesheet" href="../../css/hanbit.css" />

</head>
<body>
<div style="width: 90%; margin-top : 100px"></div>

		주민번호 <%=request.getParameter("ssn") %>  
	
	

<%
String ssn = request.getParameter("ssn");
char ch = ssn.charAt(7);
String result = "";
switch(ch){
case '1' :	case '3':
	result="남자";break;
case '2':	case '4':
	result="여자";break;
case '5':	case '6':
	result="남자";break;
default :
	result="올바른 주민번호를 입력해주세요.";
	break;
}
%>

당신의 성별은 : <%= result %> <br />
</body>
</html>