<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<!-- 컨트롤러 통해서 리턴되면 무조건 파일경로 WEB-INF에서 시작한다.  -->
	<!-- font icon -->
    <link rel="stylesheet" href="../resources/customer/fonts/material-icon/css/material-design-iconic-font.min.css">
	<!-- main css -->
	<link href="../resources/customer/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        
                        <form method="POST" action="customerInsert.do" class="register-form" id="register-form">
                        	<div class="form-group">
                                <label for="cusId"><i class="zmdi zmdi-account material-icons-name"></i></label>
								<p class="result">
									<input type="text" name="cusId" id="cusId" placeholder="ID" />
									<span> <input type="button" id="idCheck" value="중복체크">
									</span> <span id="msg" class="msg">check your ID.</span>
								</p>

							</div>
                            
                            
                            
                            
                            
                            <div class="form-group">
                                <label for="cusName"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="cusName" id="name" placeholder="Your Name"/>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email"/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass" placeholder="Password"/>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Register"
                                onclick="return submit_ok()"/>
                                <input type="reset" name="reset" class="form-submit" value="Cancel"/>
                            </div>
                        </form>
                        
                    </div>
                    <div class="signup-image">
                        <figure><img src="../resources/customer/images/signup-image.jpg" alt="sign up image"></figure>
                        <a href="#" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>

    </div>
	<!-- JS -->
	<!-- 컨트롤러 통해서 리턴되면 무조건 파일경로 WEB-INF에서 시작한다.  -->
    <script src="../resources/customer/vendor/jquery/jquery.min.js"></script>
    <script src="../resources/customer/js/main.js"></script>
    <script type="text/javascript">
      // 아이디 중복체크
      $("#idCheck").click(function() {

         var query = {
            cusId : $('#cusId').val()
         };

         $.ajax({
            url : "idCheck.do",
            type : "post",
            data : query,
            datatype : 'text',
            success : function(data) {

               if (data == 0) {
                  $(".result .msg").text("You can Not use ID");
               } 
               else {
                  $(".result .msg").text("You can use ID");
               }
            }
         });
      });

      // 비밀번호 일치 확인
      $(function() {
         $('#re_pass').blur(function() {
            if ($('#pass').val() != $('#re_pass').val()) {
               if ($('#re_pass').val() != '') {
                  alert("비밀번호가 일치하지 않습니다.");
                  $('#re_pass').val('');
                  $('#re_pass').focus();
               }
            }
         });
      });

      // 회원가입 유효성 체크

      function submit_ok(){
         
         if($('#cusId').val() == '' || $('#cusId').val()==null || $('#pass').val() == '' || $('#pass').val()==null || $('#name').val() == '' || $('#name').val()==null || $('#email').val() == '' || $('#email').val()==null ){
            alert("회원정보를 모두 입력해주세요");
            return false;
         };

         if($("#msg").text() == "You can Not use ID"){
            alert($("#msg").text());
            return false;
         }
         document.getElementById('register-form').submit();
      };
   	  </script>
</body>
</html>