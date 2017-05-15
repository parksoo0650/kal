<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- <script src="https://d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script> -->

<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />
<title>마이페이지 회원정보-대한항공</title>

</head>
<body>
<jsp:include page="/WEB-INF/views/common/sub-gnb-before-login.jsp" flush="false"/>
<jsp:include page="/WEB-INF/views/common/main-gnb.jsp" flush="false"/>	
<div class="kal-hy-mypage-container">
	<div class="kal-hy-mypage-container-title">
		<h1>마이페이지</h1>
	</div>
     <jsp:include page="/WEB-INF/views/member/member-gnb.jsp" flush="false"/>
	 <jsp:include page="/WEB-INF/views/member/member-navi.jsp" flush="false"/>	

      <div class="kal-hy-mypage-container4">
         <h2 class="kal-hy-userInfo-txt1">회원정보 보기</h2><br />
         <div class="kal-hy-userInfo-txt2"> <!-- style="position:relative;left: 30px; " -->
          <span >홍길동 </span><br />
          <span >HONG/GIL DONG</span>
         </div>
         
         <hr id="hr" >
         <div >
	         	<span class="kal-hy-userInfo-txt3" >이메일 주소</span>
                <span class="kal-hy-userInfo-txt4">hong@test.com</span> 
	         	<span class="kal-hy-userInfo-txt5">주소</span>
	            <span class="kal-hy-userInfo-txt6" >서울시 세종로 1</span>
         </div>
         <hr id="hr" />
         <span class="kal-hy-userInfo-txt7" >전화번호</span>
         <span class="kal-hy-userInfo-txt8" >010-1234-5678</span>            
      </div>
      
</div>
</body>

<jsp:include page="/WEB-INF/views/common/footer.jsp" flush="false"/>  

</html>