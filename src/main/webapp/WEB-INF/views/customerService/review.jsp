<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="UTF">
<head>
<meta charset="UTF-8" />
<title>대한항공-리뷰</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />
</head>
<body>
<jsp:include page="/WEB-INF/views/common/sub-gnb-after-login.jsp" flush="false" />
<jsp:include page="/WEB-INF/views/common/main-gnb.jsp" flush="false" />
<div class="kal-review-main-wrapper">
	<p class="kal-review-sub-wrapper-headertext">리뷰 게시판</p>
	<div class="kal-review-sub-wrapper-bg">
		<div class="kal-review-sub-wrapper">
			<div class="kal-review-sub-wrapper-left-box">
				<ul  class="kal-review-type-ul">
					<li class="kal-review-type-li1"><a class="active" href="#home">고객의 소리</a></li>
					<li class="kal-review-type-li2"><a href="#compliment">칭찬</a></li>
					<li class="kal-review-type-li3"><a href="#complaint">불만</a></li>
					<li class="kal-review-type-li4"><a href="#suggestion">제의</a></li>
					<li class="kal-review-type-li5"><a href="#inquiry">문의</a></li>
				</ul>
			</div>
			<div class="kal-review-sub-wrapper-right-box">
				<input class="kal-review-sub-wrapper-right-box-input" type="text" />
				<a href="javascript:void(0)"><img class="kal-review-star-icon" src="${context}/resources/img/customerService/review-star-icon.gif"/></a>
				<a href="javascript:void(0)"><img class="kal-review-pic-icon" src="${context}/resources/img/customerService/review-pic-icon.png"/></a>
				<button class="kal-review-post-btn">리뷰 작성</button>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp" flush="false" />
</body>
<script>

</script>
</html>
