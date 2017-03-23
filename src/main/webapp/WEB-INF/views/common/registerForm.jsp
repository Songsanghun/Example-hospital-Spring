<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="container" class="width_full_size" style="height: 700px; margin-top: 300px">
	<form id="registerForm">
		<table class="width_full_size table_default">
			<tr>
				<td><div>
						<input type="text" name="id" placeholder="ID" /> <br />
						<p class="color_blue" style="font-size: 12px;">영문으로 또는 숫자만 입력해주세요.</p>
					</div></td>
			</tr>
			<tr>
				<td><div>
						<input type="text" name="name" placeholder="성명" /> <br />
						<p class="color_blue" style="font-size: 12px;">이 름</p>
					</div></td>
			</tr>
			<tr>
				<td><div>
						<input type="text" name="email" placeholder="E-Mail" /> <input
							type="submit" value="중복확인"><br />
						<p style="font-size: 12px">LPOINT 아이디는 자주 사용하시는 이메일 주소를 입력해주세요</p>
					</div></td>
			</tr>
			<tr>
				<td><input type="password" name="password"/> 비밀번호
				</td>
			</tr>
			<tr>
				<td><input type="password" name="password" />비밀번호 확인<br />
				</td>
			</tr>
			<tr>
				<td><div>
						<input type="text" name="addr" placeholder="주소" /> <br />
						<p class="color_blue" style="font-size: 12px;">주소</p>
					</div></td>
			</tr>
			<tr>
				<td><p>
						
						<select name="doctor">
							<option value="" selected>의사선택</option>
							<option value="dhong">피부과: 홍길동</option>
							<option value="dahn">내과: 안성기</option>
							<option value="dkim">외과: 김민종</option>
							<option value="dkim2">소아과: 김연아</option>
						</select> 
						<select name="nurse">
							<option value="">간호사선택</option>
							<option value="nkim">김은영</option>
							<option value="nyoon">윤성애</option>
							<option value="nshin">신지원</option>
							<option value="nyou">유정화</option>
							</select>
						<select name="birth" >
						<option value="">1983년</option>
						<option value="">1982년</option>
						<option value="">1981년</option>
						<option value="">1980년</option>
							</select>
			 <select name="month">
						<option value="">1월</option>
						<option value="">2월</option>
						<option value="">3월</option>
						<option value="">4월</option>
						<option value="">5월</option>
						<option value="">6월</option>
						<option value="">7월</option>
						<option value="">8월</option>
						<option value="">9월</option>
						<option value="">10월</option>
						<option value="">11월</option>
						<option value="">12월</option>	
						</select> <select name="date">
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
						</select>
					</p></td>
			</tr>
			<tr>
				<td><p>
						<select name="telecom">
							<option value="SKT">SKT</option>
							<option value="LGT">LGT</option>
							<option value="KT">KT</option>
						</select> 
						<select name="phoneNo1">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select>-<input type="text" name="phoneNo2" />-<input type="text"
							name="phoneNo3" />
					</p></td>
			</tr>
				<!-- 
				job : 회사원 employee 개발자 developer 스텝 staff 의사 doctor 간호사 nurse 관리자 admin
				-->
			<tr>
				<td><b>직업선택 (두개이상 선택가능. 단 스탭은 병원관계자만 선택하세요. )</b><br />
				<input type="checkbox" name="job" value="employee" />회사원
				<input type="checkbox" name="job" value="developer" />개발자
				<input type="checkbox" name="job" value="staff" />스텝<br /> 
				<input type="checkbox" name="job" value="doctor" />의사
				<input type="checkbox" name="job" value="nurse" />간호사
				<input type="checkbox" name="job" value="admin" />관리자<br />
				</td>
			</tr>
			<tr>
				<td>
					<div>
						개인정보<br /> 
						성별 | <input type="radio" name="gender" value="m" /> 남 
						<input type="radio" name="gender" value="f" />여<br />
						
					</div>
				</td>
			</tr>
			<tr>
				<td class="color_blue"><p>*선택항목에 동의하지 않으셔도 정상적인 서비스를 이용하실 수
						있습니다</p></td>
			</tr>
			<tr style="text-align: center; width: 100%">
				<td>
					<input name="submitBtn"
					style="background-color: blue; color: white; width: 49%; height: 40px;"
					type="button" value="전송" />
				</td>
			</tr>
		</table>
		<input type="hidden" name="action" value="register"/>
		<input type="hidden" name="page" value="main"/>
		<input type="button" name="submitBtn" value="전송" style="width: 200px"/>
	</form>
</div>
<script>
	$(function() {
		var $registerForm = $('#registerForm');
		var tab = $registerForm.find('table');
		$registerForm.addClass('margin_center').addClass('width_full_size')
				.css('width', '500px').css('margin-top', '50px');
		$('input[name=submitBtn]').click(function() {
			$registerForm.attr("action", "${context}/patient.do");
			$registerForm.attr("method", "post");
			$registerForm.submit();
		});
	});
</script>

<jsp:include page="../common/footer.jsp" />