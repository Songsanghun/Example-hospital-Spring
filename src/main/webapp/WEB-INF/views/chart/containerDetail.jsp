<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
.pat_detail {text-align: center; margin:0 auto;}
.pat_detail tr td{border: 1px solid #bbbbbb}
</style>
<div class="con_setting" style="position: relative; top: 150px; text-align:center; width:100%">
      <h1>진료기록부</h1>
      <div class="wtac">
            <table class="pat_detail">
                  <tr>
                        <td style="width: 60px" rowspan="5"><span style="font-size: 20px">환<br />자<br />정<br />보</span></td>
                        <td style="width: 100px">이름</td>
                        <td style="width: 150px"></td>
                        <td style="width: 100px">직업</td>
                        <td style="width: 150px"></td>
                  </tr>
                  <tr>
                        <td>생년월일</td>
                        <td></td>
                        <td>키</td>
                        <td></td>
                  </tr>
                  <tr>
                        <td>성별</td>
                        <td></td>
                        <td>나이/몸무게</td>
                        <td></td>
                  </tr>
                  <tr>
                        <td>전화번호</td>
                        <td></td>
                        <td>혈액형</td>
                        <td></td>
                  </tr>
                  <tr>
                        <td>주소</td>
                        <td></td>
                        <td>주치의</td>
                        <td></td>
                  </tr>
                  <tr>
                        <td style="height: 50px">처방전</td>
                        <td colspan="4" style="height: 50px"> 처방전 상세내용 </td>
                  </tr>
                  <tr style="text-align: left;">
                        <td colspan="5"><div><img src="${img}/common/defaultimg.jpg" alt="" width="160px"/></div></td>
                  </tr>
                  <tr>
                        <td colspan="5" style="height: 200px">상세 내용</td>
                  </tr>
            </table>
            </div>
            <div class="wtac">
            <table class="pat_detail" style="width: 560px">
                  <tr>
                        <th style="width:80px">순서</th>
                        <th style="width:80px">진료일</th>
                        <th style="width:80px">진료NO</th>
                        <th style="width:80px">담당의사</th>
                        <th style="width:80px">직책</th>
                        <th style="width:80px">진료과목</th>
                        <th style="width:80px">병명</th>
                        <th style="width:80px">처방내역</th>
                  </tr>
                  <tr>
                        <td>for문 돌릴곳</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                  </tr>
            </table>
      </div>
</div>