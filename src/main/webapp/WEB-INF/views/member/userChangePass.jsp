<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<head>
<meta charset="UTF-8" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- <script src="https://d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script> -->
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />

<title>마이페이지 비밀번호변경-대한항공</title>

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
  
      <div>
        <span class="kal-hy-changepass-txt1">비밀번호 변경</span>
      </div>
	<div>
        <span class="kal-hy-changepass-txt2">새로 사용할 비밀번호를 입력하여 주십시오.</span>
	</div>
<div class="kal-hy-changepass-box">
	<span class="kal-hy-changepass-txt3">현재 비밀번호<font class="kal-hy-changepass-txt-star">*</font></span>
	<br />
	<input class="kal-hy-changepass-input1" type="text" placeholder="현재 비밀번호"/>
	<br />
	<span class="kal-hy-changepass-conatianer-txt4" >새로운 비밀번호 <font class="kal-hy-changepass-txt-star">*</font></span>
	<br />
	<input class="kal-hy-changepass-input2" type="text" placeholder="새로운 비밀번호"/>
	<br />
	<span class="kal-hy-changepass-txt5" >새 비밀번호 확인 <font class="kal-hy-changepass-txt-star">*</font></span>
	<br />
	<input class="kal-hy-changepass-input3" type="text" placeholder="새 비밀번호 확인"/>
	<br />
</div>

	
	<input class="kal-hy-changepass-canclebtn" type="button" value="취소"/>
	<input class="kal-hy-changepass-canclebtn2" type="button" value="비밀번호 변경"/>
   </div>
<jsp:include page="/WEB-INF/views/common/footer.jsp" flush="false"/>  
</body>

</html>