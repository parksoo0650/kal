<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- <script src="https://d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script> -->
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />
<title>MY PAGE modify</title>
<head>

</head>
<body>
<jsp:include page="/WEB-INF/views/common/sub-gnb-before-login.jsp" flush="false"/>
<jsp:include page="/WEB-INF/views/common/main-gnb.jsp" flush="false"/>	
<div class="kal-hy-mypage-container">
	<div>
		<h1 class="kal-hy-mypage-container-title">마이페이지</h1>
	</div>

	      <jsp:include page="/WEB-INF/views/member/member-gnb.jsp" flush="false"/>
	 <jsp:include page="/WEB-INF/views/member/member-navi.jsp" flush="false"/>	

   <div class="kal-hy-mypage-user-withdraw-con">
	   <div class="kal-hy-mypage-user-withdraw1">
		   	<h1>회원 탈퇴</h1>
		   	<div class="kal-hy-mypage-user-withdraw1-sentence">
			   	<p><strong>그동안 저희 대한항공 사이트를 이용하여 주셔서 감사합니다.</strong></p>
			   	<p>사람을 향합니다. Excellence in Flight, Korean Air.</p>
		   	</div>
	   </div>
	   	
	   <div class="kal-hy-mypage-user-withdraw2">
	   <span>비밀번호 입력</span><br />
	   	<input type="password" placeholder="비밀번호"/>
	  	<input type="button" class="button" value="인터넷 회원탈퇴"/>
	   </div>
	   
   </div>
	<div class="kal-hy-mypage-user-empty">
	</div>

</div>
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp" flush="false"/>

</html>