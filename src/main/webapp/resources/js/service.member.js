var member=member || {};

/*
========member-context=========
@AUTHOR : Hong jihoo
@CREATE DATE : 2017-05-14
@UPDATE DATE : 2017-05-14
@DESC :
===============================
*/

/*member.context=(function(){
	return {
		init : function(context){
		$.getScript(context+'/resources/js/domain.session.js',function(){
				$.extend(new Session(context));
				member.execute.init();	
		})
	}};
})();*/

/*
========member-component=======
@AUTHOR : Hong jihoo
@CREATE DATE : 2017-05-14
@UPDATE DATE : 2017-05-14
@DESC :
===============================
*/

/*
========member-execute=========
@AUTHOR : Hong jihoo
@CREATE DATE : 2017-05-14
@UPDATE DATE : 2017-05-14
@DESC :
===============================
*/

member.execute=(function(){
	var init=function(){
		onCreate();
	};
	var onCreate=function(){
		mainPageBeforeLogin();
		qna();
	};
	var mainPageBeforeLogin=function(){
		$('#wrapper').append(member.ui.subGnbBeforeLogin());
		$('#wrapper').append(member.ui.mainGnb());
		$('#wrapper').append(member.ui.mainBackground());
		window.setInterval(function(){
			var next = ($('.open').index()+1)%('.imgcount').length;
			$('.open').removeClass('open').fadeOut(1500);
			$('.imgcount').eq(next).addClass('open').fadeIn(1000);
		},2500);
		$('#wrapper').append(member.ui.mainFooter());
	};
	var mainPageAfterLogin=function(){
		$('#wrapper').append(member.ui.subGnbAfterLogin());
		$('#wrapper').append(member.ui.mainGnb());
		$('#wrapper').append(member.ui.mainBackground());
		window.setInterval(function(){
			var next = ($('.open').index()+1)%('.imgcount').length;
			$('.open').removeClass('open').fadeOut(1500);
			$('.imgcount').eq(next).addClass('open').fadeIn(1000);
		},2500);
		$('#wrapper').append(member.ui.mainFooter());
	};
	
	return {
		init : init,
		onCreate : onCreate,
		mainPageBeforeLogin : mainPageBeforeLogin,
		mainPageAfterLogin : mainPageAfterLogin
	};
})();

/*
========member-cookie==========
@AUTHOR : Hong jihoo
@CREATE DATE : 2017-05-14
@UPDATE DATE : 2017-05-14
@DESC :
===============================
*/

member.cookie={
		setCookie:	function (name,value) {
		 	document.cookie = name + "=" + value;
		},
		getCookie: function(name) {
		    var nameEQ = name + "=";
		    var ca = document.cookie.split(';');
		    for(var i=0;i < ca.length;i++) {
		        var c = ca[i];
		        while (c.charAt(0)==' ') c = c.substring(1,c.length);
		        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
		    }
		    return null;
		},
		removeCookie: function(name) {
		    createCookie(name,"",-1);
		}
}

/*
========member-ui==============
@AUTHOR : Hong jihoo
@CREATE DATE : 2017-05-14
@UPDATE DATE : 2017-05-14
@DESC :
===============================
*/

