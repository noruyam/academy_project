/*
 * Copyright (c) 2021 Marketify
 * Author: Marketify
 * This file is made for CURRENT TEMPLATE
*/


jQuery(document).ready(function(){

	"use strict";
	
	// here all ready functions
	
	tokyo_tm_menu();
	tokyo_tm_modalbox_news();
	tokyo_tm_modalbox_about();
	tokyo_tm_modalbox_portfolio();
	tokyo_tm_my_progress();
	tokyo_tm_mycounter();
	tokyo_tm_projects();
	tokyo_tm_portfolio();
	tokyo_tm_cursor();
	tokyo_tm_imgtosvg();
	tokyo_tm_popup();
	tokyo_tm_data_images();
	tokyo_tm_contact_form();
	tokyo_tm_owl_carousel();
	jQuery(window).load('body', function(){
		tokyo_tm_my_load();
	});
	
});

function reload() {
	location.reload();   
}
// -----------------------------------------------------
// --------------- FUNCTIONS ----------------------
// -----------------------------------------------------

// -------------------------------------------------
// -------------------- MENU ---------------------
// -------------------------------------------------
//
function tokyo_tm_menu(){
	
	"use strict";
	
	var list	 = jQuery('.tokyo_tm_all_wrap .leftpart .menu ul li,.tokyo_tm_mobile_menu .menu ul li');
	var vContent = jQuery('.tokyo_tm_all_wrap');
	var vSection = jQuery('.tokyo_tm_section');
	
	list.on('click',function(){
		var element = jQuery(this);
		var myHref	= element.find('a').attr('href');
		if(!element.hasClass('active')){
			list.removeClass('active');
			element.addClass('active');
			vSection.removeClass('active');
			vContent.find(myHref).addClass('active').animate({ scrollTop: 0 });
			
		}
		
		
		if(myHref=="#contact1"){
			getTrashMapList(1);

		}else if(myHref=="#news"){
			getBoardList();
		}
	});
}

// -------------------------------------------------
// ------------- MODALBOX NEWS -------------------
// -------------------------------------------------

function tokyo_tm_modalbox_news(){
	
	"use strict";
	
	var modalBox	= jQuery('.tokyo_tm_modalbox');
	var list 		= jQuery('.tokyo_tm_news ul li');
	var closePopup	= modalBox.find('.close');
	
	list.each(function(){
		var element 	= jQuery(this);
		var details 	= element.find('.list_inner').html();
		var buttons 	= element.find('.details .title a,.tokyo_tm_full_link,.tokyo_tm_read_more a');
		var mainImage	= element.find('.main');
		var imgData		= mainImage.data('img-url');
		var title		= element.find('.title');
		var titleHref	= element.find('.title a').html();
		buttons.on('click',function(){
			jQuery('body').addClass('modal');
			modalBox.addClass('opened');
			modalBox.find('.description_wrap').html(details);
			mainImage = modalBox.find('.main');
			mainImage.css({backgroundImage: 'url('+imgData+')'});
			title = modalBox.find('.title');
			title.html(titleHref);
			tokyo_tm_imgtosvg();
			return false;
		});
	});
	closePopup.on('click',function(){
		modalBox.removeClass('opened');
		modalBox.find('.description_wrap').html('');
		jQuery('body').removeClass('modal');
		return false;
	});
}

// -------------------------------------------------
// ------------- MODALBOX ABOUT ------------------
// -------------------------------------------------

function tokyo_tm_modalbox_about(){
	
	"use strict";
	
	var modalBox	= jQuery('.tokyo_tm_modalbox_about');
	var opener		= jQuery('.tokyo_tm_about .tokyo_tm_button a');
	var closer		= modalBox.find('.close');
	
	opener.on('click',function(){
		modalBox.addClass('opened');
		tokyo_tm_my_progress();
		tokyo_tm_mycounter();
		return false;
	});
	closer.on('click',function(){
		modalBox.removeClass('opened');
		return false;
	});
}

// -------------------------------------------------
// ------------- MODALBOX PORTFOLIO --------------
// -------------------------------------------------

function tokyo_tm_modalbox_portfolio(){
	
	"use strict";
	
	var modalBox	= jQuery('.tokyo_tm_modalbox');
	var button		= jQuery('.tokyo_tm_portfolio .popup_info');
	
	button.on('click',function(){
		var element 	= jQuery(this);
		var parent		= element.closest('li');
		var details 	= parent.find('.details_all_wrap').html();
		var title 		= parent.find('.entry').data('title');
		var category 	= parent.find('.entry').data('category');
		
		modalBox.addClass('opened');
		modalBox.find('.description_wrap').html(details);
		modalBox.find('.top_image').html(parent.find('.popup_info').html());
		modalBox.find('.portfolio_main_title').html('<h3>'+title+'</h3>'+'<span>'+category+'</span>');
		tokyo_tm_popup();
	});
}

// -------------------------------------------------
// ----------------- PORTFOLIO ---------------
// -------------------------------------------------

function tokyo_tm_projects() {
	
	"use strict";
	
	jQuery('.tokyo_tm_portfolio_animation_wrap').each(function() {
		jQuery(this).on('mouseenter', function() {
			if (jQuery(this).data('title')) {
				jQuery('.tokyo_tm_portfolio_titles').html(jQuery(this).data('title') + '<span class="work__cat">' + jQuery(this).data('category') + '</span>');
				jQuery('.tokyo_tm_portfolio_titles').addClass('visible');
			}

			jQuery(document).on('mousemove', function(e) {
				jQuery('.tokyo_tm_portfolio_titles').css({
					left: e.clientX - 10,
					top: e.clientY + 25
				});
			});
		}).on('mouseleave', function() {
			jQuery('.tokyo_tm_portfolio_titles').removeClass('visible');
		});
	});
}

// filterable

function tokyo_tm_portfolio(){

	"use strict";

	if(jQuery().isotope) {

		// Needed variables
		var list 		 = jQuery('.tokyo_tm_portfolio .portfolio_list');
		var filter		 = jQuery('.tokyo_tm_portfolio .portfolio_filter ul');

		if(filter.length){
			// Isotope Filter
			filter.find('a').on('click', function(){
				var selector = jQuery(this).attr('data-filter');
				list.isotope({ 
					filter				: selector,
					animationOptions	: {
						duration			: 750,
						easing				: 'linear',
						queue				: false
					}
				});
				return false;
			});	

			// Change active element class
			filter.find('a').on('click', function() {
				filter.find('a').removeClass('current');
				jQuery(this).addClass('current');
				return false;
			});	
		}
	}
}

