<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
     <ul id="patientGnb">
         <li><a>홈으로</a></li>
         <li><a>마이페이지</a></li>
         <li><a>진료기록</a></li>
         <li><a>게시판</a></li>
         <li><a>로그아웃</a></li>
         <li><a>탈퇴</a></li>
   </ul>
   <script>
   
   $(function goPage(){
      $('#patientGnb').addClass('gnb').css('height','40px')
      $('#patientGnb li:nth-child(1)').click(function(){
         alert('child 1');
         location.href="${context.path}/patient";
      });
      $('#patientGnb li:nth-child(2)').click(function(){
         alert('child2');
         location.href="${context.path}/patient/goUpdate";
      });
      $('#patientGnb li:nth-child(3)').click(function(){
         alert('child3');
         location.href="${context.path}/patient";
      });
      $('#patientGnb li:nth-child(4)').click(function(){
         alert('child4');
         location.href="${context.path}/board";
      });
      $('#patientGnb li:nth-child(5)').click(function(){
         alert('child5');
         location.href="${context.path}/logout";
      });
      $('#patientGnb li:nth-child(6)').click(function(){
          alert('child5');
          location.href="${context.path}/patient/goDelete";
       });
   });
   </script>