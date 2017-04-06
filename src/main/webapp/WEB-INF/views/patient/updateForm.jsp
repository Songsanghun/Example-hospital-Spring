<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>
	<div style="height: 100px"></div>
	<div id="container" class="width_full_size" style="height: 700px;">
		<div style="margin-top: 35px;"
			class="width_full_size height_full_size">
			<form id="updateForm"
				style="width: 100%; height: px; margin: auto auto"
				class="margin_center">

				<table class="table_default margin_center"
					style="height: 500px; padding: 5px auto;">
					<tr>
						<td class="color_blue" style="text-align: left;"></td>
					</tr>
					<tr>
						<td>${user.id}<br> E-MAIL을 입력 해 주세요.<br />
						<input type="text" name="email" placeholder="${user.email}" />
							이메일 주소를 입력해 주세요.<br />
						</td>
					</tr>
					<tr>
						<td>비밀번호를 입력해 주세요<br /> <input type="password" name="pass"
							placeholder="password" /> 8~15자의 영문자,숫자,특수문자를 함께 입력해주세요.
						</td>
					</tr>
					<tr>
						<td>이름은 수정할수없습니다.<br /> ${user.name}
						</td>
					</tr>
					<td>전화번호를 입력해 주세요.<br /> <input type="text" name="phone"
						placeholder="${user.phone}" /></td>
					</tr>
					<tr>
						<td>주소를 입력해 주세요.<br /> <input type="text" name="addr"
							placeholder="${user.addr}" /></td>
					</tr>
					<tr>
						<td>담당의사 <input type="text" name="docID"> <br />
						담당간호사 <input type="text" name="nurID">
					<tr>
						
						<td>주민번호는 수정할수없습니다 : ${user.jumin}</td>
					</tr>
					<tr>
						<td>정보수신동의&nbsp;전체선택<input type="checkbox" name="select"
							value="all select" />
						</td>
					</tr>
					<tr>
						<td>직업을 선택 해 주세요.<br /> <input type="checkbox" name="job"
							value="employee" />회사원&nbsp; <input type="checkbox" name="job"
							value="developer" />개발자&nbsp; <input type="checkbox" name="job"
							value="staff" />스탭&nbsp; <input type="checkbox" name="job"
							value="doctor" />의사&nbsp; <input type="checkbox" name="job"
							value="nurse" />간호사&nbsp; <input type="checkbox" name="job"
							value="admin" />관리자
						</td>
					</tr>
					<tr>
						<td>성별 : ${user.gen}<br />
						</td>
					</tr>
					<tr>
						<td><input type="button" name="submitBtn" value="수정"
							style="width: 300px;" /></td>
					</tr>
				</table>
			</form>
		</div>
		<p class="border_solid"></p>
	</div>
</body>
<script>
   $(function(){
      var $updateForm = $('#updateForm');
      $('input[name=submitBtn]').click(function(){
         $updateForm.attr('action','${context.path}/update');
         $updateForm.attr('method','post');
         $updateForm.submit();
      });
   });
</script>

