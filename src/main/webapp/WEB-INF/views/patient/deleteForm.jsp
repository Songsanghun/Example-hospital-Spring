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
<form id="deleteForm" style="width:20%;">
아이디, 비밀번호를 입력하세요.
<table>	
	<tr>
		<td >
			<input type="text" name="id" value=""/>
		</td>
		<td rowspan="2">
			<input type="submit" value="삭제확인" class="height_full_size width_full_size"/>
		</td>
	</tr>
	<tr>
		<td>
			<input type="text" name="password" value=""/>
		</td>
	</tr>
</table>

<script>
$(function(){
	var $deleteForm = $('#deleteForm');
	var tab = $deleteForm.find('table');
	
	$('#deleteForm input[value=삭제확인]').click(function(){
		$deleteForm.attr("action","${context.path}/delete");
		$deleteForm.attr("method","post");
		$deleteForm.submit();
	});
$('#container').addClass('width_full_size').css('height,700px');
$('#deleteForm').addClass('margin_center');
});
</script>
	