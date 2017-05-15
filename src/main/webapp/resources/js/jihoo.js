var kal=kal || {};

/*
========kal-context===========
@AUTHOR : Hong jihoo
@CREATE DATE : 2017-04-30
@UPDATE DATE : 2017-04-30
@DESC :
===============================
*/

kal.context=(function(){
	var init=function(context){
		alert(context);
		kal.session.init(context);
		onCreate();
	};
	var onCreate=function(){
		kal.jh.component.init();
		kal.jh.path.init();
	};
	return{
		init : init,
		onCreate : onCreate
	};
})();

/*
========kal-session===========
@AUTHOR : Hong jihoo
@CREATE DATE : 2017-04-30
@UPDATE DATE : 2017-04-30
@DESC :
===============================
*/

kal.session=(function(){
	var init=function(context){
		session.setItem('context',context);
		session.setItem('js',context+'/resources/js');
		session.setItem('css',context+'/resources/css');
		session.setItem('img',context+'/resources/img');
	};
	var getContextPath=function(){return sessionStorage.getItem('context');};
	var getJavascriptPath=function(){return sessionStorage.getItem('js');};
	var getStylePath=function(){return sessionStorage.getItem('css');};
	var getImagePath=function(){return sessionStorage.getItem('img');};
	return{
		init : init,
		getContextPath : getContextPath,
		getJavascriptPath : getJavascriptPath,
		getStylePath : getStylePath,
		getImagePath : getImagePath
	};
})();

/*
========kal-jh-path============
@AUTHOR : Hong jihoo
@CREATE DATE : 2017-04-30
@UPDATE DATE : 2017-04-30
@DESC :
===============================
*/

kal.jh_path=(function(){
	var wrapper,ctx,img,js,css;
	var init=function(){
		wrapper=kal.jh.component.getWrapper();
		ctx=kal.session.getContextPath();
		img=kal.session.getImagePath();
		js=kal.session.getJavascriptPath();
		css=kal.session.getStylePath();
	};
	return{
		init : init
	};
})();

/*
========kal-jh-component=======
@AUTHOR : Hong jihoo
@CREATE DATE : 2017-04-30
@UPDATE DATE : 2017-04-30
@DESC :
===============================
*/

kal.jh_component=(function(){
	
	var setWrapper=function(container){this._wrapper=wrapper};
	var getWrapper=function(){return this._wrapper};
	var init=function(){onCreate();};
	var onCreate=function(){
		setContentView();
	};
	var setContentView=function(){
		kal.jh.component.setWrapper($('#res-wrapper'));
	};
	return{
		setWrapper : setWrapper,
		getWrapper : getWrapper,
		init : init
	};
})();

/*
========kal-jh-reservation=====
@AUTHOR : Hong jihoo
@CREATE DATE : 2017-04-30
@UPDATE DATE : 2017-04-30
@DESC :
===============================
*/

kal.jh_reservation=(function(){
	var execute=function(){
		$('#res-wrapper').append('kal.jh.ui.reservation1()');		
	};
})();

/*
========kal-jh-ui==============
@AUTHOR : Hong jihoo
@CREATE DATE : 2017-04-30
@UPDATE DATE : 2017-04-30
@DESC :
===============================
*/

kal.ui={
		//onclick="Check(this.name,'')"
		reservation1 : function(){
			return '<div class="kal-res1-jh-subWrapper">'
			+'<div class="kal-res1-jh-bookingMainTitle">'
			+	'<h1>항공권 예매</h1>'
			+'</div>'
			+'<ul class="kal-res1-jh-bookingSubTitle">'
			+	'<li >'
			+		'<p class="kal-res1-jh-bookingSubTitle-domestic">국내선 항공편</p>'
			+	'</li>'
			+	'<li >'
			+		'<p class="kal-res1-jh-bookingSubTitle-international">국제선 항공편<span class="kal-res1-jh-checkIcon"></span></p>'
			+	'</li>'
			+'</ul>'
			+'<div class="kal-res1-jh-bookingBox">'
			+	'<div class="kal-res1-jh-commonResTitle">'
			+		'<span class="kal-res1-jh-commonRes" >일반 예매<span class="kal-res1-jh-checkBlue"></span></span>'
			+		'<span class="kal-res1-jh-bonusRes" >보너스 예매<span class="kal-res1-jh-checkWhite"></span></span>'
			+	'</div>'
			+	'<div class="kal-res1-jh-tripType">'
			+		'<img src="${context}/resources/img/reservation/radioBlank.png" name="seat1"><span>일반석</span>'
			+		'<img src="${context}/resources/img/reservation/radioBlank.png" name="seat2"><span>프레스티지석</span>'
			+		'<img src="${context}/resources/img/reservation/radioBlank.png" name="seat3"><span>일등석</span>'
			+	'</div>'
			+	'<div class="kal-res1-jh-tripDetails">'
			+		'<input type="text" placeholder="출발지" class="kal-res1-jh-departureArea">'
			+		'<input type="text" placeholder="목적지" class="kal-res1-jh-arrivalArea">'
			+		'<input type="text" placeholder="가는날/오는날" class="kal-res1-jh-dateSelect">'
			+	'</div>'
			+	'<div>'
			+		'<a class="kal-res1-jh-departureArea-btn"></a>'
			+		'<a class="kal-res1-jh-arrivalArea-btn"></a>'
			+		'<a class="kal-res1-jh-dateSelect-btn"></a>'
			+	'</div>'
			+	'<div class="kal-res1-jh-selectSeatWrapper">'
			+		'<p>일등석, 프레스티지석, 일반석중에 원하는 좌석을 선택해주세요.</p>'
			+		'<button class="kal-res1-jh-selectSeat">좌석 선택</button>'
			+	'</div>'
			+	'<div class="kal-res1-jh-submitWrapper">'
			+		'<p>출발지, 목적지, 가는날/오는날, 좌석 선택은 필수 사항입니다.</p>'
			+		'<button  class="kal-res1-jh-submit">항공편 조회</button>'
			+	'</div>'
			+'</div>'
			+'</div>'
		},
		reservation2 : function(){},
		reservation3 : function(){},
		reservation4 : function(){},
		reservation5 : function(){}
};