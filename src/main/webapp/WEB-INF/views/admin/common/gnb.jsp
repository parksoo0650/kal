<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />
<div>
<div></div>
<ul class="kal-gg-gnb">
	<li class="kal-gg-gnb-li">ADMIN</li>
	<li class="kal-gg-gnb-hover" id="kal-gg-gnb-gotomain">MAIN</li>
	<li class="kal-gg-gnb-hover">HOMEPAGE</li>
	<li class="kal-gg-gnb-hover">SNS</li>
	<li class="kal-gg-gnb-hover">SETTING</li>
	<li class="kal-gg-gnb-hover">LOGOUT</li>
</ul>

</div>

<script>

$(function(){

	$('#kal-gg-gnb-gotomain').on('click',function(){

		location.href = "${context}//";

	});

	$('#main').on('click',function(){

		location.href = "${context}/goAdmin";

	});

});

</script>