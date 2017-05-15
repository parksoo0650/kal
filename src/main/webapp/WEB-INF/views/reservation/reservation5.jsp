<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />
<title>(단계 5) 현재 진행 단계</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/sub-gnb-after-login.jsp" flush="false"/>
<jsp:include page="/WEB-INF/views/reservation/reservation-gnb.jsp" flush="false"/>
</body>
<div class="kal-res5-jh-wrapper">
<div class="kal-res5-jh-subwrapper">
	<div class="kal-res5-jh-toptext">
		<h2>e-티켓 확인증</h2>
		<p>확인 페이지입니다.<br/><span>예약 결제된 정보 </span>가 표시되는 페이지입니다.</p>
	</div>

	<div class="kal-res5-jh-passengerinfotext">
		<span>승객 정보</span>
	</div>
	<div class="kal-res5-jh-passengerinfocontents">
		<p class="kal-res5-jh-passengerinfocontents-name">승객성명 / Passenger Name</p>
		<p class="kal-res5-jh-passengerinfocontents-name-1">HONG GILDONG</p>
		<p class="kal-res5-jh-passengerinfocontents-gender">승객구분 / Passenger Sex</p>
		<p class="kal-res5-jh-passengerinfocontents-gender-1">MALE</p><br/>
	</div>
	
	<div class="kal-res5-jh-flightinfotext">
		<span>여정 정보</span>
	</div>
	<div class="kal-res5-jh-kal-res5-jh-flightinfocontents">
		<p>Itinerary</p>
		<span class="kal-res5-jh-kal-res5-jh-flightinfocontents-flight">KOREAN AIR ∥ Boeing 777 - 200 ER </span>
		<span class="kal-res5-jh-kal-res5-jh-flightinfocontents-1">서울/인천(ICN)</span> → <span>도쿄/하네다(HND) ∥ </span>
		<span class="kal-res5-jh-kal-res5-jh-flightinfocontents-2">2017.06.01(목) ∥ </span>
		<span class="kal-res5-jh-kal-res5-jh-flightinfocontents-3">20:30 - 22:50  ∥ </span>
		<span>직항편</span>
		<p>Itinerary</p>
		<span class="kal-res5-jh-kal-res5-jh-flightinfocontents-flight">KOREAN AIR ∥ Boeing 777 - 200 ER </span>
		<span class="kal-res5-jh-kal-res5-jh-flightinfocontents-4">도쿄/하네다(HND)</span> → <span>서울/인천(ICN) ∥ </span>
		<span class="kal-res5-jh-kal-res5-jh-flightinfocontents-5">2017.06.30(금) ∥ </span>
		<span class="kal-res5-jh-kal-res5-jh-flightinfocontents-6">02:30 - 04:30  ∥ </span>
		<span>직항편</span>
		<button  class="kal-res5-jh-submit">메인으로</button>
	</div>
</div>
</div>
<script>
$('.kal-res5-jh-submit').on('click',function(){
	alert('메인페이지로 다시 돌아가시겠습니까 ?');
	location.href="${context}/"
});
$('.kal-res-jh-reser-gnb-confirm').css('text-decoration','underline');
</script>
</html>