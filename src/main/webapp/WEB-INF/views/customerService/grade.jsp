<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>리뷰 평점</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />
</head>
<body>
   <div class="container">
   <div>
   <span class="kal-hy-review-grade-title">평점주기</span>
   </div>
   <div class="kal-hy-review-grade-content">
   
  
   <span >▶깨끗함</span><span class="star-input">

<p class="kal-hy-grade-star-rating">
    <a href="#" class="on">★</a>
    <a href="#" class="on">★</a>
    <a href="#" class="on">★</a>
    <a href="#">★</a>
    <a href="#">★</a>
</p>

</span>
   <span >▶직원 서비스</span><span class="star-input">

<p class="kal-hy-grade-star-rating">
    <a href="#" class="on">★</a>
    <a href="#" class="on">★</a>
    <a href="#" class="on">★</a>
    <a href="#">★</a>
    <a href="#">★</a>
</p>

</span>
</div>
   </div>
</body>
<script>

$( ".kal-hy-grade-star-rating a" ).click(function() {
     $(this).parent().children("a").removeClass("on");
     $(this).addClass("on").prevAll("a").addClass("on");
     return false;
});
</script>	
</html>