// -------------------------------------------------
// ------------- PROGRESS BAR --------------------
// -------------------------------------------------

function tokyo_tm_my_progress(){
	"use strict";
	
	jQuery('.tokyo_progress .bar_in').css({width:'0px'});
	jQuery('.tokyo_progress .bar').removeClass('open');
	function tdProgress(container){
		container.find('.progress_inner').each(function() {
			var progress 		= jQuery(this);
			var pValue 			= parseInt(progress.data('value'), 10);
			var pColor			= progress.data('color');
			var pBarWrap 		= progress.find('.bar');
			var pBar 			= progress.find('.bar_in');
			pBar.css({width:pValue+'%', backgroundColor:pColor});
			setTimeout(function(){pBarWrap.addClass('open');});
		});
	}
	jQuery('.tokyo_progress').each(function() {
		var pWrap 			= jQuery(this);
		pWrap.waypoint({handler: function(){tdProgress(pWrap);},offset:'90%'});	
	});
}

// -----------------------------------------------------
// --------------- PRELOADER -----------------------
// -----------------------------------------------------

function tokyo_tm_preloader(){
	
	"use strict";
	
	var isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ? true : false;
	var preloader = $('#preloader');
	
	if (!isMobile) {
		setTimeout(function() {
			preloader.addClass('preloaded');
		}, 800);
		setTimeout(function() {
			preloader.remove();
		}, 2000);

	} else {
		preloader.remove();
	}
}

// -----------------------------------------------------
// ------------------- COUNTER -------------------
// -----------------------------------------------------

function tokyo_tm_mycounter(){
	
	"use strict";
	
	jQuery('.tokyo_tm_counter').removeClass('stop');
	
	jQuery('.tokyo_tm_counter').each(function() {

	var el		= jQuery(this);
		el.waypoint({
			handler: function(){

				if(!el.hasClass('stop')){
					el.addClass('stop').countTo({
						refreshInterval: 50,
						formatter: function (value, options) {
							return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
						},	
					});
				}
			},offset:'95%'	
		});
	});
}

// -----------------------------------------------------
// ----------------- MY LOAD ----------------------
// -----------------------------------------------------

function tokyo_tm_my_load(){
	
	"use strict";
	
	var speed	= 500;
	setTimeout(function(){tokyo_tm_preloader();},speed);
}

// -----------------------------------------------------
// ------------------ CURSOR ----------------------
// -----------------------------------------------------

function tokyo_tm_cursor(){
    "use strict";
	
	var myCursor	= jQuery('.mouse-cursor');
	
	if(myCursor.length){
		if ($("body")) {
        const e = document.querySelector(".cursor-inner"),
            t = document.querySelector(".cursor-outer");
        let n, i = 0,
            o = !1;
        window.onmousemove = function (s) {
            o || (t.style.transform = "translate(" + s.clientX + "px, " + s.clientY + "px)"), e.style.transform = "translate(" + s.clientX + "px, " + s.clientY + "px)", n = s.clientY, i = s.clientX
        }, $("body").on("mouseenter", "a, .cursor-pointer", function () {
            e.classList.add("cursor-hover"), t.classList.add("cursor-hover")
        }), $("body").on("mouseleave", "a, .cursor-pointer", function () {
            $(this).is("a") && $(this).closest(".cursor-pointer").length || (e.classList.remove("cursor-hover"), t.classList.remove("cursor-hover"))
        }), e.style.visibility = "visible", t.style.visibility = "visible"
    }
	}
};

// -----------------------------------------------------
// --------------- IMAGE TO SVG ------------------
// -----------------------------------------------------

function tokyo_tm_imgtosvg(){
	
	"use strict";
	
	jQuery('img.svg').each(function(){
		
		var jQueryimg 		= jQuery(this);
		var imgClass		= jQueryimg.attr('class');
		var imgURL			= jQueryimg.attr('src');

		jQuery.get(imgURL, function(data) {
			// Get the SVG tag, ignore the rest
			var jQuerysvg = jQuery(data).find('svg');

			// Add replaced image's classes to the new SVG
			if(typeof imgClass !== 'undefined') {
				jQuerysvg = jQuerysvg.attr('class', imgClass+' replaced-svg');
			}

			// Remove any invalid XML tags as per http://validator.w3.org
			jQuerysvg = jQuerysvg.removeAttr('xmlns:a');

			// Replace image with new SVG
			jQueryimg.replaceWith(jQuerysvg);

		}, 'xml');

	});
}

// -----------------------------------------------------
// -------------------- POPUP ---------------------
// -----------------------------------------------------

function tokyo_tm_popup(){
	
	"use strict";

	jQuery('.gallery_zoom').each(function() { // the containers for all your
												// galleries
		jQuery(this).magnificPopup({
			delegate: 'a.zoom', // the selector for gallery item
			type: 'image',
			gallery: {
			  enabled:true
			},
			removalDelay: 300,
			mainClass: 'mfp-fade'
		});

	});
	jQuery('.popup-youtube, .popup-vimeo').each(function() { // the
																// containers
																// for all your
																// galleries
		jQuery(this).magnificPopup({
			disableOn: 700,
			type: 'iframe',
			mainClass: 'mfp-fade',
			removalDelay: 160,
			preloader: false,
			fixedContentPos: false
		});
	});
	
	jQuery('.soundcloude_link').magnificPopup({
	  type : 'image',
	   gallery: {
		   enabled: true, 
	   },
	});
}

// -----------------------------------------------------
// --------------- DATA IMAGES --------------------
// -----------------------------------------------------

function tokyo_tm_data_images(){
	
	"use strict";
	
	var data			= jQuery('*[data-img-url]');
	
	data.each(function(){
		var element			= jQuery(this);
		var url				= element.data('img-url');
		element.css({backgroundImage: 'url('+url+')'});
	});
}

// -----------------------------------------------------
// ---------------- CONTACT FORM -----------------
// -----------------------------------------------------

