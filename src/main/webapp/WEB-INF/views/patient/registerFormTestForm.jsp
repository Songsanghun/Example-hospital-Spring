<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="container" class="width_full_size" style="height:700px;">
	<form id="registerForm">
		<table class="width_full_size table_default">
			<tr>
				<td><div>
						<input type="text" name="" placeholder="성명"/> <br />
						<p class="color_blue" style="font-size: 12px;">한글 또는 영문으로 입력해주세요</p>
						</div></td>
			</tr>
			<tr>
				<td><div>
						<input type="text" name="" placeholder="E-Mail"/> <input type="submit" value="중복확인"><br />
						<p style="font-size: 12px">LPOINT 아이디는 자주 사용하시는 이메일 주소를 입력해주세요</p>
						</div></td>
			</tr>
			<tr>
				<td><input type="password" name="" placeholder="비밀번호"/>
					<p style="font-size: 12px">8~15자의 영문자, 숫자, 특수문자를 함께 입력해주세요</p>
				    </td>
			</tr>
			<tr>
				<td><input type="password" name="" placeholder="비밀번호 확인" /><br/></td>
			</tr>
			<tr>
				<td><p><select name="birth">
						<option value="" selected>생년선택</option>
						<option value="1983">1983년</option>
						<option value="1982">1982년</option>
						<option value="1981">1981년</option>
						<option value="1980">1980년</option>
				</select> <select name="month" >
						<option value="1">1월</option>
						<option value="2">2월</option>
						<option value="3">3월</option>
						<option value="4">4월</option>
						<option value="5">5월</option>
						<option value="6">6월</option>
						<option value="7">7월</option>
						<option value="8">8월</option>
						<option value="9">9월</option>
						<option value="10">10월</option>
						<option value="11">11월</option>
						<option value="12">12월</option>
				</select> <select name="date" >
						<option value="1">1일</option>
						<option value="2">2일</option>
						<option value="3">3일</option>
						<option value="4">4일</option>
						<option value="5">5일</option>
						<option value="6">6일</option>
						<option value="7">7일</option>
						<option value="8">8일</option>
						<option value="9">9일</option>
						<option value="10">10일</option>
				</select></p></td>
			</tr>
			<tr>
				<td><p><select name="telecom">
						<option value="SKT">SKT</option>
						<option value="LGT">LGT</option>
						<option value="KT">KT</option>
				</select> <select name="firstNumber" id="">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
				</select>-<input type="text" name="secondNumber"/>-<input type="text" name="thirdNumber"/></p></td>
			</tr>
			<tr>
				<td><b>정보수신동의</b><span style="text-align:left;">전체선택
				<input type="checkbox" name="checkbox" /></span><br />
					LPOINT |
					<input type="checkbox" name="checkbox" />E-Mail 
					<input type="checkbox" name="checkbox"/>SMS<br />
					롯데시네마 |
					<input type="checkbox" name="checkbox"/>E-Mail 
					<input type="checkbox" name="checkbox" />SMS<br />
					<p style="font-size: 12px">*정보수신동의를 하시면, 고객혜택 및 이벤트 등 다양한 정보를
						받으실 수 있습니다</p>
				</td>
			</tr>
			<tr>
				<td>
					<div>
						개인정보<br />
						유효기간 | <input type="radio" name="rdBtn"/>
						탈퇴 시 파기 <input type="radio" name="rdBtn"/>1년<br />
						<p style="font-size: 12px">*개인정보 유효기간 경과 이후 개인정보를 분리 저장관리 또는
							파기합니다</p>
					</div>
				</td>
			</tr>
			<tr>
				<td class="color_blue"><p>*선택항목에 동의하지 않으셔도 정상적인 서비스를 이용하실 수 있습니다</p></td>
			</tr>
			<tr style="text-align:center; width:100%">
				<td>
					<input style="background-color: #5e6869; color: white; width:49%; height:40px;" type="button" value="이전" />
					<input name="testSelect" style="background-color: blue; color: white; width:49%; height:40px;" type="button" value="testSelect" />
					<input name="testCheckbox" style="background-color: blue; color: white; width:49%; height:40px;" type="button" value="testCheckbox" />
					<input name="testRdBtn" style="background-color: blue; color: white; width:49%; height:40px;" type="button" value="testRdBtn" />
				</td>
			</tr>
		</table>
	</form>
	</div>
	<script>
	$(function(){
		var $registerForm = $('#registerForm');
		var tab = $registerForm.find('table');
		$registerForm.addClass('margin_center').addClass('width_full_size').css('width','500px').css('margin-top','50px');
		$registerForm.find('input[name=register]').click(function(){
			var birthVal = tab.find("select[name=birth] option:selected").val();
			var monthVal = tab.find("select[name=month] option:selected").val();
			var dateVal = tab.find("select[name=date] option:selected").val();
			var telecomVal = tab.find("select[name=telecom] option:selected").val();
			var firstNumberVal = tab.find("select[name=firstNumber] option:selected").val();
			var secondNumberVal = tab.find("select[name=secondNumber] option:selected").val();
			var thirdNumberVal = tab.find("select[name=thirdNumber] option:selected").val();
		});	
		$('input[name=test]').click(function(){
			alert('체크된 값들'+selectedArr
					+birthVal+'');
		});
		$('#registerForm input[value=이전]').click(function(event){
			$registerForm.attr("action","../common/main.do");
			$registerForm.attr("method","post");
		});
		var ckbox = $registerForm.find('input[name=ckbox]');
		var selectedArr = [];
		ckbox.click(function(){
			if(ckbox.is(":checked")){
				selectedArr.push($(this).val());
			}
		});
		$('input[name=testCheckbox]').click(function(){
			alert('체크된 값들'+selectedArr);
		});
		var rdBtn = $registerForm.find('input[name=rdBtn]');
		var rdResult='';
		rdBtn.change(function(){
			if($(this).is(":checked")){
				rdResult=$(this).val();
			}
		});
		$('input[name=testRdBtn]').click(function(){
			alert('체크된 값들+rdResult');
		});
		
	});
	
	</script>
	
<jsp:include page="../common/footer.jsp"/>