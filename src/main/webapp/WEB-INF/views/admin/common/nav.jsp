<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />

<div class="kal-gg-body">
<div class="kal-gg-nav">

  <div id="kal-gg-nav-user">
  	<img src="${context}/resources/img/admin/nav/user1.jpg" 
  		onmouseover="this.src='${context}/resources/img/admin/nav/user2.jpg'" 
  		onmouseout="this.src='${context}/resources/img/admin/nav/user1.jpg'">
  </div>
  <div id="kal-gg-nav-res">
	  <img src="${context}/resources/img/admin/nav/res1.jpg" 
	  		onmouseover="this.src='${context}/resources/img/admin/nav/res2.jpg'" 
	  		onmouseout="this.src='${context}/resources/img/admin/nav/res1.jpg'" >
  </div>
  <div id="kal-gg-nav-sche">
	  <img src="${context}/resources/img/admin/nav/sche1.jpg" 
	  		onmouseover="this.src='${context}/resources/img/admin/nav/sche2.jpg'" 
	  		onmouseout="this.src='${context}/resources/img/admin/nav/sche1.jpg'" >
  </div>
  <div id="kal-gg-nav-board">
	  <img src="${context}/resources/img/admin/nav/board1.jpg" 
	  		onmouseover="this.src='${context}/resources/img/admin/nav/board2.jpg'" 
	  		onmouseout="this.src='${context}/resources/img/admin/nav/board1.jpg'" >
  </div>
  <div id="kal-gg-nav-flight">
	 <img src="${context}/resources/img/admin/nav/flight1.jpg" 
	  		onmouseover="this.src='${context}/resources/img/admin/nav/flight2.jpg'"
	  		onmouseout="this.src='${context}/resources/img/admin/nav/flight1.jpg'" >
  </div>
  
   <div id="kal-gg-nav-route">
	 <img src="${context}/resources/img/admin/nav/route1.jpg" 
	  		onmouseover="this.src='${context}/resources/img/admin/nav/route2.jpg'" 
	  		onmouseout="this.src='${context}/resources/img/admin/nav/route1.jpg'" >
  </div>
  <div id="kal-gg-nav-stat">
	 <img src="${context}/resources/img/admin/nav/stat1.jpg" 
	  		onmouseover="this.src='${context}/resources/img/admin/nav/stat2.jpg'" 
	  		onmouseout="this.src='${context}/resources/img/admin/nav/stat1.jpg'" >
  </div>
 		<div class="kal-gg-nav-drop" id="kal-gg-nav-drop-con">CONNECTION</div>
		<div class="kal-gg-nav-drop" id="kal-gg-nav-drop-user">USER</div>
		<div class="kal-gg-nav-drop" id="kal-gg-nav-drop-res">RESERVATION</div>
		<div class="kal-gg-nav-drop" id="kal-gg-nav-drop-searching">SEARCHING</div>
		<div class="kal-gg-nav-drop" id="kal-gg-nav-drop-sales">SALES</div>
</div>	


<script>
$(function(){
	$("#kal-gg-nav-stat").on('click',function() {
        if($(".kal-gg-nav-drop").is(":visible")){
        $(".kal-gg-nav-drop").slideUp("fast");
        } else {
            $(".kal-gg-nav-drop").slideUp("fast");
            $(".kal-gg-nav-drop").slideToggle("fast");
        }
    });


	
	$('#kal-gg-nav-drop-con').on('click',function(){
			alert('stat 입장');
			location.href="${context}/adminStatCon";
			}); 
	
	$('#kal-gg-nav-user').on('click',function(){
		alert('user 입장');
		location.href="${context}/adminUser";
		});
	$('#kal-gg-nav-res').on('click',function(){
		alert('res 입장');
		location.href="${context}/adminRes";
		});
	$('#kal-gg-nav-sche').on('click',function(){
		alert('sche 입장');
		location.href="${context}/adminSche";
		});
	$('#kal-gg-nav-board').on('click',function(){
		alert('board 입장');
		location.href="${context}/adminBoard";
		});
	$('#kal-gg-nav-flight').on('click',function(){
		alert('flight 입장');
		location.href="${context}/adminFlight";
		});
	$('#kal-gg-nav-route').on('click',function(){
		alert('route 입장');
		location.href="${context}/adminRoute";
		});

});			
</script>
</div>

