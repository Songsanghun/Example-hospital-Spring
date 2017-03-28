<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>BMI 측정</title>
<link rel="stylesheet" href="../../css/hanbit.css" />
</head>
<body>
<div style="width: 90%; margin-top : 100px"></div>
	<form action="outputBmi.jsp" style="width: 300px;" class="border_solid margin_center">
		나이 <input type="text" name="age" size ="10"/><br />  
		몸무게 <input type="text" name="kg" size="10"/><br /> 
		키 <input type="text" name="cm" size="10"/><br />
		<input type="submit" value="SUBMIT" />
	</form>

</body>
</html>