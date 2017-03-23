<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>0부터 50까지 합 구하기</title>
</head>
<body>
	<%
		int[] arr = {1,2,3,4,5,6,7,8,9,10};
		Set<Integer> a = new HashSet<Integer>();
	/* 	for(int i=0;i<arr.length;i++){
		a.add((arr[i]));
		} */
		for(Integer k:arr){
			a.add(k);
		}
		int sum = 0;
		for (int i = 0; i < 51; i++) {
			sum += i;
		}
	%>
	총합<%=sum %> <br />
	<%= a.toString() %> <br />
</body>
</html>