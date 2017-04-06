<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<body>
   <div style="height: 100px"></div>
   <div id="container" class="width_full_size" style="height: 700px;">
      <div style="margin-top: 35px;"
         class="width_full_size height_full_size">
         <form id="registerForm" style="width: 100%; height: px; margin: auto auto"
            class="margin_center">
     <input type="radio" name="type" value="patient" checked>고객
     <input type="radio" name="type" value="doctor">의사
     <input type="radio" name="type" value="nurse">간호사
     <input type="radio" name="type" value="admin">관리자
            <table class="table_default margin_center"
               style="height: 500px; padding: 5px auto;">
               <tr>
                  <td class="color_blue" style="text-align: left;">한글 또는 영문으로
                     입력해 주세요.</td>
               </tr>
               <tr>
                  <td>
                     아이디를 입력해 주세요.<br/>
                     <input type="text" name="id" placeholder="ID" />
                     <input type="submit" name="check" value="중복확인" /><br />
                     E-MAIL을 입력 해 주세요.<br/><input type="text" name="email" placeholder="E-MAIL" />
                      자주 사용하시는 이메일 주소로 입력해 주세요.<br/>
                   </td>
               </tr>
               <tr>
                  <td>
                   비밀번호를 입력해 주세요<br/>
                   <input type="text" name="pass" placeholder="password" />
                   8~15자의 영문자,숫자,특수문자를 함께 입력해주세요.</td>
               </tr>
                <tr>
                  <td>
                  이름을 입력해 주세요.<br/>
                  <input type="text" name="name" placeholder="이름" /></td>
               </tr>
                  <td>
                  전화번호를 입력해 주세요.<br/>
                  <input type="text" name="phone" placeholder="전화번호" /></td>
               </tr>
               <tr>
                  <td>
                  주소를 입력해 주세요.<br/>
                  <input type="text" name="addr" placeholder="주소" /></td>
               </tr>
               <tr>
                  <td> 담당의사
                  <input type="text" name="docID" >
                  
                  <input type="text" name="nurID">
               <tr>
                  <td><input type="text" name="jumin"></td>
               </tr>
               <tr>
                  <td>정보수신동의&nbsp;전체선택<input type="checkbox" name="select"
                     value="all select" />
                  </td>
               </tr>
               <tr>               
                  <td>
                  직업을 선택 해 주세요.<br/>
                  <input type="checkbox" name="job" value="employee" />회사원&nbsp;
                  <input type="checkbox" name="job" value="developer"/>개발자&nbsp;
                  <input type="checkbox" name="job" value="staff"/>스탭&nbsp;
                  <input type="checkbox" name="job" value="doctor"/>의사&nbsp;
                  <input type="checkbox" name="job" value="nurse"/>간호사&nbsp;
                  <input type="checkbox" name="job" value="admin"/>관리자
                  </td>
               </tr>
               <tr>
                  <td> 
                  성별<br/> 
                  남<input type="radio" name="gen" value="m" />&nbsp;여<input type="radio" name="gen" value="f" /><br/>
                  </td>
               </tr>
               <tr>
                  <td>
                     <p class="color_red">*선택항목에 동의하지 않으셔도 정상적인 서비스를 이용하실 수 있습니다.</p>

                  </td>
               </tr>
               <tr>
                  <td>   
                     <input type="button" name="back" value="이전" style="width: 300px;" /> 
                     <input type="hidden" name="action" value="register" />
                     <input type="hidden" name="page" value="main" />
                     <input type="button" name="submitBtn" value="전송" style="width: 300px;" />
                  </td>
               </tr>
            </table>
         </form>
      </div>
      <p class="border_solid"></p>
   </div>
</body>
<script>
   $(function(){
      var $registerForm = $('#registerForm');
      var tab = $registerForm.find('table'); 
      var type= $registerForm.find(':radio[name="type"]:checked').val();
      $('input[name=submitBtn]').click(function(){
         $registerForm.attr('action','${context.path}/register/'+type);
         $registerForm.attr('method','post');
         $registerForm.submit();
      });
   });
</script>

