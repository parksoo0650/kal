<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<!-- <script src="https://d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script> -->
<link rel="stylesheet" href="${context}/resources/css/reset.css">
<link rel="stylesheet" href="${context}/resources/css/kal.css"/>
<title>MY PAGE modify</title>
<head>

</head>
<body>
<jsp:include page="/WEB-INF/views/common/sub-gnb-before-login.jsp" flush="false"/>
<jsp:include page="/WEB-INF/views/common/main-gnb.jsp" flush="false"/>	

<div class="kal-hy-mypage-container">
	<div class="kal-hy-mypage-container-title">
 	 <h1>마이페이지</h1>
    </div>
		<span><font color="orange">*</font><font>영문이름은 여권상의 이름과 동일하게 입력하여 주시기 바랍니다.</font></span>

        <jsp:include page="/WEB-INF/views/member/member-gnb.jsp" flush="false"/>
	 <jsp:include page="/WEB-INF/views/member/member-navi.jsp" flush="false"/>	
      <div >
         <h2 class="kal-hy-userInfo-txt1">회원정보 보기</h2><br />
         <div style="position:relative;left: 30px; ">
          <span class="kal-hy-userInfo-txt2">홍길동 </span><br />
          <span class="kal-hy-userInfo-txt2">HONG/GIL DONG</span>
         </div>


<div><p class="kal-hy-userInfo-div">고객 정보</p></div>
<div class="kal-hy-userInfo-detail">
<span><font class="kal-hy-userInfo-subTitle">한글 성<font class="kal-hy-userInfo-star">*</font></font></span><br />
<span><input class="kal-hy-userInfo-input-text" type="text" /></span><br />
<span><font class="kal-hy-userInfo-subTitle">한글 이름<font class="kal-hy-userInfo-star">*</font></font></span><br />
<input class="kal-hy-userInfo-input-text" type="text" /><br />
<span><font class="kal-hy-userInfo-subTitle">영문 성<font class="kal-hy-userInfo-star">*</font></font></span><br />
<input class="kal-hy-userInfo-input-text"  type="text" /><br />
<span><font class="kal-hy-userInfo-subTitle">영문 이름<font class="kal-hy-userInfo-star">*</font></font></span><br />
<input class="kal-hy-userInfo-input-text"  type="text" /><br />
<span><font class="kal-hy-userInfo-subTitle">생년월일<font class="kal-hy-userInfo-star">*</font></font></span><br />
<span class="kal-hy-userInfo-birthBox-position"><input class="kal-hy-userInfo-birthBox"  type="text" placeholder="년" /></span>
<span class="kal-hy-userInfo-birthBox-position"><input class="kal-hy-userInfo-birthBox"  type="text" placeholder="월" /></span>
<span class="kal-hy-userInfo-birthBox-position"><input class="kal-hy-userInfo-birthBox"  type="text" placeholder="일" /></span><br />
<span><font class="kal-hy-userInfo-subTitle">성별<font style="color: orange">*</font></font></span><br />
<span><input type="radio" name="gen" value="M" checked="checked"/>남</span>
<span><input type="radio" name="gen" value="F"/>여</span><br />
<span><font class="kal-hy-userInfo-subTitle">전화번호</font><font color="orange">*</font></span><br />
<input class="kal-hy-userInfo-input-text" type="text" /><br />
<span><font class="kal-hy-userInfo-subTitle">주소</font><font color="orange">*</font></span><br />
<input class="kal-hy-userInfo-input-text" type="text" /><br />
</div>
<div class="kal-hy-userInfo-loginBox"><p class="kal-hy-userInfo-loginBox-font">로그인 정보</p></div>
<div class="kal-hy-userInfo-loginBox">
<span><button class="kal-hy-userinfo-register-btn">회원가입</button></span>
</div>
<div class="kal-hy-mypage-user-empty">
</div>
</div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp" flush="false"/> 
</body>

</html>