function tokyo_tm_contact_form(){
	
	"use strict";
	
	jQuery(".contact_form #insertTrashMap").on('click', function(){
		
		var name 		= jQuery(".contact_form #tmTitle").val();
		var email 		= jQuery(".contact_form #tmAddr").val();
		var message 	= jQuery(".contact_form #tmContent").val();
		var subject 	= jQuery(".contact_form #subject").val();
		var success     = jQuery(".contact_form .returnmessage").data('success');
		
		jQuery(".contact_form .returnmessage").empty(); // To empty previous
														// error/success
														// message.
		// checking for blank fields
		if(name===''||email===''||message===''){
			
			jQuery('div.empty_notice').slideDown(500).delay(2000).slideUp(500);
		}
		else{
			// Returns successful data submission message when the entered
			// information is stored in database.
			jQuery.post("modal/contact.php",{ ajax_name: name, ajax_email: email, ajax_message:message, ajax_subject: subject}, function(data) {
				
				jQuery(".contact_form .returnmessage").append(data);// Append
																	// returned
																	// message
																	// to
																	// message
																	// paragraph
				
				
				if(jQuery(".contact_form .returnmessage span.contact_error").length){
					jQuery(".contact_form .returnmessage").slideDown(500).delay(2000).slideUp(500);		
				}else{
					jQuery(".contact_form .returnmessage").append("<span class='contact_success'>"+ success +"</span>");
					jQuery(".contact_form .returnmessage").slideDown(500).delay(4000).slideUp(500);
				}
				
				if(data===""){
					jQuery("#contact_form")[0].reset();// To reset form fields
														// on success
				}
				
			});
		}
		return false; 
	});
}

// -----------------------------------------------------
// ---------------- OWL CAROUSEL -----------------
// -----------------------------------------------------

function tokyo_tm_owl_carousel(){

	"use strict";
	
	var carousel			= jQuery('.partners .owl-carousel');
	
	var rtlMode	= false;

	if(jQuery('body').hasClass('rtl')){
		rtlMode = 'true';
	}

	carousel.owlCarousel({
		loop: true,
		items: 4,
		lazyLoad: false,
		margin: 50,
		autoplay: true,
		autoplayTimeout: 7000,
		rtl: rtlMode,
		dots: true,
		nav: false,
		navSpeed: true,
		responsive:{
			0:{items:1},
			480:{items:2},
			768:{items:3},
			1040:{items:3},
			1200:{items:3},
			1600:{items:4},
			1920:{items:4}
		}
	});
	tokyo_tm_imgtosvg();
}






//-----------------------------------------------------
//-------------------- 업체찾기 게시판 ---------------------
//-----------------------------------------------------

// 처음 화면 contact에서 contact1로 화면 바꿔주는 function
function contactMove(){
	$("#trashMapInsertOrUpdate").show();
	var list	 = $('#contact1');
	var element	 = $('#contact');
	list.removeClass('active');
	element.addClass('active');
}

function contactMove(tmPostNum,tmTitle,tmAddr,tmContent,tmTime,tmCnt){
	$("#trashMapInsertOrUpdate").show();
	if(tmPostNum>0){
		$("#deleteTrashMap").show();
		$("#hideDateAndCnt").show();
	}else{
		$("#deleteTrashMap").hide(); 
		$("#hideDateAndCnt").hide();
	}
	var list	= $('#contact1');
	var element = $('#contact');
	
	list.removeClass('active');
	element.addClass('active');	
	
		
	$("#tmPostNum").val(tmPostNum);
	$("#tmTitle").val(tmTitle);
	$("#tmAddr").val(tmAddr);
	$("#tmContent").val(tmContent);		 
}

