<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>로긴마</title>

<!-- 컨트롤러 통해서 리턴되면 무조건 파일경로 WEB-INF에서 시작한다.  -->
<!-- web-inf로 들어오려면 무조건 컨트롤러 타고 들어와야함 -->
<!-- font icon -->
<link rel="stylesheet"
	href="../resources/customer/fonts/material-icon/css/material-design-iconic-font.min.css">
<!-- main css -->
<link href="../resources/customer/css/style.css" rel="stylesheet"
	type="text/css">

</head>
<script>
	// 왜 안돼? form tag없었어서 안되는거였음 ㅡㅡ;; rookie mistake
	window.onload = function() {
		document.getElementById('signin').onclick = check;
	}

	function check() {
		if (document.form.cusId.value == "") {
			alert("ID를 입력하세요.");
			document.form.cusId.focus();
			return false;
		}
		if (document.form.pass.value == "") {
			alert("password를 입력하세요.");
			document.form.pass.focus();
			return false;
		}
		document.form.submit();
	}
</script>

<body>
	<form name="form" action="login.do" method="post">
		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<!-- 아래는 상대경로. 절대경로는 / 로 시작 -->
							<img src="../resources/customer/images/signin-image.jpg"
								alt="sing up image">
						</figure>
						<a href="customerJoin.do" class="signup-image-link">Create an
							account</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Log in</h2>
						<form method="POST" class="register-form" id="login-form">
							<div class="form-group">
								<label for="cusId"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="cusId" id="cusId" placeholder="ID" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass"
									placeholder="Password" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Remember
									me</label><br>
								<a href="cantLogIn.do" id="remember-me" class="agree-term" class="label-agree-term">Can't Log In?</a>
							</div>
							<div class="form-group form-button" id="Submit">
								<input type="button" name="signin" id="signin"
									class="form-submit" value="Log in" /> 
								<input type="button"
									name="signup" id="signup" class="form-submit" value="Sign up"
									onclick="location.href='customerJoin.do'" /> 
								<input
									type="reset" name="cancel" id="cancel" class="form-submit"
									value="Cancel" />
							</div>
						</form>
						
						<div class="social-login">
							<span class="social-label">Or login with</span>
							<ul class="socials">
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
	</form>

</body>

<!-- 컨트롤러 통해서 리턴되면 무조건 파일경로 WEB-INF에서 시작한다.  -->
<script src="../resources/customer/vendor/jquery/jquery.min.js"></script>
<script src="../resources/customer/js/main.js"></script>

</html>

