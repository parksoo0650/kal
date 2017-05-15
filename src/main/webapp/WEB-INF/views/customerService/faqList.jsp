<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />

</head>
<body>
<jsp:include page="/WEB-INF/views/common/sub-gnb-after-login.jsp" flush="false"/>
<div id="kal-faq-ss-img" class="kal-faq-ss-bg">
<div class="kal-faq-ss-title">
	<h2>FAQ</h2>
</div>
	<div class="kal-faq-ss-wrapper">
			<div class="kal-faq-ss-h2">
			<h2>자주 묻는 질문</h2>
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
			<button id="kal-all-ss-button" class="kal-search-ss-button-all" type="button">전체 보기
			<span></span>
			</button>
			</form>
			<div id="container">
			</div>
				<ul class="kal-result-ss-count">
					<li>전체
					<span class="kal-result-ss-before"></span>
					</li>
					<li>전체</li>
					<li>(268)</li>
				</ul>
			</div>
			<div class="kal-faq-ss-list-border">
			<ul class=" kal-list-ss-ul">
				<li class="kal-list-ss-li">
					<a href="javascript:void(0);" id="kal-faqList-a">
					Q1. : 모닝캄 프리미엄 클럽 회원이 보너스 항공권을 구매하는 경우 성수기에도 비수기 마일리지가 적용된다는데, 가족도 동일하게 비수기 마일리지를 적용 받을 수 있나요?
					<span class="kal-list-ss-plus"></span>
					</a>
					
					<div id="kal-faq-ss-answer" class="kal-list-ss-answer">
					<div>
					<span>A:</span>
					<span class="kal-list-ss-ans">Answer</span>
						<p>모닝캄 프리미엄 회원이 가족에게 마일리지를 양도해 보너스를 발급하는 경우에만 비수기 마일리지를 적용할 수 있습니다. </p>
						</div>
					</div>
				</li>
				<li class="kal-list-ss-li">
					<a href="javascript:void(0);" id="kal-faqList-a1">
					Q2. : 모닝캄 프리미엄 클럽 회원이 보너스 항공권을 구매하는 경우 성수기에도 비수기 마일리지가 적용된다는데, 가족도 동일하게 비수기 마일리지를 적용 받을 수 있나요?
					<span class="kal-list-ss-plus"></span>
					</a>
				
					<div id="kal-faq-ss-answer1" class="kal-list-ss-answer">
					<div tabindex="-1">
					<span>A:</span>
					<span class="kal-list-ss-ans">Answer</span>
						<p>모닝캄 프리미엄 회원이 가족에게 마일리지를 양도해 보너스를 발급하는 경우에만 비수기 마일리지를 적용할 수 있습니다. </p>
						</div>
					</div>
				</li>
				<li class="kal-list-ss-li">
				<a href="javascript:void(0);" id="kal-faqList-a2" tabindex="-1">
					Q3. : 모닝캄 프리미엄 클럽 회원이 보너스 항공권을 구매하는 경우 성수기에도 비수기 마일리지가 적용된다는데, 가족도 동일하게 비수기 마일리지를 적용 받을 수 있나요?
					<span class="kal-list-ss-plus"></span>
					</a>
				
					<div id="kal-faq-ss-answer2" class="kal-list-ss-answer">
						<div tabindex="-1">
						<span>A:</span>
						<span class="kal-list-ss-ans">Answer</span>
						<p>모닝캄 프리미엄 회원이 가족에게 마일리지를 양도해 보너스를 발급하는 경우에만 비수기 마일리지를 적용할 수 있습니다. </p>
						</div>
					</div>
				</li>
				<li class="kal-list-ss-li">
				<a href="javascript:void(0);" id="kal-faqList-a3" tabindex="-1">
				Q4. : 모닝캄 프리미엄 클럽 회원이 보너스 항공권을 구매하는 경우 성수기에도 비수기 마일리지가 적용된다는데, 가족도 동일하게 비수기 마일리지를 적용 받을 수 있나요?
					<span class="kal-list-ss-plus"></span>
					</a>
					
					<div id="kal-faq-ss-answer3" class="kal-list-ss-answer">
					<div tabindex="-1">
					<span>A:</span>
					<span class="kal-list-ss-ans">Answer</span>
						<p>모닝캄 프리미엄 회원이 가족에게 마일리지를 양도해 보너스를 발급하는 경우에만 비수기 마일리지를 적용할 수 있습니다. </p>
						</div>
					</div>
				</li>
				<li class="kal-list-ss-li">
					<a href="javascript:void(0);" id="kal-faqList-a4">
					Q5. : 모닝캄 프리미엄 클럽 회원이 보너스 항공권을 구매하는 경우 성수기에도 비수기 마일리지가 적용된다는데, 가족도 동일하게 비수기 마일리지를 적용 받을 수 있나요?
					<span class="kal-list-ss-plus"></span>
					</a>
					
					<div id="kal-faq-ss-answer4" class="kal-list-ss-answer">
					<div>
					<span>A:</span>
					<span class="kal-list-ss-ans">Answer</span>
						<p>모닝캄 프리미엄 회원이 가족에게 마일리지를 양도해 보너스를 발급하는 경우에만 비수기 마일리지를 적용할 수 있습니다. </p>
						</div>
					</div>
				</li>
				<li>
				</li>
				
				<li></li>
				<li></li>
				<li></li>
			</ul>
			</div>
			</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" flush="false"/>  
</body>
<script>
	$(function(){
		$('#kal-faq-ss-answer1').hide();
		$('#kal-faqList-a').on('click',function(){
			$('#kal-faq-ss-answer').toggle('slow');
		});
		$('#kal-faqList-a1').on('click',function(){
			$('#kal-faq-ss-answer1').toggle('slow');
		});
		$('#kal-faqList-a2').on('click',function(){
			$('#kal-faq-ss-answer2').toggle('slow');
		});
		$('#kal-faqList-a3').on('click',function(){
			$('#kal-faq-ss-answer3').toggle('slow');
		});
		$('#kal-faqList-a4').on('click',function(){
			$('#kal-faq-ss-answer4').toggle('slow');
			
		});
		
	});
</script>
</html>