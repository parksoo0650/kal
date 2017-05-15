<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="${context}/resources/css/reset.css" />
<link rel="stylesheet" href="${context}/resources/css/kal.css" />
<title>Login</title>

</head>
<body>

	<div id="" class="login-box-wrapper" style="margin: center">
		<div id="" class="login-box-text">
			<div id="" style="margin-top: 20px; text-align: center;">
					<h2>로그인</h2>
				<p>로그인 하여주세요</p>
			</div>
			<div id="login-id" class="id">
				<label for="">회원 아이디</label><br /> 
				<input id="login-id" type="text" placeholder="아이디" />
			</div>
			<div id="login-pass" class="pass">
				<label for="">비밀번호</label><br /> 
				<input id="login-pass" type="text" placeholder="비밀번호" />
			</div>
			<div>
				<div class="btn-group" role="group" aria-label="...">
					<button id="loginbtn" type="button" class="btn btn-default"
						style="color: white; background-color: #2e6384; margin: center;">로그인</button>
					<span style="margin-top: 20px;"><font size="3">인터넷 회원으로 가입하지 않으신분은 지금 가입하세요.</font></span>
					<a href="">회원가입</a>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
   $(function() {
      $('#loginbtn').on('click', function() {
         alert('로그인하셧습니다.');
         location.href = "${context}/mypageUserInfo";
      });
   });
</script>
</html>