// 새글등록하거나 기존 글을 업데이트해주는 function
function trashMapInsertOrUpdate(){

	// Insert 또는 Update를 구별해주기 위해서 tmPostNum값이 없으면 Insert, tmPostNum 값이 있으면 Update 해줌
	var tmPostNum1 = $("#tmPostNum").val();
	
	// 만약 파일첨부에 파일이 있으면 파일 첨부 실행하기 위한 if문
	if($("#file")[0].files[0]!=null){
		
		// 밑에 파일 첨부해주는 function을 부르고 리턴값을 저장하는 변수 
		var fileUploadReturn = fn_submit();
		
		// 파일이 있으면 파일이름까지 데이터값을 가져감(json형식)
		var insertTrashMapData = {
				tmTitle : $("#tmTitle").val(),
				tmContent : $("#tmContent").val(),
				tmAddr : $("#tmAddr").val(),			
				tmFname : fileUploadReturn.tmFname,
				tmFnameEn: fileUploadReturn.tmFnameEn,		
				tmGetLat:$('#tmGetLat').val(),
				tmGetLng:$('#tmGetLng').val(),
				cusId:$('#sessionId').val()
		};
		var updateTrashMapData = {
				tmPostNum : $("#tmPostNum").val(),
				tmTitle : $("#tmTitle").val(),
				tmContent : $("#tmContent").val(),
				tmAddr : $("#tmAddr").val(),
				tmFname : fileUploadReturn.tmFname,
				tmFnameEn: fileUploadReturn.tmFnameEn,
				tmGetLat:$('#tmGetLat').val(),
				tmGetLng:$('#tmGetLng').val()
		};
	// 만약 파일첨부에 파일이 없으면 
	}else{
		
		// 파일 네임은 빼고 데이터값을 가져감(json형식)
		var insertTrashMapData = {
				tmTitle : $("#tmTitle").val(),
				tmContent : $("#tmContent").val(),
				tmAddr : $("#tmAddr").val(),
				tmGetLat:$('#tmGetLat').val(),
				tmGetLng:$('#tmGetLng').val(),
				cusId:$('#sessionId').val()
			};
		
		var updateTrashMapData = {
				tmPostNum : $("#tmPostNum").val(),
				tmTitle : $("#tmTitle").val(),
				tmContent : $("#tmContent").val(),
				tmAddr : $("#tmAddr").val(),
				tmGetLat:$('#tmGetLat').val(),
				tmGetLng:$('#tmGetLng').val()
		};
	}
	
	// 맵을 클릭해서 위도값이 들어갔을때만 ajax 실행
	if (!($('#tmGetLat').val())){
		alert('맵을 클릭해주세요');
	}else{
	
	// 업데이트를 위한 데이터값(json형식)
	
	
	// 만약 tmPostNum1값이 있으면 update를 위한 ajax 실행
		if(tmPostNum1>0){
			
			// controller에 updateTrashMap를 실행해주는 ajax
			 $.ajax({
				 url : "updateTrashMap.do"
		         , type : "post"
		         , data :updateTrashMapData
		         , success : function(data){
		        	 
		        	 // 업데이트를 성공하면 목록불러와주는 function 실행
		             getTrashMapList(1);
		         }
	             , error : function(xhr, status, error){
	                 alert("통신 에러");
	             }
		     });
		
		// 만약 tmPostNum1값이 없으면 insert를 위한 ajax 실행
		}else{
			
			// controller에  insertTrashMap를 실행해주는 ajax
			 $.ajax({
	                url : "insertTrashMap.do"
	                , type : "post"
	                , data :insertTrashMapData 
	                , success : function(data){
	                	
	                	// 인서트를 성공하면 목록불러와주는 function 실행
	                    getTrashMapList(1);
	                }
			 		, error : function(request, error){
	//                    alert("fail");
	//                    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	                }
	         });
		}
	}
}


// 목록List를 불러와주는 function
function getTrashMapList(cnt) {
	
	 // 맵 초기화
	 removeMarker5();
	 
	 // 데이터 리스트의 총 갯수를 변수로 지정
	 var ListCnt=getTrashMapListCnt();
	 
	 // 한페이지당 10개씩 보여주기위한 변수 저장
	 var getTrashMapListOnePageCnt=10;
	 
	 // 누를때 맨위로 스크롤 이동
	 $('#contact1').animate({ scrollTop: 0 });
	
 	 // 목록으로 갈때 이전 화면에 있던 file을 지워줌
	 $('#file').val("");
	 
	 // 위도 경도 초기화
	 $('#tmGetLat').val("");
	 $('#tmGetLng').val("");
	
	 // 목록에 있는 동적 테이블을 지워주고 새로 리스트를 불러오기 위해서 우선 지워줌
	 $( '#trashMapListTable > #removeTbody').remove();
	 
	 // 페이지 숫자 div에 남아있는거 지우고 다시 for문 돌리기 위함 
	 $( '#trashMapListTableCnt > #removecnt').remove();
	 
	 // 목록에 있는 이미지 지워줌
	 $('#trashMapImagePanel').remove();
	
	 // controller에  getTrashMapList를 실행해주는 ajax 
	 $.ajax({
	       url : "getTrashMapList.do",
	       type : "get",
	       dataType:"json",
	
	       // controller에서 리턴된 List배열을 result에 담아서 for문으로 table에 뿌려줌
	       success : function(result){
	    	 
	    	// 리턴된 List의 길이
	       	var len=result.length;
	       	
	       	// index에 리턴된 List를 담기 위해 만들어놓은 테이블의 id값
	       	var table=$('#trashMapListTable');
	       	
	       	// 동적 테이블을 생성하기 위한 변수 str 생성
	       	var str="";
	       	
	       	// 나중에 목록을 불러와줄때마다 동적으로 생성된 table을 지워주기위해 tbody로 먼저 묶어서 id 지정하여 remove 실행
	       	str += "<tbody id='removeTbody' class='removeTbody'>";

	       	// 테이블을 생성하기 위한 for문 
	       	for(var i=((cnt-1)*getTrashMapListOnePageCnt);i<getTrashMapListOnePageCnt*cnt;i++){
	       		
	       		// 만약 i가 총 리스트 갯수보다 많아지면 멈춤
	       		if(i>ListCnt-1){
	       			break;
	       		}

	       		// tr전체를 클릭했을때 onclick을 실행하도록 동적 테이블 생성, 
	       		// onclick 했을때 ()안에 변수를 가지고 들어가서 getTrashMap에서 활용하기 위한 동적테이블 생성
	       		str += '<Tr class="removeTbody" style="cursor:pointer;" align="center" onclick="getTrashMap('+result[i].tmPostNum+','+result[i].tmCnt+')">'
	       		str += '<TD class="removeTbody"  name="tmPostNum" align="center">' + result[i].tmPostNum
	       		+ '</TD><TD class="removeTbody" name="tmTitle" align="center">'+ result[i].tmTitle
	       		+ '</TD><TD class="removeTbody" name="tmAddr" align="center">' + result[i].tmAddr
	       		+ '</TD><TD class="removeTbody" name="cusId" align="center">'+result[i].cusId+'</TD>'
	       		+ '</TD><TD class="removeTbody" name="tmTime" align="center">' +result[i].tmTime
	       		+ '</TD><TD class="removeTbody" name="tmCnt" align="center">' + result[i].tmCnt+'</td>'
	       		+ '<input type="hidden" class="removeTbody" align="center" value="'+result[i].tmContent+'">'
	            str += '</TR>'	
	            	
	       	}
	       	str += "</tbody>";
	       	var strcnt="";
	       	for(var j=1;j<(ListCnt/getTrashMapListOnePageCnt)+1;j++){
	       		strcnt+='<a id="removecnt" style="cursor:pointer;" onclick="getTrashMapList('+j+')">['+j+']</a>'
	       	}
	       	// str에 만들어놓은 테이블생성값들을 index에 만들어둔 테이블에 더해줌
	       	table.append(str).trigger("create");
	       	$('#trashMapListTableCnt').append(strcnt).css("cursor:pointer");;
	       },
	       error : function(request, error){
	           alert("fail");
	           alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
	   });
	 
 	// 기존에 있던 화면을 List목록 화면으로 변경해주는 기능
 	var list	 = $('#contact');
	var element	 = $('#contact1');
	list.removeClass('active');
	element.addClass('active');	
}

//목록을 클릭하면 인서트했었던 목록가져옴
function getTrashMap(tmPostNum,tmCnt) {
	gettmDatList(1,tmPostNum);
	// 누를때 맨위로 스크롤 이동
	$('#contact').animate({ scrollTop: 0 });
	
	// 목록을 불러오기위한 데이터값(json형식) 
	var getTrashMap = {
		tmPostNum : tmPostNum,
		tmCnt : tmCnt
	};
	var asd=tmPostNum;
	// 각 목록을 테이블 val에 뿌려주기위한 변수지정
	var tmTitle = $("#tmTitle")
	var tmContent = $("#tmContent")
	var tmAddr = $("#tmAddr")
	var tmCnt = $("#tmCnt")
	var tmTime = $("#tmTime")
	var tmCntText =  $("#tmCntText")
	var sessionId = $('#sessionId').val();
	
	$.ajax({
		url : "getTrashMap.do"
		, type : "get"
		, data : getTrashMap
		, dataType:"json"
		, success : function(result){
			
			// 성공하면 각 테이블에 맞게 값이 들어감
			tmTitle.val(result.tmTitle);
			tmContent.val(result.tmContent);
			tmAddr.val(result.tmAddr);
			tmCntText.text(result.tmCnt);
			tmTime.text(result.tmTime);
			var tmGetLat1=result.tmGetLat;
			var tmGetLng1=result.tmGetLng;
			$('#tmGetLat').val(tmGetLat1);
			$('#tmGetLng').val(tmGetLng1);
			removeMarker6(tmGetLat1,tmGetLng1);
			
			
			
			if(sessionId==result.cusId){
				$("#trashMapInsertOrUpdate").show();
				$("#deleteTrashMap").show();
				$("#hideDateAndCnt").show();
			}else{
				$("#trashMapInsertOrUpdate").hide(); 
				$("#deleteTrashMap").hide(); 
				$("#hideDateAndCnt").hide();
			}
			
			if(tmPostNum>0){
				if(result.tmFnameEn!=null){
					trashMapCreateImages(result.tmFnameEn);
				}
			}
			// 기존에 있던 List화면을 목록 화면으로 변경해주는 기능
			var list	 = $('#contact1');
			var element	 = $('#contact');
			list.removeClass('active');
			element.addClass('active');		
		}
		, error : function(request, error){
			alert("fail");
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});

	// 만약 tmPostNum이 있으면 업데이트를 하는 버튼을 보여주고, 아니면 인서트하는 버튼을 보여줌
//	if(tmPostNum>0){
//		
//		$("#deleteTrashMap").show();
//		$("#hideDateAndCnt").show();
//		
//	}else{
//		$("#deleteTrashMap").hide(); 
//		$("#hideDateAndCnt").hide();
//	}
	
	
	var list	 = $('#contact1');
	var element	 = $('#contact');
	list.removeClass('active');
	element.addClass('active');	
	$("#tmPostNum").val(tmPostNum);	
}

// 목록 삭제를 위한 function
function deleteTrashMap(){
	
	// 딜리트를 위한 데이터값(json형식) 
	var deleteTrashMapData = {
			tmPostNum : $("#tmPostNum").val(),		
	};
	
	$.ajax({
		url : "deleteTrashMap.do"
		, type : "get"
		, data :deleteTrashMapData 
		, success : function(data){

			// 인서트를 성공하면 목록불러와주는 function 실행
			getTrashMapList(1);
		}
		, error : function(xhr, status, error){
			alert("통신 에러");
		}
	});
			
}


// 파일 첨부가 체인지되면 handleImgFileSelect 조건문 실행
$(document).ready(function() {
	$("#file").on("change", handleImgFileSelect);
});

// 첨부된 파일이 이미지 형식만 올릴수있도록 하는 function
function handleImgFileSelect(e) {
	var sel_file;
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);
	var reg = /(.*?)\/(jpg|jpeg|png|bmp)$/;
	
	filesArr.forEach(function(f) {
		if (!f.type.match(reg)) {
			alert("확장자는 이미지 확장자만 가능합니다.");
			return;
		}
		sel_file = f;	
		var reader = new FileReader();
		reader.onload = function(e) {
			$("#img").attr("src", e.target.result);
		}
		reader.readAsDataURL(f);
	});
}


// 파일 업로드해주는 function
function fn_submit(){
	// 파일 업로드 후 나온 값을 리턴해주기 위한 변수
	var fnamereturn;
	
	// 사용자가 파일첨부한 파일을 폼데이터 형식으로 ajax 실행
	var form = new FormData();
	form.append( "file", $("#file")[0].files[0] );
	
	jQuery.ajax({
		url : "result.do"
		, type : "POST"
		, processData : false
		, contentType : false
		, data : form
		, async: false
		, dataType:"json"
		, success:function(response) {
			
			// 리턴된 값을 위에 지정한 변수에 저장
			fnamereturn = response;
		}
		,error: function (jqXHR) { 
			alert(jqXHR.responseText); 
			return false;
		}
	});
	console.log("fn_submit 안에 있는 fnamereturn :"+fnamereturn);
	
	// 저장된 이름을 리턴해줌
	return fnamereturn;
}

function trashMapCreateImages(objImageInfo) { 
	var trashmapimage = "./resources/trashmappic/"+objImageInfo; 
	var strDOM = ""; 

	// N번째 이미지 정보를 구하기 var image = images[i]; 
	// N번째 이미지 패널을 생성 
	strDOM += '<div id="trashMapImagePanel" class="image_panel">';
	strDOM += '<img src="' + trashmapimage + '">';
	strDOM += '</div>'; 
	
	// 이미지 컨테이너에 생성한 이미지 패널들을 추가하기
	var $imageContainer = $("#image_container"); 
	$imageContainer.append(strDOM); 
}

// 청소업체 버튼 클릭했을때 화면 전환
function goContact3() {
	var list	 = jQuery('.tokyo_tm_all_wrap .leftpart .menu ul li,.tokyo_tm_mobile_menu .menu ul li');
	var vContent = jQuery('.tokyo_tm_all_wrap');
	var vSection = jQuery('.tokyo_tm_section');
	var element = jQuery(this);
	var myHref	= element.find('a').attr('href');
		
	if(!element.hasClass('active')){
		list.removeClass('active');
		element.addClass('active');
		vSection.removeClass('active');
		vContent.find(myHref).addClass('active').animate({ scrollTop: 0 });
	}
		
	var list	 = $('#contact5');
	var element	 = $('#contact3');
	list.removeClass('active');
	element.addClass('active');
}

// 수거업체 버튼 클릭했을때 화면 전환
function goContact4() {
	var list	 = jQuery('.tokyo_tm_all_wrap .leftpart .menu ul li,.tokyo_tm_mobile_menu .menu ul li');
	var vContent = jQuery('.tokyo_tm_all_wrap');
	var vSection = jQuery('.tokyo_tm_section');	
	var element = jQuery(this);
	var myHref	= element.find('a').attr('href');
	
	if(!element.hasClass('active')){
		list.removeClass('active');
		element.addClass('active');
		vSection.removeClass('active');
		vContent.find(myHref).addClass('active').animate({ scrollTop: 0 });
	}
	
	var list	 = $('#contact5');
	var element	 = $('#contact4');
	list.removeClass('active');
	element.addClass('active');
}

function getTrashMapListCnt(){
	// 파일 업로드 후 나온 값을 리턴해주기 위한 변수
	var cnt;
	
	// 사용자가 파일첨부한 파일을 폼데이터 형식으로 ajax 실행
	jQuery.ajax({
		url : "getTrashMapListCnt.do"
		, type : "POST"
		, async: false
		, dataType:"text"
		, success:function(response) {
			
			// 리턴된 값을 위에 지정한 변수에 저장
			cnt = response;
		}
		,error: function (jqXHR) { 
			alert(jqXHR.responseText); 
			return false;
		}
	});
	// 저장된 숫자를 리턴해줌
	return cnt;
}	

//-----------------------------------------------------
//-------------------- /업체찾기 게시판 ---------------------
//-----------------------------------------------------


//--------------------나눔 게시판 -------------------------

// moveActive : 메뉴에서 나눔게시판 클릭시 게시판리스트 화면에서 글 등록화면으로 넘겨주는 함수
// insertBoard : 게시판 글 등록해주는 함수
// updateBoard : getBoardList함수에서 table tr에 onlick 을 주고 클릭버튼 활성화 및 값을 가져와 수정과 동시에 게시판 리스트로 넘어가는 함수
// deleteBoard : updateBoard화면이 보여지면 삭제버튼이 보여주며 삭제를 위한 함수
// getBoard : table tr에 부여된 onclick 을 누를시 if문을 활용하여 updateBoard 함수로 넘어가게 해주는 함수
// getBoardList : 나눔게시판 클릭시  DB에 입력된 게시판 작성 값을 가져와 리스트를 보여주고 index에 입력된 테이블에 맞춰서 값을 가져와주고 
// uploadFile : 사진 업로드할때 필요한 ajax				   

function moveActive(){
	
	$("#title").val("");
	$("#writer").val("");
	$("#content").val("");
	$("#cnt").val("");
	
	$("#delete").hide();  
	
	   $("#insert").html("<span>글 등록</span>");
	   $("#insert").attr("onclick","insertBoard()");
	   
	   var list    = $('#news');
	   var element    = $('#news1');
	   
	         list.removeClass('active');
	         element.addClass('active');   
	         
	         
	}

//-----------------insertBoard------------------ 

function insertBoard(){
//	   alert("나눔게시판 새글등록 제목 : " + $("#title").val());
	
	var uploadfile = fn_submit1();
			   
	var yn = confirm("게시글을 등록하시겠습니까?");
	
	var insertBoardData = {
			
			title : $("#title").val(),
			writer : $("#writer").val(),
			content : $("#content").val(),
			fname : $("#fname").val()
	};
	
	if(yn){
		
		$.ajax({
			url : "insertBoard.do",
			type : "get",
			data :insertBoardData ,
			
			success : function(data){
				
				getBoardList();
				
			},
			error : function(xhr, status, error){
				alert("통신 에러");
				
			}
			
		});
		var list    = $('#news1');
		var element    = $('#news');
		
		list.removeClass('active');
		element.addClass('active');   
	} 
}


//-----------------updateBoard------------------ 

function updateBoard(seq){
	
	 
	   var updateBoard1 = {
			 seq : $("#seq").val(),
		     title : $("#title").val(),
	         writer : $("#writer").val(),
	         content : $("#content").val()
	   };
	  
	      $.ajax({
	         url:"updateBoard.do", 
	          type : "get",
	          data :updateBoard1 ,
	          success :  function(data){
	        	 alert("성공");
	        	 
	        	  getBoardList();
	          },
	          error : function(xhr, status, error){
	             alert("실패"); 
	               
	          }
	      
	      });
	          
	}





//-----------------deleteBoard------------------ 

function deleteBoard(seq){
	   
		
	   var deletedata = {
	            seq : $("#seq").val(),
	            title : $("#title").val(),
	            writer : $("#writer").val(),
	            content : $("#content").val()
	            
	   };
	      $.ajax({
	         url:"deleteBoard.do",
	         type : "get",
	         data : deletedata,
	         success : function(data){
	            
	            getBoardList();
	         },
	         error : function(xhr, status, error){
	            alert("에러");
	         }
	      });
	
}

//-----------------getBoard------------------

function getBoard(seq,title,writer,content,regDate,cnt){
//	   alert(seq);
//	   alert(cnt);
	
	 
	   if(seq > 0 ){
	      
//		   alert("#seq"+seq);
	   $("#delete").show();
	   $("#cnt").show();
	   
	   $("#insert").html("<span>글 수정</span>");
	   $("#insert").attr("onclick","updateBoard("+seq+")");
	   
	   }
	   var updatecnt = {
	            seq : seq,
	            cnt : cnt
	            
	            
	   };
	      $.ajax({
	         url:"updatecnt.do",
	         type : "get",
	         data : updatecnt,
	         success : function(data){
	            
	         },
	         error : function(xhr, status, error){
	            alert("에러");
	         }
	      });
	      
	      $("#seq").val(seq),
	      $("#title").val(title),
       $("#writer").val(writer),
       $("#content").val(content),
       $("#cnt1").text(cnt)
       
	   var list    = $('#news');
	   var element    = $('#news1');
	      
	    list.removeClass('active');
	    element.addClass('active');   
	        
}

//-----------------uploadFile------------------


//파일 업로드해주는 function
function fn_submit1(){
// 파일 업로드 후 나온 값을 리턴해주기 위한 변수
var fnamereturn;
 
// 사용자가 파일첨부한 파일을 폼데이터 형식으로 ajax 실행
var form = new FormData();
form.append( "file", $("#fname")[0].files[0] );

jQuery.ajax({
   url : "result1.do"
   , type : "POST"
   , processData : false
   , contentType : false
   , data : form
   , async: false
   , dataType:"json"
   , success:function(response) {
      
      // 리턴된 값을 위에 지정한 변수에 저장
      fnamereturn = response;
   }
   ,error: function (jqXHR) { 
      alert(jqXHR.responseText); 
      return false;
   }
});
console.log("fn_submit 안에 있는 fnamereturn :"+fnamereturn);

// 저장된 이름을 리턴해줌
return fnamereturn;
}

			

//-----------------getBoardList------------------

function getBoardList() {
//console.log( $('#removetest10').val);
	
$('#nanumBoardTable > #removetest10').remove();
	
$.ajax({
       url : "getBoardList.do",
       type : "get",
       dataType:"json",
       success : function(result){
//        alert(result[0]);
          var len=result.length;
          var table=$('#nanumBoardTable');
          
          var str ="<tbody id = 'removetest10'>";
          for(var i=0;i<len;i++){
                str += "<TR onclick='getBoard("+result[i].seq+",\""+result[i].title+"\",\""+result[i].writer+"\",\""+result[i].content+"\","+result[i].regDate+","+result[i].cnt+")'>"
                str += '<TD name="seq" align="center">' + result[i].seq
                + '</TD><TD name="title" align="center">' + result[i].title
                + '</TD><TD name="writer" align="center">' + result[i].writer
                + '</TD><TD name="regDate" align="center" pattern="yyyy-MM-dd">' + result[i].regDate
                + '</TD><TD name="cnt" align="center">' + result[i].cnt + '</TD>'
                   str += '</TR>'

          }
          str +="</tbody>";
          table.append(str)
       },
       error : function(request, error){
           alert("fail");
           alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
       }
   });

  var list    = $('#news1');
  var element    = $('#news');
  
        list.removeClass('active');
        element.addClass('active');   
}



//--------------------나눔 게시판 ------------------------- 꿑---------------------




$(function () {
   $('.onTs').click(function () {
      
      
      if( $('#test1').css("display") == "none"){
         $('#test1').show();
      }      
   });

   $('.offTs').click(function () {
      
      
      if( $('#test1').css("display") != "none"){
         $('#test1').hide();
      }      
   });

});




function goContact3() {
	var list	 = jQuery('.tokyo_tm_all_wrap .leftpart .menu ul li,.tokyo_tm_mobile_menu .menu ul li');
	var vContent = jQuery('.tokyo_tm_all_wrap');
	var vSection = jQuery('.tokyo_tm_section');
	
	
		var element = jQuery(this);
		var myHref	= element.find('a').attr('href');
// alert(myHref);
// console.log(myHref);
		if(!element.hasClass('active')){
			list.removeClass('active');
			element.addClass('active');
			vSection.removeClass('active');
			vContent.find(myHref).addClass('active').animate({ scrollTop: 0 });
			
		}
	var list	 = $('#contact5');
	var element	 = $('#contact3');
	list.removeClass('active');
	element.addClass('active');

}

function goContact4() {
	var list	 = jQuery('.tokyo_tm_all_wrap .leftpart .menu ul li,.tokyo_tm_mobile_menu .menu ul li');
	var vContent = jQuery('.tokyo_tm_all_wrap');
	var vSection = jQuery('.tokyo_tm_section');
	
	
		var element = jQuery(this);
		var myHref	= element.find('a').attr('href');
// alert(myHref);
// console.log(myHref);
		if(!element.hasClass('active')){
			list.removeClass('active');
			element.addClass('active');
			vSection.removeClass('active');
			vContent.find(myHref).addClass('active').animate({ scrollTop: 0 });
			
		}
	
		var list	 = $('#contact5');
		var element	 = $('#contact4');
		list.removeClass('active');
		element.addClass('active');

}

//쓰레기정보페이지 상위이동 div 
function go_Top() {

	//	클릭시 보이기
   $('.onTs').click(function () {
     
      if( $('#test1').css("display") == "none"){
         $('#test1').show();
      }      
   });
	// 다른곳 클릭시 숨김
   $('.offTs').click(function () {
      
      if( $('#test1').css("display") != "none"){
         $('#test1').hide();
      }      
   });

};

//검색기능
function search() { 
	var search = $('#search').val()
$.get("http://localhost:8080/zizon/resources/img/portfolio/"+search+".png").done(function() {
    $.magnificPopup.open({ 
        items: { src: "http://localhost:8080/zizon/resources/img/portfolio/"+search+".png"}, 
        type: 'image', 
        closeOnContentClick : true
    }); 
}).fail(function() {
	alert("검색하신 쓰레기가 없습니다.")
})
}




// 주변 분리수거 장소 검색
function getTrashMapList1(cnt) {
//	alert("getTrashMapList1");
	var tsl = {
			tmSearchList : $('#tmSearchList').val()
		};
	 // 누를때 맨위로 스크롤 이동
	 $('#contact1').animate({ scrollTop: 0 });
	
	 // 목록으로 갈때 이전 화면에 있던 file을 지워줌
	 $('#file').val("");
	
	 var getTrashMapListOnePageCnt=10;
	 
	 // 목록에 있는 이미지 지워줌
	 $('#trashMapImagePanel').remove();
	
	 // controller에  getTrashMapList를 실행해주는 ajax 
	 $.ajax({
	       url : "getTrashMapList1.do",
	       type : "get",
	       data: tsl,
	       dataType:"json",
	
	       // controller에서 리턴된 List배열을 result에 담아서 for문으로 table에 뿌려줌
	       success : function(result){
	    
	    	// 리턴된 List의 길이
	       	var len=result.length;
	       	
	       	// index에 리턴된 List를 담기 위해 만들어놓은 테이블의 id값
	       	var table=$('#trashMapListTable');
	       	
	       	// 동적 테이블을 생성하기 위한 변수 str 생성
	       	var str="";
	       	
	       	// 나중에 목록을 불러와줄때마다 동적으로 생성된 table을 지워주기위해 tbody로 먼저 묶어서 id 지정하여 remove 실행
	       	str += "<tbody id='removeTbody' class='removeTbody'>";
	       	if(len==0){
	       		alert('해당 지역은 없습니다.')
	       	}
	       	else{
	       		
		       	// 목록에 있는 동적 테이블을 지워주고 새로 리스트를 불러오기 위해서 우선 지워줌
		       	 $( '#trashMapListTable > #removeTbody').remove();
		       	 
		       	 // 페이지 숫자 div에 남아있는거 지우고 다시 for문 돌리기 위함 
		    	 $( '#trashMapListTableCnt > #removecnt').remove();
		       	 
		       	// 테이블을 생성하기 위한 for문 
		       	for(var i=((cnt-1)*getTrashMapListOnePageCnt);i<getTrashMapListOnePageCnt*cnt;i++){
		       		
		       		// 만약 i가 총 리스트 갯수보다 많아지면 멈춤
		       		if(i>len-1){
		       			break;
		       		}

		       		// tr전체를 클릭했을때 onclick을 실행하도록 동적 테이블 생성, 
		       		// onclick 했을때 ()안에 변수를 가지고 들어가서 getTrashMap에서 활용하기 위한 동적테이블 생성
		       		str += '<Tr class="removeTbody" style="cursor:pointer;" align="center" onclick="getTrashMap('+result[i].tmPostNum+','+result[i].tmCnt+')">'
		       		str += '<TD class="removeTbody"  name="tmPostNum" align="center">' + result[i].tmPostNum
		       		+ '</TD><TD class="removeTbody" name="tmTitle" align="center">'+ result[i].tmTitle
		       		+ '</TD><TD class="removeTbody" name="tmAddr" align="center">' + result[i].tmAddr
		       		+ '</TD><TD class="removeTbody" name="cusId" align="center">'+result[i].cusId+'</TD>'
		       		+ '</TD><TD class="removeTbody" name="tmTime" align="center">' +result[i].tmTime
		       		+ '</TD><TD class="removeTbody" name="tmCnt" align="center">' + result[i].tmCnt+'</td>'
		       		+ '<input type="hidden" class="removeTbody" align="center" value="'+result[i].tmContent+'">'
		            str += '</TR>'	
		            	
		       	}
		       	str += "</tbody>";
		       	var strcnt="";
		       	for(var j=1;j<(len/getTrashMapListOnePageCnt)+1;j++){
		       		strcnt+='<a id="removecnt" style="cursor:pointer;" onclick="getTrashMapList1('+j+')">['+j+']</a>'
		       	}
		       	table.append(str).trigger("create");
		       	$('#trashMapListTableCnt').append(strcnt).css("cursor:pointer");;
	       	}
	       },
	       error : function(request, error){
	           alert("fail");
	           alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
	   });
		
	
}























//새글등록하거나 기존 글을 업데이트해주는 function
function tmDatInsert(){
	var tmPostNum = $("#tmPostNum").val();

	gettmDatList(1,tmPostNum);

	var datInsert ={
			tmPostNum : $("#tmPostNum").val(),
			cusId:$('#sessionId').val(),
			tmDat:$('#tmDatText').val()
			
	}
	
		 $.ajax({
             url : "insertTmDat.do"
             , type : "post"
             , data :datInsert 
             , success : function(data){
             	console.log(data);
             	// 인서트를 성공하면 목록불러와주는 function 실행
//                 getTrashMapList(1);
             }
		 		, error : function(request, error){
                 alert("fail");
                 alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
             }
      });
	

}




//목록List를 불러와주는 function
function gettmDatList(cnt,tmPostNum) {
	 console.log(tmPostNum);
	var gettmDatList ={
			tmPostNum : tmPostNum
	}
	 // 한페이지당 10개씩 보여주기위한 변수 저장
	 var gettmDatListOnePageCnt=10;
	 
	 // 목록에 있는 동적 테이블을 지워주고 새로 리스트를 불러오기 위해서 우선 지워줌
	 $( '#tmDatListTable > #removetmDatTbody').remove();
	 
	 // 페이지 숫자 div에 남아있는거 지우고 다시 for문 돌리기 위함 
	 $( '#tmDatListTableCnt > #removetmDatcnt').remove();
	 
	 // controller에  getTrashMapList를 실행해주는 ajax 
	 $.ajax({
	       url : "gettmDatList.do",
	       type : "get",
	       data:gettmDatList,
	       dataType:"json",
	
	       // controller에서 리턴된 List배열을 result에 담아서 for문으로 table에 뿌려줌
	       success : function(result){
	    	 
	    	// 리턴된 List의 길이
	       	var len=result.length;
	       	
	       	// index에 리턴된 List를 담기 위해 만들어놓은 테이블의 id값
	       	var table=$('#tmDatListTable');
	       	
	       	// 동적 테이블을 생성하기 위한 변수 str 생성
	       	var str="";
	       	
	       	// 나중에 목록을 불러와줄때마다 동적으로 생성된 table을 지워주기위해 tbody로 먼저 묶어서 id 지정하여 remove 실행
	       	str += "<tbody id='removetmDatTbody' class='removetmDatTbody'>";

	       	// 테이블을 생성하기 위한 for문 
	       	for(var i=((cnt-1)*gettmDatListOnePageCnt);i<gettmDatListOnePageCnt*cnt;i++){
	       		
	       		// 만약 i가 총 리스트 갯수보다 많아지면 멈춤
	       		if(i>len-1){
	       			break;
	       		}

	       		// tr전체를 클릭했을때 onclick을 실행하도록 동적 테이블 생성, 
	       		// onclick 했을때 ()안에 변수를 가지고 들어가서 getTrashMap에서 활용하기 위한 동적테이블 생성
	       		str += '<Tr class="removetmDatTbody">'
	       		str += '<TD class="removetmDatTbody"  name="tmPostNum" align="center">' + result[i].tmPostNum
	       		+ '</TD><TD class="removetmDatTbody" name="cusId" align="center">'+ result[i].cusId
	       		+ '</TD><TD class="removetmDatTbody" name="tmDat" align="center">' + result[i].tmDat
	       		+ '</TD><TD class="removetmDatTbody" name="tmDatNum" align="center">'+result[i].tmDatNum
	       		+ '</TD><TD class="removetmDatTbody" name="tmTime" align="center">' +result[i].tmTime
	            str += '</TD></TR>'	
	       	}
	       	str += "</tbody>";
	       	var strcnt="";
	       	for(var j=1;j<(len/gettmDatListOnePageCnt)+1;j++){
	       		strcnt+='<a id="removetmDatcnt" style="cursor:pointer;" onclick="gettmDatList('+j+')">['+j+']</a>'
	       	}
	       	// str에 만들어놓은 테이블생성값들을 index에 만들어둔 테이블에 더해줌
	       	table.append(str).trigger("create");
	       	$('#tmDatListTableCnt').append(strcnt).css("cursor:pointer");;
	       },
	       error : function(request, error){
	           alert("fail");
	           alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
	   });

}