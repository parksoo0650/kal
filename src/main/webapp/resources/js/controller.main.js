var main=main || {};

main.context=(function(){
	var onCreate=function(context){
			$.getScript(context+'/resources/js/domain.session.js',function(){
					$.extend(new Session(context));
					setContentView();
			})
		};
		var setContentView = function(){
			main.member.onCreate();
			main.admin.onCreate();
			main.boardQna.onCreate();
		};
	return{onCreate : onCreate};
})();
main.member=(function(){
	var memberService;
	var onCreate = function(){
		memberService=$.javascript()+'/service.member.js';
		setContentView();
	};
	var setContentView=function(){
		$.getScript(memberService,function(){
			member.execute.mainPageBeforeLogin();
				$('.kal-before-login-sub-right-menu-login').on('click',function(){
					alert('로그인 버튼 클릭');
					$('#wrapper').empty();
					$('#wrapper').append(member.ui.login());
					$('.kal-gg-mainlogo').on('click',function(){
						alert('메인페이지로 이동');
						$('#wrapper').load($.context()+'/');
					});
					var authId = $.cookie('authId');
					if(authId != undefined){
						$('#userid').val(authId);
						$('#remember').prop("checked",true);
					}
					$('#login-submit-btn').on('click',function(){
						alert('로그인버튼');
						if($.trim($('#userid').val()) == ""){
							alert('아이디를 입력해 주세요.');
							return;
						}else{
							if($('#remember').prop('checked')){
								$.cookie('authId',$('#username').val());
							}else{
								$.removeCookie('authId');
							}
							/*e.preventDefault();*/
							$.ajax({
								url : $.context() + '/login',
								method : "POST",
								data : JSON.stringify({
									id : $('#userid').val(),
									pw : $('#userpw').val()
								}),
								dataType : "json",
								contentType : "application/json",
								success : function(data){
									if(data.result==='success'){
										alert('환영합니다 '+data.name+' 님');
										$.cookie('loginedId',data.id);
										$('#wrapper').empty();
										member.execute.mainPageAfterLogin();
										main.boardQna.onCreate();
									}else{
										alert('입력하신 ID가 존재하지 않습니다.');
									}
								},
								error: function(xhr,status,msg){
									alert('로그인 실패이유 :'+msg);
								}
							});
						}
					});
				});
		
			
		});
	};
	return {onCreate : onCreate}
})();  
main.admin=(function(){
	var adminService;
	var onCreate=function(){
		adminService=$.javascript()+'/service.admin.js';
		setContentView();
	};
	var setContentView=function(){
		$.getScript(adminService,function(){
			admin.access.login();
		});
	};
	return{onCreate:onCreate}
})();
main.reservation=(function(){
	var reservationService;
	var onCreate=function(){
		reservationService=$.javascript()+'/service.admin.js';
		setContentView();
	};
	var setContentView=function(){
		$.getScript(reservationService,function(){
		});
	};
	return{onCreate:onCreate}
})();
main.boardQna=(function(){
	var boardQnaService,image,loginedId;
	var onCreate=function(){
		boardQnaService=$.javascript()+'/service.board.js';
		boardView=$.javascript()+'/board.view.js';
		loginedId = $.cookie('loginedId');
		image=$.image();
		setContentView();
	};
	var setContentView=function(){
		$.getScript(boardView,function(){
			$('.after-login-kal-service-btn-content-question').on('click',function(){
					$('#wrapper').empty();
					$('#wrapper').append(subGnbAfterLogin(image));
					$('#wrapper').append(mainGnb(image));
					$('#wrapper').append(boardQna(loginedId));
					$('#wrapper').append(mainFooter(image));
					$('#wrapper').append();
					$.getJSON($.context()+'/listQNA',function(data){
						alert('가져온 리스트'+data.list);
						var qnalist=data.list;
						var rows='';
						var qnaSeq='';
						var i=0;
						$.each(qnalist,function(i,qna){
							rows+='<li class="kal-list-ss-li" id="kal-list-ss-li'+i+'">'
								+'<a href="javascript:void(0);" id="kal-faqList-a'+i+'">'
										+'Q'+qna.faqSeq+'.: '+qna.faqReq+''
											+'<span class="kal-list-ss-plus"></span>'
									+'</a>'
									'<div id="kal-faq-ss-answer'+i+'" class="kal-list-ss-answer" style="height:200%;margin-top:20px;">'
										+'</div>'
								+'</li>';
						});
						$('#kal-qna-ss-question').append(question(rows));
							$('#kal-faqList-a'+i+'').on('click',function(){
								//e.preventDefault();
								alert("qna의 번호:"+(i+1));
								var seq=i+1;
								$.ajax({
									url: $.context()+'/FAQanswer',
									method: 'POST',
									data : JSON.stringify({ seq : seq }),
									dataType : 'json',
									contentType : 'application/json',
									success : function(data){
										alert('답변 : ' + data.ans.faqAnswer);
										$('#kal-faq-ss-answer'+i+'').slideDown('slow',function(){
											var reply='<div id="kal-qna-ss-tab" tabindex="-1">'
											+'<span>A:</span>'
												+'<span class="kal-list-ss-ans">Answer</span>'
													+'<p style="border:1px solid black;">'+data.ans.faqAnswer+'</p>'
													+'</div>';
											$(this).html(reply);
										});
										;
									},
									error : function(xhr, status,msg){
										alert('답변을 못가져온 이유'+msg);
									}
								
								});
							});
						});
						
							
					});
				
				$('#kal-all-ss-add-button').on('click',function(e){
					e.preventDefault();
				
					var qnatype=$('#category-select option:selected').val();
					$.ajax({
						url:$.context()+'/addFAQ',
						method:'POST',
						data:JSON.stringify({
							id : loginedId,
							qna : $('.kal-qna-ss-text-style').val(),
							qnatype : qnatype
						}),
						dataType: 'json',
						contentType: 'application/json',
						success:function(data){
							if(data.result=='success'){
								alert('질문이 등록되었습니다.');
								$.getJSON($.context()+'/listQNA',function(data){
									var qnalist=data.list;
									var rows;
									$.each(qnalist,function(i,qna){
										rows+='<button type="button" id="kal-faqList-a" class="kal-qna-ss-btnText">'
										+			'Q'+(i+1)+'. :'+qna.faqReq+''
										+				'<span class="kal-list-ss-plus"></span>'
										+       '</button>';
									});
									$('#kal-qna-ss-question').append(question(rows));
								});
								$('#kal-faqList-a').on('click',function(){
									alert('답글 보기');
									$('#kal-qna-ss-ul').append(answer());
								});
							}else{
								alert('질문이 등록되지 않았습니다. 질문을 다시 입력하세요');
							}
						},
						error:function(xhr,status,msg){
						 alert('질문 등록 실패 이유'+msg);
						}
					});
				});
				
			});
	};
	return{onCreate:onCreate}
})();