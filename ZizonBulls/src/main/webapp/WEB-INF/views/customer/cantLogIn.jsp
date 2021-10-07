<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <title>Form send password  - Bootdey.com</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="${path }/resources/customer/js/jquery-1.10.2.min.js"></script>
    <link href="${path }/resources/customer/css/forgotLoginInfo.css" rel="stylesheet">
	<script src="${path }/resources/customer/js/forgotLoginInfo.js"></script>
</head>
<body>

<div class="container bootstrap snippets bootdey">
	<form name="forgot" method="post">
    
    <div class="row">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="text-center">
                    <img src="https://bootdey.com/img/Content/avatar/avatar1.png"  width="180" class="img-thumbnail logo img-circle">
                    <div>
                        <h3 class="text-center">Forgot password?</h3>
                    </div>
                    <div class="panel-body">
                        <div class="alert alert-danger">
                            <a class="close" data-dismiss="alert" href="#">×</a>Incorrect Email Address!
                        </div>
                        <fieldset>
                            <div class="form-group">
                            <input class="form-control input-lg" type="email" name="email" placeholder="your@email.com"/><br>
                            </div>
                            
							<input class="btn btn-lg btn-primary btn-block" type="button" name="forgotId" value="SEND ME ID" onclick="sendLoginInfo('id')"> <span>  </span>
							<input class="btn btn-lg btn-primary btn-block" type="button" name="forgotPassword" value="SEND ME PASSWORD" onclick="sendLoginInfo('pwd')">
<!-- 						value로 값을 보내줄 수는 없으니까 어떻게 id값이랑 password값을 불러와서 이메일로 불러줄까 -->
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
</div>
</body>

<style type="text/css">
body{
background:#eee;
}
.img-thumbnail{
    border:0px;    
}
.btn, .input-lg, .alert {border-radius:2px !important;}

</style>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
// 이 페이지 자체가 팝업으로 뜨게
// 캔슬하면 페이지 닫히게
// null, string, int, 정형화된 값 (이메일)
// DB에 문제가 없을 값. DB기준. dB에 집어넣기 위해서 정확한 값을.

// controller : jsp + java(db)
// service :  로직(file, )
// DAO : db, 결과 

// jsp는 html java 혼용 페이지. 
// jsp에서 java로 넘어오는 것은 vo.
// java에는 규칙이 있어서 vo라는 형태로 넘겨라. 느낌적인 느낌.
// java 자체에 틀. 준비된 vo라는 객체에 넣어줘.

// java에서 jsp로 넘기는 것은 model
// java에서 객체 형태를 만들어서 jsp에 넣어줌. 
// model은 동동 떠다니고. model은 bean으로 만드는것. 
// modelandview는 데이터타입 자체. model처럼 쓸 수 있게끔. model이랑 화면을 합쳐주는 느낌. model을 잡아다 쓰는 느낌. 
// model이랑 다름. model 사용안함. 

// http :  웹환경에서 사용하고있던것들 request, response, session

// model 

// function sendLoginInfo(choice){
// 	if(($('input[name="email"]').val() == "")){
// 		// email 주소를 입력하지 않았을 때 경고 띄움
// 		alert('email을 입력해주세요');
// 		//db에 이메일이랑 어캐비교
// // 		return false;
// 	}
// 	else{
// 		// email 주소가 입력 되었을 때 db에 존재하는 email인지 확인
	
//  		if(choice == "idPwd" ){
// 			$('form').attr('action', "forgotLoginInfo.do");
// 			//여기에 setattr해서 밸류에 db에서 꺼낸 id를 넣어줘야겠네
// 			$('form').submit(); 	
			
// 		}
 		
// 	}
	
// }
		
function sendLoginInfo(choice){
	var email = {"email" : $('input[name="email"]').val()}
$.ajax({
    url:"forgotLoginInfo.do", 
     type : "post",
     data : email,
     dataType:"json",
     success :  function(data1){
     	
       alert("성공");
       alert(data1);
       alert(JSON.stringify(data1));
       
       if(choice == 'id'){
    	   $.ajax({
    		   url:"../mail/send3.do",
    	       type:"post",
    	       data: {"email" : data1.email, "cusId" : data1.cusId},
    	       dataType: "text",
    	       success: function(text){
    	    	   alert(text);
    	       },
    	       error: function(xhr, status, error){
    	    	   alert("실패");
    	       }
    	   });
       } else if( choice == "pwd" ){
    	   $.ajax({
    		   url : "../mail/send3.do",
    		   type : "post",
    		   data : {"email" : data1.email, "pass" : data1.pass},
    		   dataType : "text",
    		   success : function(text) {
    			   alert(text);
    		   },
    		   error : function(xhr, status, error){
    			   alert("실패");
    		   }
    	   });
       }        
     },
     error : function(xhr, status, error){
        alert("실패"); 
     }
 });
}
	
	
</script>

</html>