<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />
<script>
function Check(x,y) {
	   for(i=1;i<=3;i++) { // 라디오 버튼의 갯수
	      z = "seat" + i ; // name 부분
	      document.all[z].src = "${context}/resources/img/reservation/radioBlank.png"; 
	   }
	      document.all[x].src = "${context}/resources/img/reservation/radioSelected.png";
	}
</script>
<title>항공권 예매 - 대한항공</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/sub-gnb-after-login.jsp" flush="false"/>
<jsp:include page="/WEB-INF/views/common/main-gnb.jsp" flush="false"/>	
<div id="kal-res1-jh-res-wrapper">
   <div class="kal-res1-jh-subWrapper">
		<div class="kal-res1-jh-bookingMainTitle">
			<h1>항공권 예매</h1>
		</div>
		<ul class="kal-res1-jh-bookingSubTitle">
			<li >
				<p class="kal-res1-jh-bookingSubTitle-domestic">국내선 항공편</p>
			</li>
			<li >
				<p class="kal-res1-jh-bookingSubTitle-international">국제선 항공편<span class="kal-res1-jh-checkIcon"></span></p>
			</li>
		</ul>
		<div class="kal-res1-jh-bookingBox">
				<div class="kal-res1-jh-commonResTitle">
					<span class="kal-res1-jh-commonRes" >일반 예매<span class="kal-res1-jh-checkBlue"></span></span>
					<span class="kal-res1-jh-bonusRes" >보너스 예매<span class="kal-res1-jh-checkWhite"></span></span>
				</div>
				<div class="kal-res1-jh-tripType">
					<img src="${context}/resources/img/reservation/radioBlank.png" name="seat1" onclick="Check(this.name,'')"><span>일반석</span>
					<img src="${context}/resources/img/reservation/radioBlank.png" name="seat2" onclick="Check(this.name,'')"><span>프레스티지석</span>
					<img src="${context}/resources/img/reservation/radioBlank.png" name="seat3" onclick="Check(this.name,'')"><span>일등석</span>
				</div>
				<div class="kal-res1-jh-tripDetails">					
					<input type="text" placeholder="출발지" class="kal-res1-jh-departureArea">
					<input type="text" placeholder="목적지" class="kal-res1-jh-arrivalArea">
					<input type="text" placeholder="가는날/오는날" class="kal-res1-jh-dateSelect">
				</div>
				<div>
					<a class="kal-res1-jh-departureArea-btn"></a>
					<a class="kal-res1-jh-arrivalArea-btn"></a>
					<a class="kal-res1-jh-dateSelect-btn"></a>
				</div>
				<div class="kal-res1-jh-selectSeatWrapper">
					<p>일등석, 프레스티지석, 일반석중에 원하는 좌석을 선택해주세요.</p>
					<button class="kal-res1-jh-selectSeat">좌석 선택</button>
				</div>
				<div class="kal-res1-jh-submitWrapper">
					<p>출발지, 목적지, 가는날/오는날, 좌석 선택은 필수 사항입니다.</p>
					<button  class="kal-res1-jh-submit">항공편 조회</button>
				</div>
		</div>
   </div>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp" flush="false"/>  
</body>
<script>
$('.kal-res1-jh-submit').on('click',function(){
	alert('항공편 조회 버튼 클릭');
	location.href='${context}/reservation2';
});
$('.kal-res1-jh-selectSeat').on('click',function(){
	alert('좌석 버튼 클릭');
	location.href='${context}/reservation_seat';
});
</script>
</html>