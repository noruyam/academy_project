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

<link rel="stylesheet" type="text/css" href="css/plugins.css" />
<!-- <link rel="stylesheet" type="text/css" href="./resources/css/plugins.css" /> -->
<link rel="stylesheet" type="text/css" href="css/dark.css" />
<link rel="stylesheet" type="text/css" href="css/colors.css" />
<!-- <link rel="stylesheet" type="text/css" href="css/style.css" /> -->
<link rel="stylesheet" type="text/css" href="./resources/css/style.css" />

<!-- 팝업css -->
<link rel="stylesheet" href="./resources/css/magnific-popup.css">





<style>
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
					<img src="${path }/resources/img/logo/지존불쓰.png" alt="" />
				</div>
				<div class="menu">
					<ul>
						<li><a href="#home" class="offTs"><img class="svg"
								src="${path }/resources/img/svg/home-run.svg" alt="" /></a></li>
						<li><a href="#about" class="offTs"><img class="svg"
								src="${path }/resources/img/svg/avatar.svg" alt="" /></a></li>
						<li><a href="#portfolio" class="onTs"><img class="svg"
								src="${path }/resources/img/svg/briefcase.svg" alt="" /></a></li>
						<li><a href="#news" class="offTs"><img class="svg"
								src="${path }/resources/img/svg/paper.svg" alt="" /></a></li>
<!-- 						<li><a href="#contact"><img class="svg" -->
<%-- 								src="${path }/resources/index/img/svg/mail.svg" alt="" /></a></li> --%>
						<li><a href="#contact1" class="offTs"><img class="svg"
								src="${path }/resources/img/svg/mail.svg" alt="" /></a></li>
<!-- 						<li><a href="#contact3"><img class="svg" -->
<%-- 								src="${path }/resources/img/svg/mail.svg" alt="" /></a></li> --%>
<!-- 						<li><a href="#contact4"><img class="svg" -->
<%-- 							src="${path }/resources/img/svg/mail.svg" alt="" /></a></li> --%>
						<li><a href="#contact5" class="offTs"><img class="svg"
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
						src="${path }/resources/img/logo/지존불쓰.png" alt="" /></a>
				</div>
				<div class="menu">
					<ul>
						<li class="active"><a href="#home" class="offTs">Home</a></li>
						<li><a href="#about" class="offTs">About</a></li>
						<li><a href="#portfolio" class="onTs">분리수거 정보</a></li>
						<li><a href="#news" class="offTs">나눔게시판</a></li>
<!-- 						<li><a href="#contact">Contact</a></li> -->
						<li><a href="#contact1" class="offTs">분리수거 장소찾기</a></li>
