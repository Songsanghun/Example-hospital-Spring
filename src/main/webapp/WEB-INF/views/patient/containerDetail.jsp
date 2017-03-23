<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
.pat_detail {text-align: center; margin:0 auto;}
.pat_detail tr td{border: 1px solid #bbbbbb}
</style>
<div class="con_setting" style="position: relative; top: 50px; text-align:center; width:100%">
      <div>
            <table class="pat_detail">
             	  <tr style="text-align: left;">
                        <td colspan="5"><div><img src="${context.img}/common/defaultimg.jpg" alt="" width="160px"/></div></td>
                  </tr>
                  <tr>
                        <td style="width: 60px" rowspan="5"><span style="font-size: 20px">나<br />의<br />정<br />보</span></td>
                        <td style="width: 100px">이름</td>
                        <td style="width: 150px">${Name}</td>
                        <td style="width: 100px">직업</td>
                        <td style="width: 150px"></td>
                  </tr>
                  <tr>
                        <td>생년월일</td>
                        <td></td>
                        <td>키</td>
                        <td>180cm</td>
                  </tr>
                  <tr>
                        <td>성별</td>
                        <td></td>
                        <td>나이/몸무게</td>
                        <td>/80kg</td>
                  </tr>
                  <tr>
                        <td>전화번호</td>
                        <td></td>
                        <td>혈액형</td>
                        <td>A형</td>
                  </tr>
                  <tr>
                        <td>주소</td>
                        <td></td>
                        <td>주치의</td>
                        <td>
                        <a onclick="" href="#"></a>
                        </td>
                  </tr>
                                  
                  
            </table>
            <button onclick="">클릭</button>
            
            </div>
           <script>
           function docDetail(){
        	   alert('의사ID 클릭');
        	   location.href ="${context.path}/doctor";
        			   
           }
           </script>
</div>
<jsp:include page="../common/footer.jsp"/>