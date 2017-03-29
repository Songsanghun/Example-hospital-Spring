<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
 table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
} 
</style>
<body>
<div style="height:100px"></div>
<div id="container" >
<div style="margin-top:200px;" class="width_full_size">
<form id="loginForm" style="width:20%;">
아이디, 비밀번호를 입력하세요.
<table>	
	<tr>
			<td >
			<input type="text" name="id" value=""/>
			</td>
			<td rowspan="2">
			<input type="submit" value="로그인" class="height_full_size width_full_size"/>
			</td>
			
	</tr>
	 	<tr>
		<td>
		<input type="text" name="password" value=""/>
		</td>
	</tr>
	
</table>
	<input type="radio" name="permission" value="patient" checked>고객
 	<input type="radio" name="permission" value="doctor">의사
  	<input type="radio" name="permission" value="nurse">간호사
  	<input type="radio" name="permission" value="admin">관리자
<input type="hidden" name="action" value="login">
<input type="hidden" name="page" value="main">
</form>
</div>
<div style="height:100px"></div>

</div>
	<p class="border_solid"></p>
<jsp:include page="../common/footer.jsp"/>
<script>
$(function(){
	var $loginForm = $('#loginForm');
	var tab = $loginForm.find('table');
	
	$('#loginForm input[value=로그인]').click(function(){
	var permission = $loginForm.find(':radio[name="permission"]:checked').val()
		alert('permission :'+permission)
		$loginForm.attr("action","${context.path}/"+permission+"/login");
		$loginForm.attr("method","post");
	var idVal=tab.find('input[name=id]').val();
	var pwVal=tab.find('input[name=password]').val();	
		if(idVal==''||pwVal==''){
			alert('값을 먼저 입력해주세요');
		}else{
		alert('로그인하기 위해 입력한 ID='+idVal+',pw='+pwVal)
		$loginForm.submit();
		}
	});
$('#container').addClass('width_full_size').css('height,700px');
$('#loginForm').addClass('margin_center');
});
</script>
	