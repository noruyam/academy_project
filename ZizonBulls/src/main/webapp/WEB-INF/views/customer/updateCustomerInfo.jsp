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
<title>profile edit data and skills - Bootdey.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="${path }/resources/customer/js/jquery-1.10.2.min.js"></script>
<link href="${path }/resources/customer/css/updateCustomerInfo.css" rel="stylesheet">
<script src="${path }/resources/customer/js/updateCustomerInfo.js"></script>
</head>
<body>

	<div class="container">
		<div class="main-body">
			<div class="row">
				<div class="col-lg-4">
					<div class="card">
						<div class="card-body">
							<div class="d-flex flex-column align-items-center text-center">
							  <img src="${path }/resources/upload/${sessionScope.profilePictureName_en}" alt="Admin" class="rounded-circle" width="150">
<!-- 								<img src="https://bootdey.com/img/Content/avatar/avatar6.png" -->
<!-- 									alt="Admin" class="rounded-circle p-1 bg-primary" width="110"> -->
								<div class="mt-3">
									<h4>${sessionScope.cusName }</h4>
									<p class="text-secondary mb-1">Full Stack Developer</p>
<!-- 									<p class="text-muted font-size-sm">Bay Area, San Francisco, -->
<!-- 										CA</p> -->
<!-- 									<button class="btn btn-primary">Follow</button> -->
<!-- 									<button class="btn btn-outline-primary">Message</button> -->
								</div>
							</div>
							<hr class="my-4">
							
						</div>
					</div>
				</div>
			<form action="fromUpdateCustomerInfo.do" method="post" class="col-lg-8">	
				<div class="col-lg-8">
					<div class="card">
						<div class="card-body">
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Full Name</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="${sessionScope.cusName }">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Email</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="email" class="form-control" name="email"
										value="${sessionScope.email }">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">ID</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" name="cusId" value="${sessionScope.cusId }">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Pass</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" name="pass" value="${sessionScope.pass }">
								</div>
							</div>
<!-- 							<div class="row mb-3"> -->
<!-- 								<div class="col-sm-3"> -->
<!-- 									<h6 class="mb-0">Address</h6> -->
<!-- 								</div> -->
<!-- 								<div class="col-sm-9 text-secondary"> -->
<!-- 									<input type="text" class="form-control" -->
<!-- 										value="Bay Area, San Francisco, CA"> -->
<!-- 								</div> -->
<!-- 							</div> -->
							<div class="row">
								<div class="col-sm-3"></div>
								<div class="col-sm-9 text-secondary">
									<input type="submit" class="btn btn-primary px-4"
										value="Save Changes">
									<a class="btn btn-info " href="index.do">Main Page</a>
								</div>
							</div>
						</div>
					</div>
				</form>
					
					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<style type="text/css">
		body {
			background: #f7f7ff;
			margin-top: 20px;
		}
		
		.card {
			position: relative;
			display: flex;
			flex-direction: column;
			min-width: 0;
			word-wrap: break-word;
			background-color: #fff;
			background-clip: border-box;
			border: 0 solid transparent;
			border-radius: .25rem;
			margin-bottom: 1.5rem;
			box-shadow: 0 2px 6px 0 rgb(218 218 253/ 65%), 0 2px 6px 0
				rgb(206 206 238/ 54%);
		}
		
		.me-2 {
			margin-right: .5rem !important;
		}
	</style>

	<script type="text/javascript">
		
	</script>
</body>
</html>


	
