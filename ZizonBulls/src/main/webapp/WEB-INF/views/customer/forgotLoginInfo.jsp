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
	function sendLoginInfo(choice){
		if(($('input[name="email"]').val() == "")){
			// email 주소를 입력하지 않았을 때 경고 띄움
			alert('email을 입력해주세요');
			return false;
		}
 		if(choice == "id" ){
			$('form').attr('action', "forgotLoginInfo.do");
			$('form').submit(); 			
		}
 		else if(choice == "pwd"){
 			$('form').attr('action', "forgotLoginInfo1.do");
			$('form').submit();
 		}

		return false;

	}
	
</script>

</html>