<!-- 						<li><a href="#contact3">업체찾기</a></li> -->
<!-- 						<li><a href="#contact4">업체찾기</a></li> -->
						<li><a href="#contact5" class="offTs">업체찾기</a></li>
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
										data-img-url="${path }/resources/img/portfolio/메인.png"></div>
								</div>
								<div class="details">
									<h3 class="name">
									   <span style="color: green;">지</span><span style="font-size: 30px; color: gray;">상에</span><span
                                 style="color: red;"><br>존</span><span style="font-size: 30px; color: gray;">재하는</span><br>
                              <span style="color: blue;">불</span><span style="font-size: 30px; color: gray;">편한</span><span
                                 style="color: orange;"><br>쓰</span><span style="font-size: 30px; color: gray;">레기🔥</span>
                                                            </h3>
                           <p class="job">
                              이 사이트의 분리수거 정보는 blisgo.com<br>쓰레기백과사전에서 가져온 것을 알려드립니다
                           </p>
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
												placeholder="쓰레기를 검색하세요." onkeyup="if(window.event.keyCode==13){search()}"></li>
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
												<a class="popup-vimeo"
													href="./resources/img/portfolio/신발.png"> <img
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
												<a class="zoom" href="./resources/img/portfolio/골프가방.png">
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
												<a class="popup-vimeo"
													href="./resources/img/portfolio/모자.png"> <img
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
												<a class="zoom" href="./resources/img/portfolio/냉장고.png">
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
												<a class="zoom" href="./resources/img/portfolio/노트북.png">
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
												<a class="zoom" href="./resources/img/portfolio/라텍스.png">
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
												<a class="zoom" href="./resources/img/portfolio/매트리스.png">
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
												<a class="zoom" href="./resources/img/portfolio/모니터.png">
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
												<a class="zoom" href="./resources/img/portfolio/세탁기.png">
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
												<a class="zoom" href="./resources/img/portfolio/소파.png">
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
												<a class="zoom" href="./resources/img/portfolio/소형난방기구.png">
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
												<a class="popup-vimeo"
													href="./resources/img/portfolio/속옷.png"> <img
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
												<a class="zoom" href="./resources/img/portfolio/여행용가방.png">
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
												<a class="popup-vimeo"
													href="./resources/img/portfolio/의류.png"> <img
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
												<a class="zoom" href="./resources/img/portfolio/의자.png">
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
												<a class="popup-vimeo"
													href="./resources/img/portfolio/이불.png"> <img
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
												<a class="zoom" href="./resources/img/portfolio/전기장판.png">
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
												<a class="zoom" href="./resources/img/portfolio/침대.png">
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
												<a class="zoom" href="./resources/img/portfolio/캣타워.png">
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
												<a class="popup-vimeo"
													href="./resources/img/portfolio/커튼.png"> <img
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
												<a class="zoom" href="./resources/img/portfolio/컴퓨터.png">
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
												<a class="zoom" href="./resources/img/portfolio/프린터.png">
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
						</div>
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
										<span>게시글 작성</span><br><br>
									</div>
									<input type="hidden" id="seq" name="seq" value="${seq }">
									<input type="hidden" id="cnt" name="cnt" value="${cnt }">								
									<div id="cnt" style="cursor: pointer">
										<span>조회수  : </span><span id="cnt1"></span>
										
									</div>
									<div>
										<label for="fname">파일 : </label> <input id="fname" type="file" name="uploadfile" accept="*"/>
										<button type="button" onclick="fn_submit1()">파일전송</button>
									</div><br><br><hr><br><br>
									<div>
										<ul>
											<li><input id="title" type="text" placeholder="제목"></li>
											<li><input id="writer" type="text" placeholder="작성자"></li>
											<li><textarea id="content" cols="2" placeholder="내용"></textarea></li>
										</ul>
									</div>
									<div class="tokyo_tm_button">
										<a id="insert" onclick="insertBoard()" style="cursor: pointer"><span>글
												등록</span></a>
										<a id="delete" onclick="deleteBoard()" style="cursor:pointer; display: none" ><span>글 삭제</span></a>
									</div>
								</div>
							</div>						
						</div>
					</div>
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
					<div class="map_wrap3">
						<div id="map3"
							style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
<!-- 						<div class="hAddr3"> -->
<!-- 							<span class="title3">지도중심기준 행정동 주소정보</span>  -->
<!-- 							<span id="centerAddr3"></span> -->
<!-- 						</div> -->
					</div>
					<div class="fields" style="margin-top:100px">
						<form action="insertTrashMap.do" method="post"
							enctype="multipart/form-data" class="contact_form"
							id="contact_form" name="contact_form" autocomplete="off">
							<div>
								<label for="file">파일</label> 
								<input type="file" id="file" name="file">
							</div>
							<!-- 이미지 마크업 생성 공간 -->
							<div id="image_container"></div>
							<div class="returnmessage"
								data-success="Your message has been received, We will contact you soon."></div>
							<div class="empty_notice">
								<span>Please Fill Required Fields</span>
							</div>
							<input type="hidden" id="tmPostNum" name="tmPostNum"
								value="${tmPostNum }"> <input type="hidden" id="tmCnt"
								name="tmCnt" value="${tmCnt }">
							<div class="first">
								<div id="hideDateAndCnt">
									<span id="tmTime">날짜 : </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<span>조회수 : </span>
									<span id="tmCntText"> </span>
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
					<div id="trashMapListTableCnt"></div>
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
<script type="text/javascript">
    (function(d, m){
        var kommunicateSettings = 
            {"appId":"21251fef9449302413eb6b3172d623d48","popupWidget":true,"automaticChatOpenOnNavigation":true};
        var s = document.createElement("script"); s.type = "text/javascript"; s.async = true;
        s.src = "https://widget.kommunicate.io/v2/kommunicate.app";
        var h = document.getElementsByTagName("head")[0]; h.appendChild(s);
        window.kommunicate = m; m._globals = kommunicateSettings;
    })(document, window.kommunicate || {});
/* NOTE : Use web server to view HTML files as real-time update will not work if you directly open the HTML file in the browser. */
</script>
<!-- 	팝업js -->
<script src="./resources/js/jquery.magnific-popup.js"></script>

	<!-- SCRIPTS -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="./resources/js/jquery.js"></script>
	<!--[if lt IE 10]> <script type="text/javascript" src="js/ie8.js"></script> <![endif]-->
	<script src="./resources/js/plugins.js"></script>
	<script src="./resources/js/init.js"></script>
	<!-- /SCRIPTS -->

</body>
</html>