member.ui={
	subGnbBeforeLogin : function(){
		return '<div class="kal-header">'
		+ 	'<div class="kal-before-login-sub-gnb">'
		+ 		'<div class="kal-before-login-sub-left-menu">'
		+ 			'<button class="kal-before-login-sub-left-menu-region-select-btn">국가/언어<img src="'+$.image()+'/main/btn-regionSelect.png"/></button>'
		+ 			'<span class="kal-before-login-sub-left-menu-text1"><img src="'+$.image()+'/main/korea-flag.gif">대한민국   ｜</span>'
		+ 			'<span class="kal-before-login-sub-left-menu-text2">한국어</span>'
		+			 '<a class="kal-before-login-sub-left-menu-text3" href="#">English</a>'
		+ 	'</div>'
		+ 	'<div class="kal-before-login-sub-right-menu">'
		+ 		'<a class="kal-before-login-sub-right-menu-login" href="javascript:void(0)">로그인   ｜</a>'
		+ 		'<a class="kal-before-login-sub-right-menu-regist" href="javascript:void(0)"> 회원가입    ｜</a>'
		+ 		'<a id="admin" class="kal-before-login-sub-right-menu-admin" href="javascript:void(0)"> 관리자 &nbsp&nbsp&nbsp</a>'
		+ 		'<input class="kal-before-login-sub-right-menu-search" type="text" placeholder="검색"/>'
		+ 		'<a class="kal-before-login-sub-right-menu-search-icon" href="#"><img src="'+$.image()+'/main/icon-search.png"/></a>'
		+ 	'</div>'
		+ '</div>'
		+ '</div>';
	},
	subGnbAfterLogin : function(){
		return '<div class="kal-after-login-sub-gnb">'
		+	'<div class="kal-after-login-sub-left-menu">'
		+		'<button class="kal-after-login-sub-left-menu-region-select-btn">국가/언어<img src="'+$.image()+'/main/btn-regionSelect.png"/></button>'
		+		'<span class="kal-after-login-sub-left-menu-text1"><img src="'+$.image()+'/main/korea-flag.gif">대한민국   ｜</span>'
		+		'<span class="kal-after-login-sub-left-menu-text2">한국어</span>'
		+		'<a class="kal-after-login-sub-left-menu-text3" href="#">English</a>'
		+	'</div>'
		+	'<div class="kal-after-login-sub-right-menu">'
		+		'<a class="kal-after-login-sub-right-menu-logout" href="#">로그아웃   ｜</a>'
		+		'<a class="kal-after-login-sub-right-menu-mypage" href="">&nbsp마이페이지    ｜</a>'
		+		'<a class="kal-after-login-sub-right-menu-myregist" href="">&nbsp나의 예약 &nbsp&nbsp</a>'
		+		'<input class="kal-after-login-sub-right-menu-search" type="text" placeholder="검색"/>'
		+		'<a class="kal-after-login-sub-right-menu-search-icon" href="#"><img src="'+$.image()+'/main/icon-search.png"/></a>'
		+	'</div>'
		+'</div>'
	},
	mainGnb : function(){
		return '<div class="kal-main-gnb">'
		+	'<div class="kal-main-logo">'
		+		'<a id="kal-logo" href="javascript:void(0)"><img src="'+$.image()+'/main/koreanAirLogo.png"/></a>'
		+	'</div>'
		+	'<div class="kal-main-right-menu">'
		+		'<button class="kal-main-right-menu-reservation-btn">항공권 예매</button>'
		+		'<button class="kal-main-right-menu-skypass-btn">스카이패스</button>'
		+		'<button class="kal-main-right-menu-service-btn">서비스 안내'
		+			'<div class="kal-service-btn-content">'
		+				'<a class="after-login-kal-service-btn-content-question" href="#">질문하기</a>'
		+				'<a class="after-login-kal-service-btn-content-faq" href="#">FAQ 게시판</a>'
		+				'<a class="kal-service-btn-content-review" href="#">리뷰 게시판</a>'
		+			'</div>'
		+		'</button>'
		+		'<button class="kal-main-right-menu-promotion-btn">프로모션/여행상품</button>'
		+	'</div>'
		+'</div>';
	},
	mainBackground : function(){
		return '<div class="kal-container">'
		+	'<ul class="kal-background-section">'
		+		'<li class="kal-main-background1 imgcount open">'
		+			'<div class="kal-maintext1">'
		+				'<h2>꿈의 비행 787</h2>'
		+				'<p>대한민국에서도 꿈의 비행이 시작됩니다.</p>'
		+			'</div>'
		+		'</li>'
		+		'<li class="kal-main-background2 imgcount">'
		+			'<div class="kal-maintext2">'
		+				'<h2>대한항공 여행정보사이트</h2>'
		+				'<p>각국의 여행정보 공유하고 활동포인트 혜택을 확인하세요</p>'
		+			'</div>'
		+		'</li>'
		+		'<li class="kal-main-background3 imgcount">'
		+			'<div class="kal-maintext3">'
		+				'<h2>여행은 인생이다</h2>'
		+				'<p>한진관광 KALPAK</p>'
		+			'</div>'
		+		'</li>'
		+	'</ul>'
		+'</div>'
		+'<div class="kal-main-event-wrapper">'
		+	'<a class="kal-event-text" href="#">진행중인 이벤트</a>'
		+'</div>';
	},
	mainFooter : function(){
		return '<div class="kal-footer">'
		+	'<div class="kal-footer-wrap">'
		+		'<div class="kal-footer-left-content">'
		+			'<div class="kal-footer-left-content-menu">'
		+				'<div class="kal-footer-left-content-menu-1">'
		+					'<h2>규정 및 약관</h2>'
		+					'<ul>'
		+						'<li class="kal-footer-left-content-menu-1-li1"><a href="#">개인정보처리방침</a></li>'
		+						'<li class="kal-footer-left-content-menu-1-li2"><a href="#">회원약관</a></li>'
		+						'<li class="kal-footer-left-content-menu-1-li3"><a href="#">운송약관</a></li>'
		+						'<li class="kal-footer-left-content-menu-1-li4"><a href="#">소비자 안전관련 정보</a></li>'
		+					'</ul>'
		+				'</div>'
		+				'<div class="kal-footer-left-content-menu-2">'
		+					'<h2>서비스 정보</h2>'
		+					'<ul>'
		+						'<li class="kal-footer-left-content-menu-2-li1"><a href="#">고객 서비스</a></li>'
		+						'<li class="kal-footer-left-content-menu-2-li2"><a href="#">고객 안내 서비스</a></li>'
		+						'<li class="kal-footer-left-content-menu-2-li3"><a href="#">서비스 수수료 안내</a></li>'
		+						'<li class="kal-footer-left-content-menu-2-li4"><a href="#">e 서식함</a></li>'
		+					'</ul>'
		+				'</div>'
		+				'<div class="kal-footer-left-content-menu-3">'
		+					'<h2>고객 지원</h2>'
		+					'<ul>'
		+						'<li class="kal-footer-left-content-menu-3-li1"><a href="#">지점 연락처</a></li>'
		+						'<li class="kal-footer-left-content-menu-3-li2"><a href="#">고객의 말씀</a></li>'
		+						'<li class="kal-footer-left-content-menu-3-li3"><a href="#">FAQ</a></li>'
		+						'<li class="kal-footer-left-content-menu-3-li4"><a href="#">채팅 서비스</a></li>'
		+					'</ul>'
		+				'</div>'
		+				'<div class="kal-footer-left-content-menu-4">'
		+					'<h2>회사 소개</h2>'
		+					'<ul>'
		+						'<li class="kal-footer-left-content-menu-4-li1"><a href="#">대한항공에 대하여</a></li>'
		+						'<li class="kal-footer-left-content-menu-4-li2"><a href="#">경영 재무 정보</a></li>'
		+						'<li class="kal-footer-left-content-menu-4-li3"><a href="#">녹색 경영</a></li>'
		+						'<li class="kal-footer-left-content-menu-4-li4"><a href="#">사회공헌활동</a></li>'
		+					'</ul>'
		+				'</div>'
		+			'</div>'
		+			'<div class="kal-footer-left-content-address">'
		+				'<div class="kal-footer-left-content-address-addr">'
		+				'</div>'
		+				'<div class="kal-footer-left-content-address-sns">'
		+					'<a href="#"><img src="'+$.image()+'/main/icon-fb.png"/></a>'
		+					'<a href="#"><img src="'+$.image()+'/main/icon-tw.png"/></a>'
		+					'<a href="#"><img src="'+$.image()+'/main/icon-inst.png"/></a>'
		+					'<a href="#"><img src="'+$.image()+'/main/icon-gp.png"/></a>'
		+				'</div>'
		+			'</div>'
		+		'</div>'
		+		'<div class="kal-footer-right-content">'
		+		'</div>'
		+	'</div>'
		+'</div>';
	},
	login : function(){
		return '<div class="kal-gg-loginbox">'
		+	'<div class="kal-gg-loginbox-img">'
		+		'<a class="kal-gg-mainlogo" href="javascript:void(0)"><img src="'+$.image()+'/reservation/koreanAirLogo.png" alt=""></a>'
		+	'</div>'
		+	'<div class="kal-gg-loginbox-big-box">'
		+		'<input id="userid" class=kal-gg-loginbox-box-id type="text" placeholder="아이디">'
		+		'<input id="userpw" class=kal-gg-loginbox-box-pass type="text" placeholder="비밀번호" />'
		+		'<div class="kal-gg-loginbox-middle-text">'
		+			'<input id="remember" class="remember-id" type="checkbox"></input>아이디 저장'
		+			'<div class="kal-gg-click-text-area">'
		+				'<a href="javascript:void(0)">아이디 찾기</a><span> | </span><a href="">비밀번호 찾기</a><span> | </span><a class="kal-gg-registbtn" href="javascript:void(0)">회원가입</a>'
		+			'</div>'
		+		'</div>'
		+		'<button id="login-submit-btn" class="kal-gg-loginbox-login-btn" >로그인</button>'
		+	'</div>'
		+	'<div class="kal-gg-loginbox-under" >'
		+		'<span>이용약관</span> |'
		+		'<span>개인정보처리방침</span> |'
		+		'<span>청소년보호정책</span> |'
		+		'<span>고객센터</span>'
		+	'</div>'
		+'</div>';
	}
};
