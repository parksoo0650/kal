function boardFAQlist(){
			return	'<div id="kal-faq-ss-img" class="kal-faq-ss-bg">'
			+'<div class="kal-faq-ss-title">'
			+'<h2>FAQ</h2>'
			+'</div>'
			+'<div id="wrapper" class="kal-faq-ss-wrapper">'
			+'<div class="kal-faq-ss-h2">'
			+'답변보기'
			+'</div>'
			+'<div class="kal-faq-ss">'
			+'<form action="" class="kal-faq-ss-form">'
			+'<div class="kal-faq-ss-formstyle">'
			+'<div class="kal-faq-ss-align">'
				+'<label for="kal-qna-ss-select" class="kal-faq-ss-label">상위분류</label>'
					+'<select name="" id="kal-qna-ss-select" class="kal-faq-ss-select-style">'
						+'<option value="전체">전체</option>'
						+'<option value="항공권 예약/구매/환불">항공권 예약/구매/환불</option>'
						+'<option value="스카이패스">스카이패스</option>'
						+'<option value="홈페이지 이용">홈페이지 이용</option>'
						+'<option value="공항 서비스">공항 서비스</option>'
						+'<option value="수하물 관련">수하물 관련</option>'
						+'<option value="객실 서비스">예매</option>'
						+'<option value="기내식">객실 서비스</option>'
						+'<option value="제휴 항공사">제휴 항공사</option>'
						+'<option value="기타">기타</option>'
					+'</select>'
					+'</div>'
					+'</div>'
					+'<button class="kal-search-ss-button">검색'
					+'<span class="kal-search-ss-button-image"></span>'
					+'</button>'
				+'<div class="kal-search-ss-contanier">'
				+'<div class="kal-faq-ss-bar"></div>'
				+'<div>'
				+'<label for="faq-search" class="kal-faq-ss-searchlabel">FAQ 검색하기</label>'
				+'<span class="kal-faq-ss-holder" id="faq-search"></span>'
				+'<input type="text"  class="kal-faq-ss-search" aria-describedby="faq-search" placeholder="수하물,스카이패스 등"/>'
				+'</div>'			
			+'<button class="kal-search-ss-button-submit"></button>'
			+'</div>'
			+'</form>'
			+'<div class="kal-ss-faq-btnAll-style">'
				+'<button id="kal-all-ss-button" class="kal-search-ss-button-all">답변보기'
				+'<span></span>'	
				+'</button>'
				+'</div>'
				+'<div id="kal-faq-ss-count" class="kal-faq-ss-list-border">'
				+'</div>'
				+'<div id="kal-faq-ss-container" class="kal-faq-ss-list-border">'
				+'</div>'
				+'</div>'
				+'</div>';
		}
function boardQna(){
			return '<div id="kal-faq-ss-img" class="kal-faq-ss-bg">'
			+'<div class="kal-faq-ss-title">'
			+'<h2>Q&A</h2>'
			+'</div>'
			+'<div class="kal-faq-ss-wrapper">'
			+'<div class="kal-qna-ss-qna-box">'
			+'<div class="kal-qna-ss-qnaWriter"></div>'
												+'<div class="kal-qna-ss-title-text">'
													+'<h3>질문하기</h3>'
												+'</div>'
												+'<form>'
											+'<label for="kal-qna-ss-search-select" class="kal-qna-ss-select-typeText">상위분류</label>'
													+'<select name="" id="kal-qna-ss-search-select" class="kal-qna-ss-select-style">'
													+'<option value="전체">전체</option>'
													+'<option value="항공권 예약/구매/환불">항공권 예약/구매/환불</option>'
													+'<option value="스카이패스">스카이패스</option>'
													+'<option value="홈페이지 이용">홈페이지 이용</option>'
													+'<option value="공항 서비스">공항 서비스</option>'
													+'<option value="수하물 관련">수하물 관련</option>'
													+'<option value="객실 서비스">예매</option>'
													+'<option value="기내식">객실 서비스</option>'
													+'<option value="제휴 항공사">제휴 항공사</option>'
													+'<option value="기타">기타</option>'
												+'</select>'
								+'<div class="kal-qna-ss-text">'
								+'<input name="" id="" class="kal-qna-ss-text-style" placeholder="질문하기" type="text">'
								+'<button id="kal-all-ss-add-button" class="kal-qna-ss-button-question" type="button">질문하기'
									+'<span></span>'
									+'</button>'
									+'</form>'
								+'</div>'
								+'</div>'
								+'<div id="kal-qna-ss-container" class="kal-qna-ss-list-border">'
								+'</div>'
								+'</div>'
								+'</div>'
								+'</div>';
	}
	function list(faq,answer,i){
		return '<button type="button" id="kal-faqList-btn'+(i+1)+'" class="kal-faq-ss-list-style">'
					+'<br />Q'+faq.faqSeq+'. ' + faq.faqReq+''
					+'<span class="kal-faq-ss-plus"></span>'
					+'<input id="kal-qna-ss-hidden" type="hidden" value="'+i+'"/>'
				+'</button>'
				+'<div id="kal-faq-ss-answer'+(i+1)+'" class="kal-list-ss-answer">'
							+'<br />'
						+'Q'+faq.faqSeq+'. '+ faq.faqReq   +''
						+'<div class="kal-qna-ss-line">'
						+ '<br />' + answer + ''
						+'</div>'
				+'</div>';
	}
