<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />
</head>
<body>
<ul class="kal-res-jh-reser-gnb">
		<li class="kal-res-jh-reser-gnb-logoBlock"><a id="kal-reservation-logo" class="kal-res-jh-reser-gnb-logoBlock" href="javascript:void(0)"><img src="${context}/resources/img/reservation/koreanAirLogo.png" alt="" /></a></li>	
		<li class="kal-res-jh-reser-gnb-calendarIconBlock"><img src="${context}/resources/img/reservation/calendar.png" alt="" /></li>
		<li class="kal-res-jh-reser-gnb-scheduleBlock">
			<span class="kal-res-jh-reser-gnb-placeInfo">ICN<img src="${context}/resources/img/reservation/roundTripIcon.png">HND</span>
			<span class="kal-res-jh-reser-gnb-dateInfo">2017-06.01 - 2017.06.30</span>
			<span class="kal-res-jh-reser-gnb-seatInfo">일반석</span>
			<button class="kal-res-jh-reser-gnb-backBtn">항공편 조회</button>
			<div class="kal-res-jh-reser-gnb-fareSelect"><span>운임/항공편 선택</span></div>
			<div class="kal-res-jh-reser-gnb-passengerInfo"><span>탑승객 정보</span></div>
			<div class="kal-res-jh-reser-gnb-payInfo"><span>결제 정보</span></div>
			<div class="kal-res-jh-reser-gnb-confirm"><span>확인</span></div>
		</li>
	</ul>
</body>
<script>
$('#kal-reservation-logo').on('click',function(){
	alert('메인 로고 클릭');
	location.href="${context}/";
});
$('.kal-res-jh-reser-gnb-backBtn').on('click',function(){
	alert('항공편 조회로 다시 돌아가시겠습니까 ?');
	location.href="${context}/reservation1"
});
</script>
</html>