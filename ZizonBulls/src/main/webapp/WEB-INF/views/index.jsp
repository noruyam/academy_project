<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath }" />

<%
	String cusId = (String) session.getAttribute("cusId");
if (cusId == null) {
	response.sendRedirect("customer/customerLogin.do");
}
%>

<!DOCTYPE html>
<html>
<head>
<link href="resources/style/main.css" />
<!-- <script type="text/javascript" src="resources/js/jquery-1.7.1.js"></script> -->
<!-- <script src="js/*"></script> -->
<meta charset="UTF-8">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="description" content="Name of your web site">
<meta name="author" content="Marketify">

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>Tokyo | Home</title>

<%-- <script src="${path }/resources/index/js/mainCSS.js"></script> --%>

<link
	href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">

<link rel="stylesheet" type="text/css" href="css/plugins.css" />
<link rel="stylesheet" type="text/css" href="css/dark.css" />
<link rel="stylesheet" type="text/css" href="css/colors.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />





    <style>
.map_wrap1, .map_wrap1 * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap1 a, .map_wrap1 a:hover, .map_wrap1 a:active{color:#000;text-decoration: none;}
.map_wrap1 {position:relative;width:100%;height:500px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}
</style>






    <style>
.map_wrap2, .map_wrap2 * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap2 a, .map_wrap2 a:hover, .map_wrap2 a:active{color:#000;text-decoration: none;}
.map_wrap2 {position:relative;width:100%;height:500px;}
#menu_wrap1 {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap1 hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap1 .option1{text-align: center;}
#menu_wrap1 .option1 p {margin:10px 0;}  
#menu_wrap1 .option1 button {margin-left:5px;}
#placesList1 li {list-style: none;}
#placesList1 .item1 {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList1 .item1 span {display: block;margin-top:4px;}
#placesList1 .item1 h5, #placesList1 .item1 .info1 {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList1 .item1 .info1{padding:10px 0 10px 55px;}
#placesList1 .info1 .gray1 {color:#8a8a8a;}
#placesList1 .info1 .jibun1 {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList1 .info1 .tel1 {color:#009900;}
#placesList1 .item1 .markerbg1 {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList1 .item1 .marker_1 {background-position: 0 -10px;}
#placesList1 .item1 .marker_2 {background-position: 0 -56px;}
#placesList1 .item1 .marker_3 {background-position: 0 -102px}
#placesList1 .item1 .marker_4 {background-position: 0 -148px;}
#placesList1 .item1 .marker_5 {background-position: 0 -194px;}
#placesList1 .item1 .marker_6 {background-position: 0 -240px;}
#placesList1 .item1 .marker_7 {background-position: 0 -286px;}
#placesList1 .item1 .marker_8 {background-position: 0 -332px;}
#placesList1 .item1 .marker_9 {background-position: 0 -378px;}
#placesList1 .item1 .marker_10 {background-position: 0 -423px;}
#placesList1 .item1 .marker_11 {background-position: 0 -470px;}
#placesList1 .item1 .marker_12 {background-position: 0 -516px;}
#placesList1 .item1 .marker_13 {background-position: 0 -562px;}
#placesList1 .item1 .marker_14 {background-position: 0 -608px;}
#placesList1 .item1 .marker_15 {background-position: 0 -654px;}
#pagination1 {margin:10px auto;text-align: center;}
#pagination1 a {display:inline-block;margin-right:10px;}
#pagination1 .on {font-weight: bold; cursor: default;color:#777;}
</style>






<style>
a.go-to-top {
	position: absolute;
	bottom: 100px;
	right: 100px;
	z-index: 99;
	display: inline-block;
	width: 50px;
	height: 50px;
	border-radius: 30px;
	line-height: 50px;
	text-align: center;
	text-decoration: none;
	background: #0055FF;
	opacity: 0.8;
	color: #fff;
	font-size: 30px;
}
</style>
</head>


<body>


	<!-- PRELOADER -->
	<div id="preloader">
		<div class="loader_line"></div>
	</div>
	<!-- /PRELOADER -->





	<!-- WRAPPER ALL -->
	<div class="tokyo_tm_all_wrap" data-magic-cursor="" data-color="black">
		<!-- If you want disable magic cursor add value "hide" -->

		<!-- MAGIC CURSOR VALUES: "", hide -->
		<!-- COLOR VALUES: blue, green, brown, pink, orange, black, white, purple, sky, cadetBlue, crimson, olive, red -->

		<!-- MODALBOX NEWS -->
		<div class="tokyo_tm_modalbox">
			<div class="box_inner">
				<div class="close">
					<a href="#"><img class="svg"
						src="./resources/img/svg/cancel.svg" alt="" /></a>
				</div>
				<div class="description_wrap"></div>
			</div>
		</div>
		<!-- /MODALBOX NEWS -->

		<!-- MODALBOX ABOUT -->
		<div class="tokyo_tm_modalbox_about">
			<div class="box_inner">
				<div class="close">
					<a href="#"><img class="svg"
						src="./resources/img/svg/cancel.svg" alt="" /></a>
				</div>
				<div class="description_wrap">
					<div class="my_box">
						<div class="left">
							<div class="about_title">
								<h3>Photography Skills</h3>
							</div>
							<div class="tokyo_progress">
								<div class="progress_inner" data-value="95">
									<span><span class="label">Wedding Photography</span><span
										class="number">95%</span></span>
									<div class="background">
										<div class="bar">
											<div class="bar_in"></div>
										</div>
									</div>
								</div>
								<div class="progress_inner" data-value="80">
									<span><span class="label">Lifestyle Photography</span><span
										class="number">80%</span></span>
									<div class="background">
										<div class="bar">
											<div class="bar_in"></div>
										</div>
									</div>
								</div>
								<div class="progress_inner" data-value="90">
									<span><span class="label">Family Photography</span><span
										class="number">90%</span></span>
									<div class="background">
										<div class="bar">
											<div class="bar_in"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="right">
							<div class="about_title">
								<h3>Language Skills</h3>
							</div>
							<div class="tokyo_progress">
								<div class="progress_inner" data-value="95">
									<span><span class="label">English</span><span
										class="number">95%</span></span>
									<div class="background">
										<div class="bar">
											<div class="bar_in"></div>
										</div>
									</div>
								</div>
								<div class="progress_inner" data-value="90">
									<span><span class="label">Japanese</span><span
										class="number">90%</span></span>
									<div class="background">
										<div class="bar">
											<div class="bar_in"></div>
										</div>
									</div>
								</div>
								<div class="progress_inner" data-value="85">
									<span><span class="label">Arabian</span><span
										class="number">85%</span></span>
									<div class="background">
										<div class="bar">
											<div class="bar_in"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="counter">
						<div class="about_title">
							<h3>Fun Facts</h3>
						</div>
						<ul>
							<li>
								<div class="list_inner">
									<h3>
										<span class="tokyo_tm_counter" data-from="0" data-to="777"
											data-speed="1500">0</span>
									</h3>
									<span class="name">Projects Completed</span>
								</div>
							</li>
							<li>
								<div class="list_inner">
									<h3>
										<span class="tokyo_tm_counter" data-from="0" data-to="500"
											data-speed="1500">0</span>+
									</h3>
									<span class="name">Happy Clients</span>
								</div>
							</li>
							<li>
								<div class="list_inner">
									<h3>
										<span class="tokyo_tm_counter" data-from="0" data-to="100"
											data-speed="1500">0</span>K+
									</h3>
									<span class="name">Lines of Code</span>
								</div>
							</li>
						</ul>
					</div>
					<div class="partners">
						<div class="about_title">
							<h3>Our Partners</h3>
						</div>
						<ul class="owl-carousel">
							<li class="item"><a href="#"><img
									src="./resources/img/partners/1.png" alt="" /></a></li>
							<li class="item"><a href="#"><img
									src="./resources/img/partners/2.png" alt="" /></a></li>
							<li class="item"><a href="#"><img
									src="./resources/img/partners/3.png" alt="" /></a></li>
							<li class="item"><a href="#"><img
									src="./resources/img/partners/4.png" alt="" /></a></li>
							<li class="item"><a href="#"><img
									src="./resources/img/partners/5.png" alt="" /></a></li>
							<li class="item"><a href="#"><img
									src="./resources/img/partners/6.png" alt="" /></a></li>
							<li class="item"><a href="#"><img
									src="./resources/img/partners/7.png" alt="" /></a></li>
							<li class="item"><a href="#"><img
									src="./resources/img/partners/8.png" alt="" /></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- /MODALBOX ABOUT -->

		<!-- MOBILE MENU -->
		<div class="tokyo_tm_mobile_menu">
			<div class="menu_inner">
				<div class="logo">
					<img src="${path }/resources/img/logo/dark.png" alt="" />
				</div>
				<div class="menu">
					<ul>
						<li><a href="#home"><img class="svg"
								src="${path }/resources/img/svg/home-run.svg" alt="" /></a></li>
						<li><a href="#about"><img class="svg"
								src="${path }/resources/img/svg/avatar.svg" alt="" /></a></li>
						<li><a href="#portfolio"><img class="svg"
								src="${path }/resources/img/svg/briefcase.svg" alt="" /></a></li>
						<li><a href="#news"><img class="svg"
								src="${path }/resources/img/svg/paper.svg" alt="" /></a></li>
<!-- 						<li><a href="#contact"><img class="svg" -->
<%-- 								src="${path }/resources/index/img/svg/mail.svg" alt="" /></a></li> --%>
						<li><a href="#contact1"><img class="svg"
								src="${path }/resources/img/svg/mail.svg" alt="" /></a></li>
<!-- 						<li><a href="#contact3"><img class="svg" -->
<%-- 								src="${path }/resources/img/svg/mail.svg" alt="" /></a></li> --%>
<!-- 						<li><a href="#contact4"><img class="svg" -->
<%-- 							src="${path }/resources/img/svg/mail.svg" alt="" /></a></li> --%>
						<li><a href="#contact5"><img class="svg"
							src="${path }/resources/img/svg/mail.svg" alt="" /></a></li>	
					</ul>
				</div>
			</div>
		</div>
		<!-- /MOBILE MENU -->

		<!-- LEFTPART -->
		<div class="leftpart">
			<div class="leftpart_inner">
				<div class="logo">
					<a href="#"><img
						src="${path }/resources/img/logo/dark.png" alt="" /></a>
				</div>
				<div class="menu">
					<ul>
						<li class="active"><a href="#home">Home</a></li>
						<li><a href="#about">About</a></li>
						<li><a href="#portfolio">Portfolio</a></li>
						<li><a href="#news">News</a></li>
<!-- 						<li><a href="#contact">Contact</a></li> -->
						<li><a href="#contact1">분리수거 장소찾기</a></li>
<!-- 						<li><a href="#contact3">업체찾기</a></li> -->
<!-- 						<li><a href="#contact4">업체찾기</a></li> -->
						<li><a href="#contact5">업체찾기</a></li>
					</ul>
				</div>
				<div class="copyright">
					<p>
						&copy; 2021 Tokyo<br>Created by <a
							href="customer/customerLogin.do">Marketify</a>
					</p>
					<br>
					<p>
						<a href="customer/customerInfo.do">My Profile</a>
					</p>
				</div>
			</div>
		</div>
		<!-- /LEFTPART -->

		<!-- RIGHTPART -->
		<div class="rightpart">
			<div class="rightpart_in">

				<!-- HOME -->
				<div id="home" class="tokyo_tm_section active">
					<div class="container">
						<div class="tokyo_tm_home">
							<div class="home_content">
								<div class="avatar">
									<div class="image"
										data-img-url="${path }/resources/img/portfolio/1.jpg"></div>
								</div>
								<div class="details">
									<h3 class="name">
										Adriano <span>Smith</span>
									</h3>
									<p class="job">Creative Photographer based in New York and
										happy to travel all over Europe to capture photos.</p>
									<div class="social">
										<ul>
											<li><a href="#"><img class="svg"
													src="${path }/resources/img/svg/social/facebook.svg"
													alt="" /></a></li>
											<li><a href="#"><img class="svg"
													src="${path }/resources/img/svg/social/twitter.svg"
													alt="" /></a></li>
											<li><a href="#"><img class="svg"
													src="${path }/resources/img/svg/social/instagram.svg"
													alt="" /></a></li>
											<li><a href="#"><img class="svg"
													src="${path }/resources/img/svg/social/dribbble.svg"
													alt="" /></a></li>
											<li><a href="#"><img class="svg"
													src="${path }/resources/img/svg/social/tik-tok.svg"
													alt="" /></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /HOME -->



				<!-- ABOUT -->
				<div id="about" class="tokyo_tm_section">
					<div class="container">
						<div class="tokyo_tm_about">
							<div class="about_image">
								<img src="./resources/img/thumbs/4-2.jpg" alt="" />
								<div class="main" data-img-url="./resources/img/portfolio/1.jpg"></div>
							</div>
							<div class="description">
								<h3 class="name">
									Adriano Smith &amp; <span>Photographer</span>
								</h3>
								<div class="description_inner">
									<div class="left">
										<p>Hello, I am a creative photographer based in New York
											and happy to travel all over Europe to capture your big day
											in candid and authentic photos. I will create a lasting
											memory of the people.</p>
										<div class="tokyo_tm_button">
											<a href="#">Learn More</a>
										</div>
									</div>
									<div class="right">
										<ul>
											<li><p>
													<span>Birthday:</span>01.07.1990
												</p></li>
											<li><p>
													<span>Age:</span>31
												</p></li>
											<li><p>
													<span>Address:</span>Ave 11, New York, USA
												</p></li>
											<li><p>
													<span>Email:</span><a href="mailto:mail@gmail.com">mail@gmail.com</a>
												</p></li>
											<li><p>
													<span>Phone:</span><a href="tel:+770221770505">+77 022
														177 05 05</a>
												</p></li>
											<li><p>
													<span>Study:</span>Univercity of Texas
												</p></li>
											<li><p>
													<span>Freelance:</span>Available
												</p></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /ABOUT -->

				<div class="tokyo_tm_portfolio_titles"></div>
				<!-- PORTFOLIO -->
				<div id="portfolio" class="tokyo_tm_section">
					<div class="container">
						<div class="tokyo_tm_portfolio" id="go_Top">
							<div class="tokyo_tm_title">
								<div class="title_flex">
									<div class="left">
										<span>분리수거 정보</span>
										<h3>분리수거 정보</h3>
									</div>
									<div class="portfolio_filter">
										<ul>
											<li><a href="#" class="current" data-filter="*">모두보기</a></li>
											<li><a href="#" data-filter=".vimeo">불연성쓰레기</a></li>
											<li><a href="#" data-filter=".youtube">재활용쓰래기</a></li>
											<li><a href="#" data-filter=".soundcloud">일반, 생활폐기물</a></li>
											<br>

											<li><a href="#" data-filter=".image">대형폐기물</a></li>
											<li><a href="#" data-filter=".detail">의류</a></li>
											<li><input type="search" value="" id="search"
												placeholder="쓰레기를 검색하세요."><input type="button"
												onclick="test11()"></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="list_wrapper">

								<ul class="portfolio_list gallery_zoom">
									<li class="vimeo">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="항아리" data-category="불연성쓰레기">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/항아리.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/항아리.jpg"></div>
												</a>
											</div>
										</div>
									</li>
									<li class="vimeo box">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="백열전구" data-category="불연성쓰레기">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/백열전구.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/백열전구.jpg"></div>
												</a>
											</div>
										</div>
									</li>
									<li class="soundcloud image box">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="요가매트" data-category="일반, 생활폐기물, 대형폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/요가매트.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/요가매트.jpg"></div>
												</a>
											</div>
										</div>
									</li>
									<li class="soundcloud vimeo box">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="가위" data-category="불연성쓰레기, 일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/가위.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/가위.jpg"></div>
												</a>
											</div>
										</div>
									</li>
									<li class="soundcloud vimeo youtube box">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="컵" data-category="불연성쓰레기, 재활용쓰레기, 일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/컵.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/컵.jpg"></div>
												</a>
											</div>
										</div>
									</li>
									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="필기구" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/필기구.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/필기구.jpg"></div>
												</a>
											</div>
										</div>
									</li>
									<li class="detail">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="신발" data-category="의류수거함">
												<a class="popup_info"
													href="./resources/img/portfolio/신발.jpg"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/신발.jpg"></div>
												</a>
											</div>
										</div>
									</li>
									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="빨대" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/빨대.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/빨대.jpg"></div>
												</a>
											</div>
										</div>
									</li>
									<li class="soundcloud youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="우산" data-category="재활용쓰레기, 일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/우산.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/우산.jpg"></div>
												</a>
											</div>
										</div>
									</li>
									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="보조배터리" data-category="폐건전지 전용 수거함, 재활용가능">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/보조배터리.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/보조배터리.jpg"></div>
												</a>
											</div>
										</div>
									</li>
									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="옷걸이" data-category="재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/옷걸이.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/옷걸이.jpg"></div>
												</a>
											</div>
										</div>
									</li>
									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="LED" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/LED.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/LED.jpg"></div>
												</a>
											</div>
										</div>
									</li>
									<li class="image">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="TV" data-category="대형폐기물">
												<a class="zoom" href="./resources/img/portfolio/TV.png">
													<img src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/TV.jpg"></div>
												</a>
											</div>
										</div>
									</li>
									<li class="image">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="가구" data-category="대형폐기물">
												<a class="zoom" href="./resources/img/portfolio/가구.png">
													<img src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/가구.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud detail">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="가방" data-category="일반, 생활폐기물, 의류수거함">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/가방.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/가방.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="viemo soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="거울" data-category="불연성쓰레기, 일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/거울.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/거울.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="건전지" data-category="폐건전지 전용 수거함">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/건전지.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/건전지.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="계란판" data-category="재활용쓰레기, 일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/계란판.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/계란판.jpg"></div>
												</a>
											</div>
										</div>
									</li>


									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="고무" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/고무.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/고무.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="고무대야" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/고무대야.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/고무대야.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="고무장갑" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/고무장갑.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/고무장갑.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="vimeo youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="고철" data-category="불연성쓰레기 ,재활용쓰레기">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/고철.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/고철.jpg"></div>
												</a>
											</div>
										</div>
									</li>




									<li class="image">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="골프가방" data-category="대형폐기물">
												<a class="zoom" href="./resources/img/portfolio/골프가방.jpg">
													<img src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/골프가방.jpg"></div>
												</a>
											</div>
										</div>
									</li>


									<li class="detail">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="모자" data-category="의류수거함">
												<a class="popup_info"
													href="./resources/img/portfolio/모자.jpg"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/모자.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="과자박스" data-category="재활용쓰레기, 일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/과자박스.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/과자박스.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="과자봉지" data-category="재활용쓰레기, 일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/과자봉지.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/과자봉지.jpg"></div>
												</a>
											</div>
										</div>
									</li>


									<li class="vimeo youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="그릇" data-category="불연성쓰레기, 재활용쓰레기">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/그릇.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/그릇.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="vimeo youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="기름병" data-category="불연성쓰레기, 재활용쓰레기">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/기름병.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/기름병.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="vimeo">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="깨진유리" data-category="불연성쓰레기">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/깨진유리.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/깨진유리.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud image">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="나무" data-category="일반, 생활폐기물, 대형폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/나무.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/나무.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="나무젓가락" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/나무젓가락.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/나무젓가락.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="vimeo youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="냄비" data-category="불연성쓰레기, 재활용쓰레기">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/냄비.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/냄비.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="image youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="냉장고" data-category="대형폐기물, 재활용쓰레기, 폐가전제품">
												<a class="zoom" href="./resources/img/portfolio/냉장고.jpg">
													<img src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/냉장고.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="image youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="노트북" data-category="대형폐기물, 재활용쓰레기, 폐가전제품">
												<a class="zoom" href="./resources/img/portfolio/노트북.jpg">
													<img src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/노트북.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="달걀껍질" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/달걀껍질.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/달걀껍질.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="vimeo">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="도자기" data-category="불연성쓰레기">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/도자기.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/도자기.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="동물뼈" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/동물뼈.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/동물뼈.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="두루마리휴지" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/두루마리휴지.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/두루마리휴지.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="image soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="라텍스" data-category="대형폐기물, 일반쓰레기">
												<a class="zoom" href="./resources/img/portfolio/라텍스.jpg">
													<img src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/라텍스.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="마스크" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/마스크.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/마스크.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="마우스" data-category="일반, 생활폐기물, 폐가전제품">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/마우스.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/마우스.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="image">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="매트리스" data-category="대형폐기물">
												<a class="zoom" href="./resources/img/portfolio/매트리스.jpg">
													<img src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/매트리스.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="멀티탭" data-category="일반, 폐가전제품">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/멀티탭.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/멀티탭.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="멸균팩" data-category="재활용쓰레기, 일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/멸균팩.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/멸균팩.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="모기향" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/모기향.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/모기향.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="image youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="모니터" data-category="재활용쓰레기, 대형폐기물, 폐가전제품">
												<a class="zoom" href="./resources/img/portfolio/모니터.jpg">
													<img src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/모니터.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="물티슈" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/물티슈.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/물티슈.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="박스" data-category="재활용쓰레기, 종이">
												<a class="popup-youtube"
													href="./resources/img/portfolio/박스.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/박스.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud image">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="베개" data-category="일반쓰레기, 대형폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/베개.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/베개.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="벽지" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/벽지.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/벽지.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="보냉백" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/보냉백.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/보냉백.jpg"></div>
												</a>
											</div>
										</div>
									</li>


									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="분유통" data-category="재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/분유통.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/분유통.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="비닐류" data-category="재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/비닐류.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/비닐류.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="비닐봉투" data-category="재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/비닐봉투.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/비닐봉투.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="vimeo youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="가스용기" data-category="불연성쓰레기, 재활용쓰레기">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/가스용기.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/가스용기.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="개별포장봉지" data-category="재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/개별포장봉지.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/개별포장봉지.jpg"></div>
												</a>
											</div>
										</div>
									</li>


									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="빵클립" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/빵클립.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/빵클립.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="생리대" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/생리대.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/생리대.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="vimeo youtube soundcloud image">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="석쇠" data-category="불연성쓰레기, 재활용쓰레기, 일반쓰레기, 대형폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/석쇠.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/석쇠.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="image">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="세탁기" data-category="대형폐기물, 폐가전제품">
												<a class="zoom" href="./resources/img/portfolio/세탁기.jpg">
													<img src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/세탁기.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="image">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="소파" data-category="대형폐기물">
												<a class="zoom" href="./resources/img/portfolio/소파.jpg">
													<img src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/소파.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="image">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="소형난방기구" data-category="대형폐기물, 폐가전제품">
												<a class="zoom" href="./resources/img/portfolio/소형난방기구.jpg">
													<img src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/소형난방기구.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="detail soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="속옷" data-category="의류수거함, 일반쓰레기">
												<a class="popup_info"
													href="./resources/img/portfolio/속옷.jpg"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/속옷.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube vimeo">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="술,탄산음료병" data-category="불연성쓰레기, 재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/술,탄산음료병.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/술,탄산음료병.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="스타킹" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/스타킹.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/스타킹.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="스티로폼" data-category="재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/스티로폼.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/스티로폼.jpg"></div>
												</a>
											</div>
										</div>
									</li>


									<li class="youtube vimeo">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="식사도구" data-category="재활용쓰레기, 불연성쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/식사도구.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/식사도구.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="식용유" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/식용유.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/식용유.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="vimeo soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="식칼" data-category="불연성쓰레기, 일반쓰레기">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/식칼.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/식칼.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="신용카드" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/신용카드.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/신용카드.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="실리콘" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/실리콘.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/실리콘.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="아이스팩" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/아이스팩.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/아이스팩.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="안경" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/안경.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/안경.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="vimeo youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="알루미늄캔" data-category="불연성쓰레기, 재활용쓰레기, 캔류">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/알루미늄캔.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/알루미늄캔.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="약" data-category="폐의약품 수거함">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/약.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/약.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="양말" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/양말.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/양말.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="에어캡" data-category="재활용쓰레기, 플라스틱">
												<a class="popup-youtube"
													href="./resources/img/portfolio/에어캡.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/에어캡.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="image">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="여행용가방" data-category="대형폐기물">
												<a class="zoom" href="./resources/img/portfolio/여행용가방.jpg">
													<img src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/여행용가방.jpg"></div>
												</a>
											</div>
										</div>
									</li>


									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="영수증" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/영수증.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/영수증.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="요거트용기" data-category="재활용쓰레기, 플라스틱">
												<a class="popup-youtube"
													href="./resources/img/portfolio/요거트용기.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/요거트용기.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="요구르트병" data-category="재활용쓰레기, 플라스틱">
												<a class="popup-youtube"
													href="./resources/img/portfolio/요구르트병.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/요구르트병.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="우유팩" data-category="재활용쓰레기, 종이">
												<a class="popup-youtube"
													href="./resources/img/portfolio/우유팩.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/우유팩.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube vimeo">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="유리병" data-category="불연성쓰레기, 재활용쓰레기, 유리">
												<a class="popup-youtube"
													href="./resources/img/portfolio/유리병.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/유리병.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="detail">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="의류" data-category="의류수거함">
												<a class="popup_info"
													href="./resources/img/portfolio/의류.jpg"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/의류.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="image">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="의자" data-category="대형폐기물">
												<a class="zoom" href="./resources/img/portfolio/의자.jpg">
													<img src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/의자.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="detail image soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="이불" data-category="의류수거함, 대형쓰레기, 일반쓰레기">
												<a class="popup_info"
													href="./resources/img/portfolio/이불.jpg"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/이불.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="이어폰" data-category="폐가전제품, 일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/이어폰.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/이어폰.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="전기면도기" data-category="폐가전제품">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/전기면도기.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/전기면도기.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="image">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="전기장판" data-category="대형폐기물">
												<a class="zoom" href="./resources/img/portfolio/전기장판.jpg">
													<img src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/전기장판.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="전단지" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/전단지.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/전단지.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="조리기구" data-category="재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/조리기구.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/조리기구.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="종이" data-category="재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/종이.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/종이.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="종이컵" data-category="재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/종이컵.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/종이컵.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="즉섭밥용기" data-category="재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/즉석밥용기.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/즉석밥용기.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube vimeo">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="참치캔" data-category="불연성쓰레기, 재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/참치캔.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/참치캔.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="책" data-category="재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/책.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/책.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube vimeo">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="철캔" data-category="불연성쓰레기, 재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/철캔.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/철캔.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="청소솔" data-category="재활용쓰레기, 일반쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/청소솔.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/청소솔.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="충전기" data-category="폐가전제품">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/충전기.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/충전기.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="치약" data-category="재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/치약.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/치약.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="image">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="침대" data-category="대형폐기물">
												<a class="zoom" href="./resources/img/portfolio/침대.jpg">
													<img src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/침대.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="칫솔" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/칫솔.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/칫솔.jpg"></div>
												</a>
											</div>
										</div>
									</li>


									<li class="soundcloud youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="카트리지" data-category="재활용쓰레기, 일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/카트리지.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/카트리지.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="image soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="캣타워" data-category="대형폐기물, 일반쓰레기">
												<a class="zoom" href="./resources/img/portfolio/캣타워.jpg">
													<img src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/캣타워.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="detail soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="커튼" data-category="의류수거함, 일반쓰레기">
												<a class="popup_info"
													href="./resources/img/portfolio/커튼.jpg"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/커튼.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="커피 찌꺼기" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/커피.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/커피.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="커피캡슐" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/커피캡슐.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/커피캡슐.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="image">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="컴퓨터" data-category="대형폐기물, 폐가전제품">
												<a class="zoom" href="./resources/img/portfolio/컴퓨터.jpg">
													<img src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/컴퓨터.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="컵라면용기" data-category="재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/컵라면용기.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/컵라면용기.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="코코넛껍질" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/코코넛껍질.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/코코넛껍질.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="콘돔" data-category="재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/콘돔.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/콘돔.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="쿠킹호일" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/쿠킹호일.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/쿠킹호일.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="키보드" data-category="일반, 생활폐기물, 폐가전제품">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/키보드.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/키보드.jpg"></div>
												</a>
											</div>
										</div>
									</li>


									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="태블릿" data-category="폐가전제품">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/태블릿.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/태블릿.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="vimeo youtube soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="텀블러" data-category="불연성쓰레기, 재활용쓰레기, 일반쓰레기">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/텀블러.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/텀블러.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="테이프" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/테이프.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/테이프.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube vimeo">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="통조림햄" data-category="불연성쓰레기, 재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/통조림햄.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/통조림햄.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="티백" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/티백.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/티백.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="티슈" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/티슈.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/티슈.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="페트병" data-category="재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/페트병.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/페트병.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="페트병뚜껑" data-category="재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/페트병뚜껑.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/페트병뚜껑.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="image">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="프린터" data-category="대형폐기물, 폐가전제품">
												<a class="zoom" href="./resources/img/portfolio/프린터.jpg">
													<img src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/프린터.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="플라스틱" data-category="재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/플라스틱.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/플라스틱.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="플라스틱용기" data-category="재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/플라스틱용기.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/플라스틱용기.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="하드디스크" data-category="일반쓰레기, 폐가전제품">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/하드디스크.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/하드디스크.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="해산물껍데기" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/해산물껍데기.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/해산물껍데기.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="향수" data-category="재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/향수.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/향수.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="vimeo">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="형광등" data-category="형광등 전용 수거함">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/형광등.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/형광등.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="혼합종이" data-category="일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/혼합종이.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/혼합종이.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="vimeo youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="화분" data-category="불연성쓰레기, 재활용쓰레기">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/화분.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/화분.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="화장품(스틱)" data-category="재활용쓰레기, 일반, 생활폐기물">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/화장품스틱.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/화장품스틱.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="화장품(튜브)" data-category="재활용쓰레기">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/화장품튜브.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/화장품튜브.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="화장품(펌프형)" data-category="재활용쓰레기">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/화장품펌프형.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/화장품펌프형.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="화장품" data-category="재활용쓰레기">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/화장품.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/화장품.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube vimeo">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="후라이팬" data-category="불연성쓰레기, 재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/후라이팬.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/후라이팬.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="youtube vimeo">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="휴대용부탄가스" data-category="불연성쓰레기, 재활용쓰레기">
												<a class="popup-youtube"
													href="./resources/img/portfolio/휴대용부탄가스.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/휴대용부탄가스.jpg"></div>
												</a>
											</div>
										</div>
									</li>

									<li class="soundcloud">
										<div class="inner">
											<div class="entry tokyo_tm_portfolio_animation_wrap"
												data-title="휴대폰 data-category="폐가전제품">
												<a class="popup-vimeo"
													href="./resources/img/portfolio/휴대폰.png"> <img
													src="./resources/img/thumbs/1-1.jpg" alt="" />
													<div class="main_image"
														data-img-url="./resources/img/portfolio/휴대폰.jpg"></div>
												</a>
											</div>
										</div>
									</li>




								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- /PORTFOLIO -->

				<!----------------------- 나눔 게시판 ------------------- -->


				<div id="news" class="tokyo_tm_section">
					<div class="container">
						<div class="tokyo_tm_contact">
							<div class="tokyo_tm_title">
								<div class="title_flex">
									<div class="left">
										<span>Notice Board</span>
										<h3>나눔 게시판</h3>
									</div>
								</div>
							</div>
							<div class="fields">

								<table border="1" id="nanumBoardTable">
									<tr>
										<th width="50">No.1</th>
										<th width="200">제목</th>
										<th width="300">작성자</th>
										<th width="150">작성시간</th>
										<th width="150">조회수</th>
									</tr>

								</table>
								<div class="tokyo_tm_button">
									<br> <a id="moveActive" onclick="moveActive()"
										style="cursor: pointer">새글 등록</a>
								</div>
							</div>

							<!-- If you want to change mail address to yours, please open modal.php and go to line 4 -->


						</div>
					</div>
				
			</div>





			<div id="news1" class="tokyo_tm_section">
				<div class="container">
					<div class="tokyo_tm_contact">
						<div class="tokyo_tm_title">
							<div class="title_flex">
								<div class="left">
									<span>Notice Board</span>
									<h3>나눔 게시판</h3>
									<br>
									<br>
								</div>
							</div>
						</div>
						<div class="fields">
							<div id="wrap">
								<div id="container">
									<div class="inner">
										<span>게시글 작성</span>
									</div>
									<input type="hidden" id="seq" value="${seq }">
									<div>
										<ul>
											<li><input id="title" type="text" placeholder="제목"></li>
											<li><input id="writer" type="text" placeholder="작성자"></li>
											<li><textarea id="content" cols="2" placeholder="내용"></textarea></li>
										</ul>
									</div>
									<div class="tokyo_tm_button">
										<a id="test3" onclick="insertBoard()" style="cursor: pointer"><span>글
												등록</span></a>
										<a id="delete" onclick="deleteBoard()" style="cursor:pointer; display: none" ><span>글 삭제</span></a>

									</div>

								</div>
							</div>

							<!--                         <br> <a id="test3" onclick="deleteBoard()"  style="cursor:pointer"><span>게시글 삭제</span></a> -->
							<!--                         <br> <a id="test4" onclick="goBoardList()" style="cursor:pointer">목록으로</a> -->
						</div>

						<!-- If you want to change mail address to yours, please open modal.php and go to line 4 -->


					</div>
				</div>
			
		</div>




		<!----------------------- 나눔 게시판 끝 ------------------- -->

		<!-- CONTACT -->
		<div id="contact" class="tokyo_tm_section">
			<div class="container">
				<div class="tokyo_tm_contact">
					<div class="tokyo_tm_title">
						<div class="title_flex">
							<div class="left">
								<span>trashMap</span>
								<h3>장소 찾기</h3>
							</div>
						</div>
					</div>
					<div class="map_wrap">
						<div class="map" id="ieatmaps"></div>
					</div>

					<div class="fields">
						<form action="insertTrashMap.do" method="post"
							enctype="multipart/form-data" class="contact_form"
							id="contact_form" name="contact_form" autocomplete="off">
							<div>
								<label for="file">파일</label> 
								<input type="file" id="file" name="file">
								<!--<button id="btn_submit" onclick="fn_submit()">전송</button> -->
							</div>
							<!-- 이미지 마크업 생성 공간 -->
							<div id="image_container">  
							
							</div>

							<div class="returnmessage"
								data-success="Your message has been received, We will contact you soon."></div>
							<div class="empty_notice">
								<span>Please Fill Required Fields</span>
							</div>
							<input type="hidden" id="tmPostNum" name="tmPostNum"
								value="${tmPostNum }"> <input type="hidden" id="tmCnt"
								name="tmCnt" value="${tmCnt }">
							<div class="first">
								<div id="hideDateAndCnt" style="cursor: pointer;">
									<span id="tmTime">날짜 : </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<span>조회수 : </span><span id="tmCntText"> </span>
									</div>
								<hr>
								<br>
								<ul>
									<li><input id="tmTitle" name="tmTitle" type="text"
										placeholder="제목"></li>
									<li><input id="tmAddr" name="tmAddr" type="text"
										placeholder="맵을 클릭해주세요"></li>
								</ul>
								<hr>
								<br>
							</div>
							<div class="last">
								<textarea id="tmContent" name="tmContent" placeholder="내용"></textarea>
							</div>
							<div class="tokyo_tm_button" data-position="left">
								<!--<a href="javascript:contact_form.submit();" id="insertTrashMap.do" > -->
								<a id="trashMapInsertOrUpdate" style="cursor: pointer"
									onclick="trashMapInsertOrUpdate()"> <span>글 등록</span></a> <a
									id="deleteTrashMap" style="display: none; cursor: pointer;"
									onclick="deleteTrashMap()"> <span>글 삭제</span></a>
							</div>

							<!-- If you want to change mail address to yours, please open modal.php and go to line 4 -->

						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- /CONTACT -->

		<!-- CONTACT3 -->
		<div id="contact3" class="tokyo_tm_section">
			<div class="container">
				<div class="tokyo_tm_contact">
					<div class="tokyo_tm_title">
						<div class="title_flex">
							<div class="left">
								<span>trashMap</span>
								<h3>장소 찾기</h3>
							</div>
						</div>
					</div>
					<!-- map. 시작 -->
					<!-- 					<div id="map" style="width:100%;height:350px;"></div> -->

					<div class="map_wrap1">
						<div id="map"
							style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

						<div id="menu_wrap" class="bg_white">
							<div class="option">
								<div>
									<form onsubmit="searchPlaces(); return false;">
										키워드 : <input type="text" value="인계동 청소 업체" id="keyword"
											size="15">
										<button type="submit">검색하기</button>
									</form>
								</div>
							</div>
							<hr>
							<ul id="placesList"></ul>
							<div id="pagination"></div>
						</div>
					</div>

					<div class="fields"></div>
				</div>
			</div>
		</div>
		<!-- /CONTACT3 -->

		<!-- CONTACT4 -->
		<div id="contact4" class="tokyo_tm_section">
			<div class="container">
				<div class="tokyo_tm_contact">
					<div class="tokyo_tm_title">
						<div class="title_flex">
							<div class="left">
								<span>trashMap</span>
								<h3>장소 찾기</h3>
							</div>
						</div>
					</div>
					<!-- map. 시작 -->
					
					<div class="map_wrap2">
						<div id="map1"
							style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

						<div id="menu_wrap1" class="bg_white">
							<div class="option1">
								<div>
									<form onsubmit="searchPlaces1(); return false;">
										키워드 : <input type="text" value="인계동 수거 업체" id="keyword1"
											size="15">
										<button type="submit">검색하기</button>
									</form>
								</div>
							</div>
							<hr>
							<ul id="placesList1"></ul>
							<div id="pagination1"></div>
						</div>
					</div>

					<div class="fields"></div>
				</div>
			</div>
		</div>
		<!-- /CONTACT4 -->
		<!-- CONTACT5 -->
		<div id="contact5" class="tokyo_tm_section">
			<div class="container">
				<div class="tokyo_tm_contact">
					<div class="tokyo_tm_title">
						<div class="title_flex">
							<div class="left">
								<span>trashMap</span>
								<h3>업체 고르기</h3>
							</div>
						</div>
					</div>
					<input type="button" style="width:300px; height: 300px;font-size: 50px;background-color: gray;" value="청소업체" onclick="goContact3()">
					<input type="button" style="width:300px; height: 300px;font-size: 50px;background-color: gray;" value="수거업체" onclick="goContact4()">
					
					

					<div class="fields"></div>
				</div>
			</div>
		</div>
		<!-- /CONTACT5 -->


		<!-- CONTACT1 -->
		<div id="contact1" class="tokyo_tm_section">
			<div class="container">
				<div class="tokyo_tm_contact">
					<div class="tokyo_tm_title">
						<div class="title_flex">
							<div class="left">
								<span>trashMap</span>
								<h3>장소 찾기 글목록</h3>
							</div>
						</div>
					</div>
					<div class="fields">
						<div class="tokyo_tm_button" data-position="left">
							<br> <a id="contactMove" onclick="contactMove()"
								style="cursor: pointer">새글 등록</a>
						</div>
						<table id="trashMapListTable">
							<tr>
								<th bgcolor="orange" width="50">번호</th>
								<th bgcolor="orange" width="200">제목</th>
								<th bgcolor="orange" width="200">주소</th>
								<th bgcolor="orange" width="100">아이디</th>
								<th bgcolor="orange" width="100">시간</th>
								<th bgcolor="orange" width="50">조회수</th>
							</tr>
						</table>
					
					</div>
					<!-- If you want to change mail address to yours, please open modal.php and go to line 4 -->
				</div>
			</div>
		</div>
	
	<!-- /CONTACT1 -->




















	</div>
	</div>
	<!-- /RIGHTPART -->

	<!-- CURSOR -->
	<div class="mouse-cursor cursor-outer"></div>
	<div class="mouse-cursor cursor-inner"></div>
	<!-- /CURSOR -->

	</div>
	<!-- / WRAPPER ALL -->












	<div id="test1" style="display: none;">
		<a href="#go_Top" class="go-to-top">↑</a>

	</div>



<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=63c14f714ab97f512079075fedb88c69&libraries=services"></script>
<script>
var markers = [];
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 






//장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();  

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

// 키워드로 장소를 검색합니다
searchPlaces();

// 키워드 검색을 요청하는 함수입니다
function searchPlaces() {

    var keyword = document.getElementById('keyword').value;

    if (!keyword.replace(/^\s+|\s+$/g, '')) {
        alert('키워드를 입력해주세요!');
        return false;
    }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch( keyword, placesSearchCB); 
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces(data);

        // 페이지 번호를 표출합니다
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않습니다.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}

// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {

    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    // 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {

        // 마커를 생성하고 지도에 표시합니다
        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i), 
            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);

        // 마커와 검색결과 항목에 mouseover 했을때
        // 해당 장소에 인포윈도우에 장소명을 표시합니다
        // mouseout 했을 때는 인포윈도우를 닫습니다
        (function(marker, title) {
            kakao.maps.event.addListener(marker, 'mouseover', function() {
                displayInfowindow(marker, title);
            });

            kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });

            itemEl.onmouseover =  function () {
                displayInfowindow(marker, title);
            };

            itemEl.onmouseout =  function () {
                infowindow.close();
            };
        })(marker, places[i].place_name);

        fragment.appendChild(itemEl);
    }

    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
}

// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {

    var el = document.createElement('li'),
    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                '<div class="info">' +
                '   <h5>' + places.place_name + '</h5>';

    if (places.road_address_name) {
        itemStr += '    <span>' + places.road_address_name + '</span>' +
                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
    } else {
        itemStr += '    <span>' +  places.address_name  + '</span>'; 
    }
                 
      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                '</div>';           

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, idx, title) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}

 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}
</script>







<script>
var markers1 = [];
var mapContainer1 = document.getElementById('map1'), // 지도를 표시할 div 
    mapOption1 = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map1 = new kakao.maps.Map(mapContainer1, mapOption1); 






//장소 검색 객체를 생성합니다
var ps1 = new kakao.maps.services.Places();  

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow1 = new kakao.maps.InfoWindow({zIndex:1});

// 키워드로 장소를 검색합니다
searchPlaces1();

// 키워드 검색을 요청하는 함수입니다
function searchPlaces1() {

    var keyword1 = document.getElementById('keyword1').value;

    if (!keyword1.replace(/^\s+|\s+$/g, '')) {
        alert('키워드를 입력해주세요!');
        return false;
    }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps1.keywordSearch( keyword1, placesSearchCB1); 
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB1(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces1(data);

        // 페이지 번호를 표출합니다
        displayPagination1(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않습니다.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}

// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces1(places) {

    var listEl1 = document.getElementById('placesList1'), 
    menuEl1 = document.getElementById('menu_wrap1'),
    fragment1 = document.createDocumentFragment(), 
    bounds1 = new kakao.maps.LatLngBounds(), 
    listStr1 = '';
    
    // 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods1(listEl1);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker1();
    
    for ( var i=0; i<places.length; i++ ) {

        // 마커를 생성하고 지도에 표시합니다
        var placePosition1 = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker1 = addMarker1(placePosition1, i), 
            itemEl1 = getListItem1(i, places[i]); // 검색 결과 항목 Element를 생성합니다

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds1.extend(placePosition1);

        // 마커와 검색결과 항목에 mouseover 했을때
        // 해당 장소에 인포윈도우에 장소명을 표시합니다
        // mouseout 했을 때는 인포윈도우를 닫습니다
        (function(marker1, title) {
            kakao.maps.event.addListener(marker1, 'mouseover', function() {
                displayInfowindow1(marker1, title);
            });

            kakao.maps.event.addListener(marker1, 'mouseout', function() {
                infowindow1.close();
            });

            itemEl1.onmouseover =  function () {
                displayInfowindow1(marker1, title);
            };

            itemEl1.onmouseout =  function () {
                infowindow1.close();
            };
        })(marker1, places[i].place_name);

        fragment1.appendChild(itemEl1);
    }

    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
    listEl1.appendChild(fragment1);
    menuEl1.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map1.setBounds(bounds1);
}

// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem1(index, places) {

    var el1 = document.createElement('li'),
    itemStr1 = '<span class="markerbg1 marker_' + (index+1) + '"></span>' +
                '<div class="info1">' +
                '   <h5>' + places.place_name + '</h5>';

    if (places.road_address_name) {
        itemStr1 += '    <span>' + places.road_address_name + '</span>' +
                    '   <span class="jibun1 gray1">' +  places.address_name  + '</span>';
    } else {
        itemStr1 += '    <span>' +  places.address_name  + '</span>'; 
    }
                 
      itemStr1 += '  <span class="tel1">' + places.phone +'&nbsp;&nbsp;' 
               if(places.phone=='010-5019-6125'){
            	   itemStr1 +=  '<input type="button" onclick="chat('+places.phone+')"value="채팅"/>'
               }
      itemStr1 += '</span></div>';           

    el1.innerHTML = itemStr1;
    el1.className = 'item1';

    return el1;
}
function chat(a) {
	
	 $.ajax({
         url:"chat.do"
         , type : "get"
         , data : a 
         , success :  function(data){
        	 alert("성공");
          }
         , error : function(xhr, status, error){
             alert("실패"); 
          }
      });	    
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker1(position, idx, title) {
    var imageSrc1 = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize1 = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions1 =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc1, imageSize1, imgOptions1),
            marker1 = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });

    marker1.setMap(map1); // 지도 위에 마커를 표출합니다
    markers1.push(marker1);  // 배열에 생성된 마커를 추가합니다

    return marker1;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker1() {
    for ( var i = 0; i < markers1.length; i++ ) {
        markers1[i].setMap(null);
    }   
    markers1 = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination1(pagination) {
    var paginationEl1 = document.getElementById('pagination1'),
        fragment1 = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl1.hasChildNodes()) {
        paginationEl1.removeChild (paginationEl1.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el1 = document.createElement('a');
        el1.href = "#";
        el1.innerHTML = i;

        if (i===pagination.current) {
            el1.className = 'on';
        } else {
            el1.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment1.appendChild(el1);
    }
    paginationEl1.appendChild(fragment1);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow1(marker1, title) {
    var content1 = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow1.setContent(content1);
    infowindow1.open(map1, marker1);
}

 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods1(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}
</script>










	<!-- SCRIPTS -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="./resources/js/jquery.js"></script>
	<!--[if lt IE 10]> <script type="text/javascript" src="js/ie8.js"></script> <![endif]-->
	<script src="./resources/js/plugins.js"></script>
	<script src="./resources/js/init.js"></script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA5bpEs3xlB8vhxNFErwoo3MXR64uavf6Y&callback=initMap"></script>
	<!-- /SCRIPTS -->

</body>
</html>