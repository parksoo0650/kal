<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>(단계 3) 현재 진행 단계</title>
<meta charset="UTF-8"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />
</head>
<body>
<jsp:include page="/WEB-INF/views/common/sub-gnb-after-login.jsp" flush="false"/>
<jsp:include page="/WEB-INF/views/reservation/reservation-gnb.jsp" flush="false"/>
<div class="kal-res3-jh-wrapper">
<div class="kal-res3-jh-subwrapper">
	<div class="kal-res3-jh-toptext">
		<h2>탑승객 정보</h2>
		<p>예약 후 성명 변경은 <span>불가</span>합니다.<br/> 실제 탑승하실 분의 <span>회원가입시 여권에 기재된 영문 성명</span>이 불일치시 관리자에게 문의 바랍니다.</p>
	</div>
	
	<div class="kal-res3-jh-passengerinfo">
		<div class="kal-res3-jh-passengerinfo-box1">
			<span class="kal-res3-jh-passengerinfo-box1-aster">*</span><span class="kal-res3-jh-passengerinfo-box1-familynametext">성</span>
			<div class="kal-res3-jh-passengerinfo-box1-1">
				<input class="kal-res3-jh-familynameinput" type="text" /><span class="kal-res3-jh-familyname-span">HONG</span>
			</div>
			<span class="kal-res3-jh-passengerinfo-box1-aster">*</span><span class="kal-res3-jh-passengerinfo-box1-familynametext">이름</span>
			<div class="kal-res3-jh-passengerinfo-box1-2">
				<input class="kal-res3-jh-nameinput" type="text" /><span class="kal-res3-jh-name-span">GILDONG</span>
			</div>
			<span class="kal-res3-jh-passengerinfo-box1-familynametext">승객구분</span><span class="kal-res3-jh-passengerinfo-box1-gen">남자</span>
			
		</div>
		
		<div class="kal-res3-jh-middletext">
			<h2>연락처 정보</h2>
			<p>예약 후 휴대폰 변경은 <span>불가</span>합니다.<br/> 실제 탑승하실 분의 <span>회원가입시의 휴대폰 번호정보</span>가 불일치시 관리자에게 문의 바랍니다.</p>
		</div>
		
		<div class="kal-res3-jh-passengerinfo-box2">
			<span class="kal-res3-jh-passengerinfo-box1-aster">*</span><span class="kal-res3-jh-passengerinfo-box2-phonenotext">연락처</span>
			<input class="kal-res3-jh-phonenoinput" type="text" /><span class="kal-res3-jh-phoneno-span">010-1234-1234</span>
			<span class="kal-res3-jh-passengerinfo-box1-aster">*</span><span class="kal-res3-jh-passengerinfo-box2-emailtext">이메일</span>
			<input class="kal-res3-jh-phonenoinput" type="text" /><span class="kal-res3-jh-email-span">hong@gmail.com</span>
		</div>
		
		<div class="kal-res3-jh-noticebox">
				<span>유의 사항</span>
		</div>
		<div class="kal-res3-jh-noticecontents">
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
			<button class="kal-res3-jh-reser3submit">예매 진행하기</button>
		</div>
	</div>
</div>
</div>
</body>
<script>
		$('.kal-res3-jh-reser3submit').on('click',function(){
			alert('예매 진행하기 버튼 클릭');
			location.href="${context}/reservation4"
		});
		$('.kal-res-jh-reser-gnb-passengerInfo').css('text-decoration','underline');
</script>
</html>