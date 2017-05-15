<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>(단계 4) 현재 진행 단계</title>
<meta charset="UTF-8"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />
</head>
<body>
<jsp:include page="/WEB-INF/views/common/sub-gnb-after-login.jsp" flush="false"/>
<jsp:include page="/WEB-INF/views/reservation/reservation-gnb.jsp" flush="false"/>
<div class="kal-res4-jh-wrapper">
<div class="kal-res4-jh-subwrapper">
	<div class="kal-res4-jh-toptext">
		<h2>결제</h2>
		<p>결제 페이지입니다.<br/><span>실제 금액 결제 없이 </span>결제되는 페이지입니다.</p>
	</div>
	
	<div class="kal-res4-jh-noticebox-wrapper">
		
		<div class="kal-res4-jh-textbox">
				<span>운임규정</span>
		</div>
		<div class="kal-res4-jh-textbox-contents">
			<p>최대 체류 기간 : 여행 개시일로부터 최대<span> 3개월</span></p>
			<p>유효기간 연장 : <span>불가</span></p>
			<p>출발편 변경 : <span>불가</span></p>
			<p>스카이패스 마일리지 적립 : <span>불가</span></p>
			<p>스카이패스 마일리지 업그레이드 : <span>불가</span></p>
			<p>비동반 소아 서비스 : <span>불가</span></p>
			<p>예약 부도 위약금 : <span>없음</span></p>
			
			<div class="kal-res4-jh-checkbox">			
			구매 항공권의 운임 규정과 운송약관을 꼭 확인하세요. <span> *</span><br/>
			요금 또는 세금이 인상 될 경우, 그에 따른 차액을 지불함을 꼭 숙지하세요. <span> *</span>
			</div>
			
			
		</div>
		
		<div class="kal-res4-jh-noticebox">
				<span>유의 사항</span>
		</div>
		<div class="kal-res4-jh-noticecontents">
			<p>마일리지 적립은 현재 웹에서는 제공하지 않습니다.</p>
			<p>선택하신 여정에 따라 비자 및 기타 여행에 필요한 서류가 필요합니다.</p>
			<p>항공편 스케줄 및 기종은 부득이한 사유로 예고없이 변경될 수 있습니다.</p>
		</div>
	</div>
	
	<div class="kal-res3-jh-confirmbox">
		<div class="kal-res3-jh-confirmbox-toptext">전체 예약 정보</div>
		<div class="kal-res3-jh-confirmbox-box1">
			<div class="kal-res3-jh-confirmbox-box1-text1"><span>ICN</span> → <span>HND</span></div>
			<p>2017.06.01(목) ∥ 20:30 - 22:50</p>
			<div class="kal-res3-jh-confirmbox-box1-text2"><span>HND</span> → <span>ICN</span></div>
			<p>2017.06.30(금) ∥  02:30 - 04:30</p>
			<button class="kal-res3-jh-detailbtn">일정 상세보기</button>
		</div>
		<div class="kal-res3-jh-confirmbox-box2">
			<div class="kal-res3-jh-confirmbox-box2-text1"><span>항공 운송료</span></div>
			<p>운임 <span>500,000 원</span></p>
			<p>유류할증료 <span>0 원</span></p>
			<p class="kal-res3-jh-confirmbox-box2-text1-price">항공운임 총액 <span>500,000 원</span></p>
			<p>세금 및 수수료를 포함한 금액입니다.</p>
			<button class="kal-res4-jh-submitbtn">예매 진행하기</button>
		</div>
	</div>
</div>
</div>
</body>
<script>
$('.kal-res4-jh-submitbtn').on('click',function(){
	alert('예매 진행하기 버튼 클릭');
	location.href="${context}/reservation5"
});
$('.kal-res-jh-reser-gnb-payInfo').css('text-decoration','underline');
</script>
</html>