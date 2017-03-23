<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<link rel="stylesheet" href="../../css/hanbit.css" />
</head>
<body>
<div id="wrapper" class="width_full_size">
<div id="header" class="width_full_size position_fix;" style="height:120px;">
	<div class="logo_box width_full_size text_center" style="height: 60%">
	<a href="../../index.html"><img src="../../images/common/index_logo.png" style="margin-top:20px;"></a>
	</div>
	<ul class="gnb width_full_size" style="font-size: 15px; height: 38%">
		<li><a href="../common/join.html" class="text_no_underline">회원가입</a></li>
		<li><a href="../common/login.html" class="text_no_underline">로그인</a></li>
		<li><a href="../bbs/bbs_list.html" class="text_no_underline">자유게시판</a></li>
		<li class="dropdown"><a href="admin.html" class="text_no_underline">관리자</a>
			<div class="dropdown_content text_left" style="color:black">
				<p><a href="" class="text_no_underline">의 사</a></p>
				<p><a href="" class="text_no_underline">간호사</a></p>
				<p><a href="" class="text_no_underline">환 자</a></p>
				<p><a href="" class="text_no_underline">차 트</a></p>
			</div>
		</li>	
	</ul>
	</div>
<div style="height: 120px;"></div>
<div id="container" class="width_full_size" style="height:700px;">
	<ul class="lnb" style="float: left; width: 20%; margin-top:10px;">
	  <li><a class="active" href="#home">의사</a></li>
	  <li><a href="#news">간호사</a></li>
	  <li><a href="#contact">환자</a></li>
	  <li><a href="#about">진료</a></li>
	  <li><a href="#about">차트</a></li>
	</ul>
<div class="text_center">
	<table class="table_default margin_center" style="width:78%; font-size: 14px; margin-top:10px;">
		<tr>
			<th colspan="5" class="text_center color_white" style="height: 30px; background-color: #808080;">현 황</th>
		</tr>
		<tr>
		<tr>
			<td colspan="5">
			<table class="table_default table_even width_full_size" style="height:180px;">
				<tr class="bg_color_black color_white">
					<th class="text_center" style="vertical-align:middle">순 서</th>
					<th class="text_center" style="vertical-align:middle">의사번호</th>
					<th class="text_center" style="vertical-align:middle">전 공</th>
					<th class="text_center" style="vertical-align:middle">이 름</th>
					<th class="text_center" style="vertical-align:middle">성 별</th>
					<th class="text_center" style="vertical-align:middle">전화번호</th>
					<th class="text_center" style="vertical-align:middle">이메일</th>
					<th class="text_center" style="vertical-align:middle">직 급</th>
				</tr>
				<tr>
					<td class="text_center">1</td>
					<td>980312</td>
					<td>소아과</td>
					<td>이태정</td>
					<td>M</td>
					<td>010-333-1340</td>
					<td>ltj@hanbh.com</td>
					<td>과장</td>
				</tr>
				<tr>
					<td class="text_center">2</td>
					<td>000601</td>
					<td>내과</td>
					<td><a href="detail.html">안성기</a></td>
					<td>M</td>
					<td>011-222-0987</td>
					<td>ask@hanbh.com</td>
					<td>과장</td>
				</tr>
				<tr>
					<td class="text_center">3</td>
					<td>001208</td>
					<td>외과</td>
					<td>김민종</td>
					<td>M</td>
					<td>010-333-8743</td>
					<td>kmj@hanbh.com</td>
					<td>과장</td>
				</tr>
				<tr>
					<td class="text_center">4</td>
					<td>020403</td>
					<td>피부과</td>
					<td>이태서</td>
					<td>M</td>
					<td>019-777-3764</td>
					<td>its@hanbh.com</td>
					<td>과장</td>
				</tr>
				<tr>
					<td class="text_center">5</td>
					<td>050900</td>
					<td>소아과</td>
					<td>김연아</td>
					<td>F</td>
					<td>010-555-3746</td>
					<td>kya@hanbh.com</td>
					<td>전문의</td>
				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<th colspan="5">
			<div class="text_center" style="margin-top:20px;">
			<ul class="pagination">
		  		<li><a href="#">«</a></li>
		  		<li><a class="active" href="#">1</a></li>
		  		<li><a href="#">2</a></li>
		  		<li><a href="#">3</a></li>
		  		<li><a href="#">4</a></li>
		  		<li><a href="#">5</a></li>
		  		<li><a href="#">6</a></li>
		  		<li><a href="#">7</a></li>
		  		<li><a href="#">»</a></li>
			</ul>
			</div>
			</th>
		</tr>
	</table>
	</div>
	</div>
<div id="footer" class="width_full_size" style="height:100px; border-top:2px solid #5a5a5a;">
	<dl class="notice">
		<dt><a href="/NOTICE" class="h_notice">공지사항</a></dt>
	</dl>
	<dl class="policy">
		<dd class="f"><a href="http://www.navercorp.com/" target="_blank" id="plc.intronhn">회사소개</a></dd>
		<dd><a href="http://mktg.naver.com/" id="plc.adinfo">광고</a></dd>
		<dd><a href="https://submit.naver.com/" id="plc.search">마이비즈니스</a></dd>
		<dd><a href="https://www.navercorp.com/ko/company/proposalGuide.nhn" target="_blank" id="plc.contact">제휴제안</a></dd>
		<dd><a href="rules/service.html" id="plc.service">이용약관</a></dd>
		<dd><a href="rules/privacy.html" id="plc.privacy"><strong>개인정보처리방침</strong></a></dd>
		<dd><a href="rules/youthpolicy.html" id="plc.youth">청소년보호정책</a></dd>
		<dd><a href="rules/spamcheck.html" id="plc.policy">네이버 정책</a></dd>
		<dd><a href="https://help.naver.com/" id="plc.helpcenter">네이버 고객센터</a></dd>
	</dl>
	<address>&copy; <strong><a href="http://www.navercorp.com/" target="_blank">NAVER Corp.</a></strong></address>
	</div>
</div>
</body>
</html>