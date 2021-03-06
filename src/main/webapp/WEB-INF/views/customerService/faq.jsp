<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="${context}/resources/js/controller.board.js"></script>
<style>
	.kal-ss-faq-btnAll-style{
		width: 90%;
		margin-left: 70px;
	}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/sub-gnb-after-login.jsp" flush="false"/>
<div id="kal-faq-ss-img" class="kal-faq-ss-bg">
<div class="kal-faq-ss-title">
	<h2>FAQ</h2>
</div>
	<div id="wrapper" class="kal-faq-ss-wrapper">
			<div class="kal-faq-ss-h2">
			질문하기
			</div>
			<div class="kal-faq-ss">
			<form action="" class="kal-faq-ss-form">
			<div class="kal-faq-ss-formstyle">
				<label for="category-select" class="kal-faq-ss-label">상위분류</label>
				<div class="kal-faq-ss-align">
					<select name="" id="category-select" class="kal-faq-ss-select-style">
						<option value="전체">전체</option>
						<option value="스카이페스와 마일리지">스카이패스와 마일리지</option>
						<option value=""></option>
						<option value=""></option>
						<option value=""></option>
						<option value=""></option>
					</select>
					</div>
				</div>
					<div class="kal-faq-ss-spacebar">
					<label for="category-select" class="kal-faq-ss-label">하위분류</label>
					<div>
					<select name="" id="category-subselect" class="kal-faq-ss-select-style">
						<option value="전체">전체</option>
						<option value="스카이페스와 마일리지">스카이패스와 마일리지</option>
						<option value=""></option>
						<option value=""></option>
						<option value=""></option>
						<option value=""></option>
					</select>
				</div>
				</div>
				<div>
					<button class="kal-search-ss-button">검색
					<span class="kal-search-ss-button-image"></span>
					</button>
				</div>
				<div class="kal-search-ss-contanier">
				<div class="kal-faq-ss-bar"></div>
				<div>
					<label for="faq-search" class="kal-faq-ss-searchlabel">FAQ 검색하기</label>
					<span class="kal-faq-ss-holder" id="faq-search">수하물, 스카이패스 등</span>
					<input type="text"  class="kal-faq-ss-search" aria-describedby="faq-search"/>
					</div>			
				<button class="kal-search-ss-button-submit"></button>
			</div>
		</form>
			<div class="kal-ss-faq-btnAll-style">
				<button id="kal-all-ss-button" class="kal-search-ss-button-all">질문하기
				<span></span>	
				</button>
			</div>
			<div id="kal-faq-ss-container"  class="kal-faq-ss-list-border">
			</div>
			</div>
			
			</div>
		
	</div>
	<%-- <jsp:include page="/WEB-INF/views/common/footer.jsp" flush="false"/>   --%>
</body>
<script>
//board.context.init('${context}');
/* $(function(){
	$('#kal-all-ss-button').on('click',function(){
		alert('FAQ 리스트');
		location.href='${context}/faqList';
	});
}); */
</script>
</html>	