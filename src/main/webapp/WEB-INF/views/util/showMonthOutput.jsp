<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>showMonth</title>
</head>
<body>
	입력하신 년도는 : <%=request.getParameter("year") %> 년<br />
	입력하신 달은 : <%=request.getParameter("month") %> 월<br />
	<%
	int year = Integer.parseInt(request.getParameter("year"));
	int month = Integer.parseInt(request.getParameter("month"));
	String day = "";
	switch (month) {
	case 1:
	case 3:
	case 5:
	case 7:
	case 8:
	case 10:
	case 12:
		day = "31";
		break;
	case 4:
	case 6:
	case 9:
	case 11:
		day = "30";
		break;
	case 2:
		if (year % 4 == 0 && year % 100 != 0) {
			day = "29";
		} else if (year % 4 == 0 && year % 100 == 0 && year % 400 == 0) {
			day = "29";
		} else {
			day = "28";
		}
		break;
	default:
		day = "올바른 달이 아닙니다.";
		return;
	}
	%>
	<%
	%>
	<%=request.getParameter("year") %> 년 <%=request.getParameter("month") %> 월 <%=day %> 일 입니다. <br />
</body>
</html>