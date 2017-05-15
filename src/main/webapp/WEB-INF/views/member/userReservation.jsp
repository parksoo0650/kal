<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />
<title>나의예약 - 대한항공</title>

</head>
<body>
<jsp:include page="/WEB-INF/views/common/sub-gnb-before-login.jsp" flush="false"/>
<jsp:include page="/WEB-INF/views/common/main-gnb.jsp" flush="false"/>
<div class="kal-hy-mypage-container">
	<div class="kal-hy-mypage-container-title">
	  	 <h2>마이페이지</h2>
    </div>
   <jsp:include page="/WEB-INF/views/member/member-gnb.jsp" flush="false"/>
	 <jsp:include page="/WEB-INF/views/member/member-navi.jsp" flush="false"/>	
	   <div class="kal-hy-mypage-subwrapper">
	   <p class="kal-hy-mypage-subwrapper-title">나의 예약</p><br />
	   <span class="kal-hy-mypage-subwrapper-text"> 홈페이지에서 로그인 후 구매한 예약/항공권 및 로그인한 회원의 스카이패스 번호가 반영된 예약/항공권 목록을 보여 드립니다. </span>
	   <span class="kal-hy-mypage-subwrapper-text">고객님의 예약 및 항공권 구매 기록은 시스템 사정으로 간혹 다소 지연되어 나타나는 경우가 있으니 잠시후에 확인하여 주시면 감사하겠습니다. </span>
	      <div class="bookingMainTitle">
		      <div>
			      <ul class="kal-hy-mypage-bookingSubTitle">
			         <li >
			            <p class="kal-hy-mypage-active">예약 조회<span class="checkIcon"></span></p>
			         </li>
			         <li >
			            <p class="kal-hy-mypage-noneActive">항공권 조회</p>
			         </li>
			      </ul>
				  <div class="bookingBox">
					  <div class="kal-hy-mypage-subwrapper-texbox">
				        <span class="kal-hy-mypage-subwrapper-text">º 예약목록에서는 남은 여정 중 첫 구간만 표시해 드리며, 상태 정보는 단순 참고용이므로 정확한 예약 정보 확인을 위하여 반드시 예약번호를 클릭하여 </span>
				        <span class="kal-hy-mypage-subwrapper-text"> 조회하시기 바랍니다. 각 항목명을 클릭하여 정렬하실 수 있습니다.</span>
				       </div>
				      <div class="kal-hy-mypage-reservation-menu">
					      <ul>
					      <li><span>예약번호</span></li>
					      <li><span>이름</span></li>
					      <li><span>출발</span></li>
					      <li><span>도착</span></li>
					      <li><span>좌석</span></li>
					      <li><span>상태</span></li>
						   </ul>
				      </div>
				     
				      
			      </div>
		      </div>
	      </div>
	   </div>
   </div>
<jsp:include page="/WEB-INF/views/common/footer.jsp" flush="false"/>
</body>

</html>