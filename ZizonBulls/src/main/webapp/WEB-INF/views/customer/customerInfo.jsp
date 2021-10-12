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
    <title>profile with data and skills - Bootdey.com</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="${path }/resources/customer/js/jquery-1.10.2.min.js"></script>
    <link href="${path }/resources/customer/css/customerInfo.css" rel="stylesheet" type="text/css">
    <script src="${path }/resources/customer/js/customerInfo.js"></script>
</head>
<body>

<div class="container">
    <div class="main-body">
    
          <!-- Breadcrumb -->
          <nav aria-label="breadcrumb" class="main-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.do">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">User Profile</li>
            </ol>
          </nav>
          <!-- /Breadcrumb -->
    
          <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
                    <img src="${path }/resources/upload/${sessionScope.profilePictureName_en}" alt="Admin" class="rounded-circle" width="150">
                    <div class="mt-3">

                      <h4>회원의 이름 : ${sessionScope.cusName } </h4>
                      <p class="text-secondary mb-1">Full Stack Developer</p>
                      <p class="text-muted font-size-sm">Bay Area, San Francisco, CA</p>
                      <form name="uploadProfilePicture" action="uploadProfilePicture.do" method="post" enctype="multipart/form-data">
	                      <input type="file" id="profilePicture" name="profilePicture" class="btn btn-primary" value="프로필 사진 변경"/>
						  <input type="text" name="cusId" value="${sessionScope.cusId }"/>
	                      <button onclick="submit_by_name()" class="btn btn-outline-primary">선택</button>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card mt-3">

              </div>
            </div>
            <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Full Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      	${sessionScope.cusName } 
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      ${sessionScope.email } 
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">ID</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      ${sessionScope.cusId }
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Password</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      ${sessionScope.pass }
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Address</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      Bay Area, San Francisco, CA
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-12">
						<form action="fromDeleteCustomerInfo.do" method="post">
						    <a class="btn btn-info " href="updateCustomerInfo.do">Edit</a>
						
							<input type="hidden" name="cusId" value="${sessionScope.cusId }"/>
							<input class="btn btn-info " type="submit" value="계정삭제" onclick="return reallyDelete()"/>
						</form>
                    </div>
                  </div>
                </div>
              </div>

            </div>
          </div>

        </div>
    </div>

<style type="text/css"> 
body{
    margin-top:20px;
    color: #1a202c;
    text-align: left;
    background-color: #e2e8f0;    
}
.main-body {
    padding: 15px;
}
.card {
    box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
}

.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid rgba(0,0,0,.125);
    border-radius: .25rem;
}

.card-body {
    flex: 1 1 auto;
    min-height: 1px;
    padding: 1rem;
}

.gutters-sm {
    margin-right: -8px;
    margin-left: -8px;
}

.gutters-sm>.col, .gutters-sm>[class*=col-] {
    padding-right: 8px;
    padding-left: 8px;
}
.mb-3, .my-3 {
    margin-bottom: 1rem!important;
}

.bg-gray-300 {
    background-color: #e2e8f0;
}
.h-100 {
    height: 100%!important;
}
.shadow-none {
    box-shadow: none!important;
}

</style>

<script type="text/javascript">
	function reallyDelete(){
		if(confirm("정말 계정을 삭제하시겠습니까?")){
			return true;
		} else{ 
			return false;
		}
	}
	
	function submit_by_name(){
		var formObj = $('form[name="uploadProfilePicture"]');
		formObj.submit();
	}
</script>
</body>
</html>