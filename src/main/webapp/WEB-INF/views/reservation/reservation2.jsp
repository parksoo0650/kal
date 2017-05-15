<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>(단계 2) 현재 진행 단계</title>
<meta charset="UTF-8"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />
</head>
<body>
<jsp:include page="/WEB-INF/views/common/sub-gnb-after-login.jsp" flush="false"/>
<jsp:include page="/WEB-INF/views/reservation/reservation-gnb.jsp" flush="false"/>
<div id="kal-res2-jh-res-wrapper">
   <div class="kal-res2-jh-subWrapper">

		<ul class="kal-res2-jh-mainTitle">
			<li >
				<p class="kal-res2-jh-mainTitle-text1">운임 기준</p>
			</li>
			<li >
				<p class="kal-res2-jh-mainTitle-text2">스케줄 기준</p>
			</li>
		</ul>
		<div class="kal-res1-jh-bookingBox">
			<div class="kal-res2-jh-paragraph1">
				<h2>항공편 정보</h2>
				<p>항공편은 현재 예약 가능한 항공편 스케줄만 제공됩니다.</p>
				<div class="kal-res2-jh-paragraph1-box">
					<div class="kal-res2-jh-paragraph1-leftbox">
						<div class="kal-res2-jh-paragraph1-leftbox-info"><span>서울/인천(ICN)</span> → <span>도쿄/하네다(HND)</span></div>
						<div class="kal-res2-jh-paragraph1-leftbox-subinfo">
							<span class="kal-res2-jh-paragraph1-leftbox-subinfo-1">2017.06.01(목) ∥ </span>
							<span class="kal-res2-jh-paragraph1-leftbox-subinfo-2">20:30 - 22:50  ∥ </span>
							<span class="kal-res2-jh-paragraph1-leftbox-subinfo-3">직항편</span>
						</div>
						<div class="kal-res2-jh-paragraph1-leftbox-flightinfo">
							KOREAN AIR ∥ Boeing 777 - 200 ER 
						</div>
					</div>
					<div class="kal-res2-jh-paragraph1-rightbox">
						<div class="kal-res2-jh-paragraph1-rightbox-info"><span>도쿄/하네다(HND)</span> → <span>서울/인천(ICN)</span></div>
						<div class="kal-res2-jh-paragraph1-rightbox-subinfo">
							<span class="kal-res2-jh-paragraph1-rightbox-subinfo-1">2017.06.30(금) ∥ </span>
							<span class="kal-res2-jh-paragraph1-rightbox-subinfo-2">02:30 - 04:30  ∥ </span>
							<span class="kal-res2-jh-paragraph1-rightbox-subinfo-3">직항편</span>
						</div>
						<div class="kal-res2-jh-paragraph1-leftbox-flightinfo">
							KOREAN AIR ∥ Boeing 777 - 200 ER 
						</div>
					</div>
				</div>
			</div>
			<div class="kal-res2-jh-paragraph2">
				<h2>운임 정보</h2>
				<p>예약 가능한 운임 목록입니다. 운임 규정을 확인해 주세요.</p>
				<div class="kal-res2-jh-paragraph2-icon">
					<span class="kal-res2-jh-paragraph2-icon-v">가능</span>
					<span class="kal-res2-jh-paragraph2-icon-x">불가</span>
				</div>
				<table>
					<tr class="firstcol">
						<td>운임종류(1인)</td>
						<td>출발 변경</td>
						<td>도착 변경</td>
						<td>환불</td>
						<td>좌석 승급</td>
						<td>마일리지 적립</td>
					</tr>
					<tr>
						<td>500,000 원</td>
						<td><img src="${context}/resources/img/reservation/reser2-x.png"/></td>
						<td><img src="${context}/resources/img/reservation/reser2-x.png"/></td>
						<td><img src="${context}/resources/img/reservation/reser2-v.png"/></td>
						<td><img src="${context}/resources/img/reservation/reser2-x.png"/></td>
						<td><img src="${context}/resources/img/reservation/reser2-x.png"/></td>
					</tr>
				</table>
			</div>
		</div>
		<div class="kal-res2-jh-confirmbox">
			<div class="kal-res2-jh-confirmbox-info">
				<span>유의 사항</span>
			</div>
			<div class="kal-res2-jh-confirmbox-contents">
				<p>무료수하물 허용량을 초과하는 경우 추가 요금이 발생할 수 있습니다.</p>
				<p>예매 단계에서 제공되는 항공편과 운임은 조회 시점에 예약 가능한 항공편 스케줄과 운임만 제공됩니다.</p>
				<p>항공편 스케줄 및 기종은 부득이한 사유로 예고없이 변경될 수 있습니다.</p>
			</div>
		</div>
		<div>
			<div class="kal-res2-jh-submitbox">
				<div class="kal-res2-jh-submitbox-info">항공운임 등 총액</div>
					<p class="kal-res2-jh-submitbox-price">500,000 원</p>
					<p class="kal-res2-jh-submitbox-text">세금 및 수수료까지 포함한 금액입니다.</p>
					<button  class="kal-res2-jh-submit">예매 진행하기</button>
			</div>
		</div>
   </div>
</div>
	
</body>
<script>
		$('.kal-res2-jh-submit').on('click',function(){
			alert('예매 진행하기 버튼 클릭');
			location.href="${context}/reservation3"
		});
		$('.kal-res-jh-reser-gnb-fareSelect').css('text-decoration','underline');
</script>
</html>