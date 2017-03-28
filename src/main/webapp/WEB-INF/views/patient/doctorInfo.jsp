<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<style>
.wrap1 {
   width:100%;
}
.wrap2 {
   width:500px;
   margin:0 auto;
   text-align:right;
}
.wrap3{
   width:500px;
   margin:5px auto;
   text-align:center;
}
.redb:link, .redb:visited {
    background-color: #c6c6c6;
    color: white;
    padding: 10px 60px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    
}


.redb:hover, .redb:active {
    background-color: #909090;
}

</style>


<div style="height:100px"></div>
<div id="container" class="width_full_size" style="height:700px;" >
<div class="width_full_size" style="margin:100px auto;">
<div class="wrap1">
   <div class="wrap2">
      <a href="">목록으로</a>
   </div>
</div>

<table class="table_default margin_center" style="width:500px;">
   <tr>
      <td rowspan="4"><img src="${context.img}/common/User.jpg" style="width:300px; height:300px;"/></td>
      <td>의사이름</td>
      <td>000601</td>
   </tr>
   <tr>
      
      <td>담당과</td>
      <td>내과</td>
   </tr>
   <tr>
   
      <td>성별</td>
      <td>M</td>
   </tr>
   <tr>   
   
      <td>전화번호</td>
      <td>011-222-0987</td>
   </tr>
   <tr>
      <td>안성기 과장</td>
      <td>e-mail</td>
      <td>ask@hanbh.com</td>
      
   </tr>
</table>
<div class="wrap1">
   <div class="wrap3">
      <a href="" class="redb">버튼1</a>
      <a href="" class="redb" style="margin:0 17px;">버튼2</a>
      <a href="" class="redb">버튼3</a>
   </div>
</div>
</div>
</div>
<p class="border_solid"></p>
   <div id="footer" class="width_full_size" style="height:20px;">
      <dl class="notice">
      <!--    <dt><a href="/NOTICE" class="h_notice">공지사항</a></dt> -->
      </dl>
   <p class="svc_all">
   </p>
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
</body>
</html>