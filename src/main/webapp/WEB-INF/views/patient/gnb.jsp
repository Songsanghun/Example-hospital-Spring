<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div style="height: 70px;"></div>
<ul id="patGnb" class="gnb width_full_size" style="font-size: 15px; height: 38%; ">		
		<li><a href="${context}/home.do?action=move&page=main" class="text_no_underline">홈으로</a></li>
		<li><a href="${context}/patient.do?action=mypage&page=detail" class="text_no_underline">마이페이지</a></li>
		<li><a href="${context}/patient.do?action=move&page=treatmentList" class="text_no_underline">진료기록</a></li>
		<li><a href="${context}/board.do?action=move&page=articleList" class="text_no_underline">자유게시판</a></li>
		<li style="float:right"><a href="${context}/home.do?action=logout&page=main" class="text_no_underline">로그아웃</a></li>
		
</ul>