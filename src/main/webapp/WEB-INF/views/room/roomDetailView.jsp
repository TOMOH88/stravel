<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no , initial-scale=1" >
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/flat-icon/font/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery-ui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/swiper.min.css">




<style type="text/css">

@media (max-width:1405px){
	#roomsidebar{
	display:none;
	}
	.timgdiv1{
	width:100%;
	}
	.timgdiv2 {
	width:0%;
	}
	.maindiv{
	width:701px;
	margin:0 50px;
	}
	.headerdiv{
	display:none;
	}
}
@media (min-width:1405px){
	.timgdiv1{
	width:50%;
	}
	.timgdiv2{
	width:25%;
	}
	.bottombar{
	display:none;
	}
	.maindiv{
	width:1032px;}
	.headerdiv{
	display:block;
	}
}

.maindiv {
	margin-left: auto !important;
	margin-right: auto !important;

	/*  margin-left: auto !important;
    margin-right: auto !important;
    width: auto !important;
    padding-right: 24px !important;
    padding-left: 24px !important; */
}

#mainimg {
	width: 100%;
	height: 100%;
	cursor:pointer;
	/* position:absolute; */
}
#mainimg:hover{
    transform: scale(1.05);
    animation-duration:10s;
    transition: transform .35s;
}

#reviewimg {
	width: 50px;
	height: 50px;
	border-radius: 50%;
}

#titlediv {
	font-size: 1.5em;
	font-weight: bold;
	margin-left: 20px;
}

#map {
	height: 100%;

}

.rsvbt {
	-moz-box-shadow: inset 0px 39px 0px -24px #99b4ff;
	-webkit-box-shadow: inset 0px 39px 0px -24px #99b4ff;
	box-shadow: inset 0px 39px 0px -24px #99b4ff;
	background-color: #99b4ff;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	border-radius: 4px;
	border: 1px solid #99b4ff;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 15px;
	font-weight: bold;
	padding: 2px 80px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #99b4ff;
}

.rsvbt:hover {
	background-color: #99b4ff;
}

.rsvbt:active {
	position: relative;
	top: 1px;
}

/* swiper */
.swiper-container,
.roomcon{
	width: 100%;
	height: 100%;
}


.travelslide {
	width: 300px;
	height: 300px;
	text-align: center;
	font-size: 18px;
	background: #fff;
	/* Center slide text vertically */
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
}
.room { 
	width: 148px;
	height: 148px;
	text-align: center;
	font-size: 18px;
	background: #fff;
	/* Center slide text vertically */
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
}
.swiper-slide-room{
	width:100%;
	height:100%;
}

.swiper-slide img {
	width: 100%;
	height: 69.99%;
}

.swiper-slide-text {
	display: block;
	width: 100%;
	height: 29.99%;
}


.selectroom, .selectCount {
	width: 230px;
	height: 40px;
	margin: 5px;
	border:1px solid #cfcfcf;
	border-radius:5px;
	font:'굴림';
}
.roomnext,
.roomprev{
	width:33px;
	height:22px;
		
}

.timgdiv div{
	overflow:hidden;
}
#start,
#end {
	width:90px;
	margin:5px;
	height:30px;
	border:1px solid rgb(169, 169, 169);
	border-radius:0px;
}
#headerdiv{
	height:200px;
}
</style>
</head>
<body class="roomBody">
<div class="headerdiv">
	<c:import url="../common/header.jsp" />
</div>
<br>
<Br>
<br>

<div onclick="mainmodal()" style="width:100%;height:592px;" class="timgdiv" ><!-- 나중에 클릭시 모달창 함수 실행시킬 div 영역 -->
	<div class="timgdiv1" style="height:592px; float:left; ">
	<img id="mainimg" src="${pageContext.request.contextPath }/resources/files/ownerImg/${ownerImg.get(0).owner_img}"><!-- 1번그림 -->
	</div>
	<div class="timgdiv2" style="height:592px; float:left;">
		<div style="width:100%; height:50%">
		<img id="mainimg" src="${pageContext.request.contextPath }/resources/files/ownerImg/${ownerImg.get(1).owner_img}" ><!-- 2번그림 -->
		</div>
		<div style="width:100%; height:50%">
		<img id="mainimg" src="${pageContext.request.contextPath }/resources/files/ownerImg/${ownerImg.get(2).owner_img}"><!-- 3번그림 -->
		</div>
	</div>
	<div class="timgdiv2" style="height:592px; float:left;">
		<div style="width:100%; height:50%">
		<img id="mainimg" src="${pageContext.request.contextPath }/resources/files/ownerImg/${ownerImg.get(3).owner_img}"><!-- 4번그림 -->
		</div>
		<div style="width:100%; height:50%">
		<img id="mainimg" src="${pageContext.request.contextPath }/resources/files/ownerImg/${ownerImg.get(4).owner_img}"><!-- 5번그림 -->
		</div>
	</div>
</div>

<hr>
<div style="margin-top:20px;"></div>
<div class="maindiv"><!-- 메인정보영역 -->
	<div style="margin-bottom:20px; height:auto;"><!-- 메인/사이드바/즐길거리포함영역 -->
		<div style=" width:68%; display:inline-block;"><!-- 메인정보영역 -->
			<div style="padding:20px;"><!-- 업체정보  -->
				<div style="font-size:1.5em; font-weight:bold;">${owner.owner_companyName }</div><!-- 사업자이름 -->
				<div style="font-size:medium;">${owner.owner_address} <br> ${owner.owner_phone }</div>
			</div>
			<br>
			<hr>
			<div><!-- 객실 정보/포문 -->
			<div id="titlediv">객실정보</div><br>
			<c:forEach items="${roomList }" var="roomList">
				<div style="width:1032px;height:150px;margin:5px;"><!-- 객실하나 -->
					<div style="border:1px solid #e4e4e4; width:150px; height:150px; float:left; margin-right:20px;">
							<div class="swiper-container roomcon">
								<div class="swiper-wrapper">
								<c:forEach items="${roomImgList }" var="roomImgList">
									<c:if test="${roomList.room_no eq roomImgList.room_no }"> 
										<div class="swiper-slide room"><img id="mainimg" src="${pageContext.request.contextPath }/resources/files/roomImg/${roomImgList.room_img}"></div>
									</c:if>
								</c:forEach> 
									
								</div>
								<!-- Add Pagination -->
								<div class="swiper-pagination"></div>
								<!-- Add Arrows -->
								<div class="swiper-button-next roomnext"></div>
								<div class="swiper-button-prev roomprev"></div>
							</div>
						</div>
					<div style="border:1px solid #e4e4e4; padding:10px; float:left; height:130px; width:480px; border-radius:10px">${roomList.room_content }<br>최소인원 : ${roomList.min_no }<br>최대인원 : ${roomList.max_no }</div><!-- 각객실당정보 -->
				</div>
				</c:forEach> 
				
			</div><!-- 객실정보끝 -->
			<br>
			<hr>
			<div><!-- 리뷰/포문 -->
				<div style="height:50px; width:1032px;">
					<!-- <div style="float:left" id="titlediv">&nbsp;&nbsp;후기 400개</div>
					<div style="float:left"><br>&nbsp;&nbsp;별점</div> -->
					<span id="titlediv">후기</span><span style="font-size:medium;">${fn:length(reviewList) }</span><!-- 별점 -->
				</div>
				<br>
				<c:forEach items="${reviewList }" var="reviewList">
				<div style="height:150px;margin:5px; border-bottom:1px solid #e4e4e4;"><!-- 후기하나 -->
					<div style="width:1032px;height:50px;"><!-- 사진/이름/별점 -->
						<div style="float:left; margin-right:20opx;">
						<c:if test="${!empty reviewList.user_picture }">
							<img id="reviewimg" src="${pageContext.request.contextPath }/resources/files/${reviewList.user_picture}">
						</c:if>
						<c:if test="${empty reviewList.user_picture }">
							<img id="reviewimg" src="${pageContext.request.contextPath }/resources/files/ompimg/사용자이미지.png">
						</c:if>
						</div><!-- 사진 -->
						<div style="float:left;">
							<div>${reviewList.user_name }</div><!-- 이름 -->
							<div>${reviewList.property_review_like }</div><!-- 별점 -->
						</div>
					</div>
					<div style="margin:5px;">
						${reviewList.property_review_content } 
					</div>
				</div>
				</c:forEach>
			</div><!-- 리뷰 -->
			<BR>
			<HR>
			<!-- <div>지역정보
				<div id="titlediv">지역 정보</div>
				<div>주소</div>
				<br>
				<div id="place_plain" style="cursor: pointer;" onclick="if(plain.style.display=='none')
					{plain.style.display='';place_plain.innerText = '접기'
					}else {plain.style.display='none'; place_plain.innerText= '지역정보 더보기'}">지역정보 더보기
				</div>
				<div id="plain" style="display : none;padding:10px;">펼쳐질공간
				교통편
				</div> 
				<div style="width:682px; height:350px; margin:20px;">구글맵영역
					<div id="map"></div>
				</div> 
			</div>지역정보 -->
			<br>
		</div><!-- 메인정보 -->
		<div id="roomsidebar" style=" width:260px; border:1px solid #e4e4e4; float:right; position:sticky; top:100px; margin:10px; padding:10px; "><!-- 오른쪽 사이드바 -->
			<div style="width:260px;height:40px;"><!-- 사이드바 헤드 -->
				<div><span  id="sideprice" style="color:black;font-weight:bold;"></span>
				</div>
				<div style="font-size:x-small;color:black;font-weight:bold;">별점</div>
				<div class="priceDiv"></div>
				
				
			</div>
			<div style="margin-left:10px;margin-right:10px;"><hr></div>
				<div ><!-- 사이드바 바디 -->
					<form action="moveReservation.do" method="post" class="rsvSubmit">
					<div class="hiddenPrice"></div>
					<input type="hidden" value="${loginMember.user_no }" name="user_no">
						<div><!-- 객실선택드롭다운 -->
						<div style="font-size:xx-small;color:black;font-weight:bold;">옵션</div>
							<div style="height:60px;">
							<input type="hidden" name="owner_no" value="${owner.owner_no }">
								<select class="selectroom" name="room_no" required>
									<option>필수선택</option>
									<c:forEach items="${roomList}" var="roomList">
									<option value="${roomList.room_no }">${roomList.room_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div style="font-size:xx-small;color:black;font-weight:bold;">날짜</div>
						<div>
							<div>
								<input type="text" name="check_in"id="start" class="datepicker" placeholder="CHECK IN" autocomplete="off">
								<span>&nbsp;→&nbsp;</span>
								<input type="text"name="check_out" id="end" class="datepicker"  placeholder="CHECK OUT" autocomplete="off">
							</div>
						</div>
						<div><!-- 인원선택 ajax -->		
						<div style="font-size:xx-small;color:black; font-weight:bold;">인원</div>
							<div style="height:60px;">
								<select class="selectCount" name="member" required >
									
								</select>
							</div>
						</div>
						
						<Br>
						<hr>
						<div style="padding:8px;"><!-- 예약하기 버튼 -->
							<input type="submit" value="예약하기" class="rsvbt">
						</div>
					</form>
				</div>
			</div><!-- 오른쪽 사이드바 -->
			<hr style="margin-top:30px;">
		</div>
		<div>	
<%-- 		<div id="titlediv">주변 즐길거리</div>
		<div style="height:300px;">
		  <!-- Swiper -->
 			 <div class="swiper-container travel">
 			  	<div class="swiper-wrapper">
 			  	<c:forEach items="${tourList }" var="tourList">
  			  	  <div class="swiper-slide travelslide">
  			   			<div>
  			   				<img src="${pageContext.request.contextPath }/resources/touristspotImages/${tourList.rename_thumnail }">
   			   				<div class="swiper-slide-text" style="text-align:left;">
   			   					<div style="font-size:x-small;">${tourList.touristSpotCategoryName }</div>
   		    					<div style="font-size:x-small;">${tourList.touristSpot_name}</div>
   		    					<div style="font-size:xs-small:">이용시간</div>
   		    					<div style="font-size:x-small;">${tourList.touristSpot_open }~${tourList.touristSpot_closed}</div>
 			   				</div>
   		    			</div>
   		   		 	</div>
   		   		 	</c:forEach>
  			   </div>
   			  <!-- Add Pagination -->
   			  <div class="swiper-pagination"></div>
   			  <!-- Add Arrows -->
   			  <div class="swiper-button-next"></div>
   			  <div class="swiper-button-prev"></div>
  			 </div>
		</div> --%>
	</div>
</div>
<div>
	<c:import url="../common/footer.jsp" />
</div>


<!-- 사이즈 축소시 사이드바 하단으로 -->
<div class="bottombar" style="position:fixed; bottom:0px; width:100%; height:71px; border-top:1px solid black; z-index:10;background:white; opacity:0.8; ">
	<div style="padding:10px 50px;  width:65%; float:left;">
		<div><span  id="sideprice" style="color:black;font-weight:bold;font-size:900;">₩85,000</span><span style="font-size:medium;color:black;font-weight:bold;">/박</span></div>
		<div style="font-size:medium;color:black;font-weight:bold;">별점</div>
	</div >
	<div style="height:70px; margin-top:22px;">
		<input type="button" value="예약하기"  class="rsvbt" onclick="rsvmodal()">
	</div>
</div>

<!-- 결제정보 모달창 -->
<div id="submodal" style="width:100%; height:100%; background:rgba(67,67,67,0.9); position:fixed; top:0;  display:none;">
	<div>
		<div style="font-size:2.5em; margin:10px; float:right; cursor:pointer;" onclick="closersv()">X</div>
	</div>
	<div>
		<div style=" width:260px; border:1px solid #e4e4e4; margin:200px auto; padding:10px; background:white; opacity:1; "><!-- 오른쪽 사이드바 -->
			<div style="width:260px;height:40px;"><!-- 사이드바 헤드 -->
				<div><span  id="sideprice" style="color:black;font-weight:bold;">₩85,000</span><span style="font-size:x-small;color:black;font-weight:bold;">/박</span></div>
				<div style="font-size:x-small;color:black;font-weight:bold;">별점</div>
			</div>
			<div style="margin-left:10px;margin-right:10px;"><hr></div>
				<div ><!-- 사이드바 바디 -->
					<form action="moveReservation.do" method="post" class="rsvSubmit">
					<div class="hiddenPrice"></div>
					<input type="hidden" value="1" name="user_no">
						<div><!-- 객실선택드롭다운 -->
						<div style="font-size:xx-small;color:black;font-weight:bold;">옵션</div>
						<form action="moveReservation.do" method="post">
					<div class="hiddenPrice"></div>
					<input type="hidden" value="${loginMember.user_no }" name="user_no">
						<div><!-- 객실선택드롭다운 -->
						<div style="font-size:xx-small;color:black;font-weight:bold;">옵션</div>
							<div style="height:60px;">
							<input type="hidden" name="owner_no" value="${owner.owner_no }">
								<select class="selectroom" name="room_no" required>
									<option>필수선택</option>
									<c:forEach items="${roomList}" var="roomList">
									<option value="${roomList.room_no }">${roomList.room_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div style="font-size:xx-small;color:black;font-weight:bold;">날짜</div>
						<div>
							<div>
								<input type="text" name="check_in"id="start" class="datepicker" placeholder="CHECK IN" autocomplete="off">
								<span>&nbsp;→&nbsp;</span>
								<input type="text"name="check_out" id="end" class="datepicker"  placeholder="CHECK OUT" autocomplete="off">
							</div>
						</div>
						<div><!-- 인원선택 ajax -->		
						<div style="font-size:xx-small;color:black; font-weight:bold;">인원</div>
							<div style="height:60px;">
								<select class="selectCount" name="member" required >
									
								</select>
							</div>
						</div>
						
						<Br>
						<hr>
						<div style="padding:8px;"><!-- 예약하기 버튼 -->
							<input type="submit" value="예약하기" class="rsvbt">
						</div>
					</form>
							<div style="height:60px;">
								<select class="selectroom" name="room_no" required>
									<option>필수선택</option>
									<c:forEach items="${roomList}" var="roomList">
									<option value="${roomList.room_no }">${roomList.room_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div style="font-size:xx-small;color:black;font-weight:bold;">날짜</div>
						<div>
							<div>
								<input type="text" name="check_in"id="start" class="datepicker" placeholder="CHECK IN" autocomplete="off">
								<span>&nbsp;→&nbsp;</span>
								<input type="text"name="check_out" id="end" class="datepicker"  placeholder="CHECK OUT" autocomplete="off">
							</div>
						</div>
						<div><!-- 인원선택 ajax -->		
						<div style="font-size:xx-small;color:black; font-weight:bold;">인원</div>
							<div style="height:60px;">
								<select class="selectCount" name="member" required >
									
								</select>
							</div>
						</div>
						
						<Br>
						<hr>
						<div style="padding:8px;"><!-- 예약하기 버튼 -->
							<input type="button" value="예약하기" class="rsvbt" >
						</div>
					</form>
				</div>
			</div><!-- 오른쪽 사이드바 -->
	</div>
</div>

<!-- 메인 모달창 -->
	<div id="mainmodal"style="width: 100%; height: 100%; background: rgba(67, 67, 67, 0.9); position: fixed; top: 0; z-index:100; display:none;">
		<div>
			<div style="font-size: 2.5em; margin: 10px; float: right; cursor: pointer;"onclick="cmainmodal()">X</div>
		</div>
	<!-- <div style="width: 1120px; height: 600px; margin: 150px auto;">
		
			<div class="swiper-container gallery-top modalcon">
				<div class="swiper-wrapper">
					<div class="swiper-slide modalslide"
						style="background-image: url(http://lorempixel.com/1200/1200/nature/1/)"></div>
					<div class="swiper-slide modalslide"
						style="background-image: url(http://lorempixel.com/1200/1200/nature/2/)"></div>
					<div class="swiper-slide modalslide"
						style="background-image: url(http://lorempixel.com/1200/1200/nature/3/)"></div>
					<div class="swiper-slide modalslide"
						style="background-image: url(http://lorempixel.com/1200/1200/nature/4/)"></div>
						<div class="swiper-slide modalslide"
						style="background-image: url(http://lorempixel.com/1200/1200/nature/5/)"></div>
				</div>
				
				<div class="swiper-button-next swiper-button-white"></div>
				<div class="swiper-button-prev swiper-button-white"></div>
			</div>
			<div class="swiper-container gallery-thumbs modalcon1">
				<div class="swiper-wrapper">
					<div class="swiper-slide modalslide1"
						style="background-image: url(http://lorempixel.com/1200/1200/nature/1/)"></div>
					<div class="swiper-slide modalslide1"
						style="background-image: url(http://lorempixel.com/1200/1200/nature/2/)"></div>
					<div class="swiper-slide modalslide1"
						style="backgrou
						
						nd-image: url(http://lorempixel.com/1200/1200/nature/3/)"></div>
					<div class="swiper-slide modalslide1"
						style="background-image: url(http://lorempixel.com/1200/1200/nature/4/)"></div>
					<div class="swiper-slide modalslide1"
						style="background-image: url(http://lorempixel.com/1200/1200/nature/5/)"></div>
				</div>
			</div>
		</div> -->
	</div>


</body>

 <script src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
 <script src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
 <script src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/mail-script.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/skrollr.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/main.js"></script> 
<script src="${pageContext.request.contextPath }/resources/js/swiper.min.js"></script>
<!-- 달력 -->
<script src="${pageContext.request.contextPath }/resources/js/jquery-1.11.0.min.js"></script> 
<script src="${pageContext.request.contextPath }/resources/js/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery-ui.min.js"></script>


<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAJoPfOWTR_yPSub9u9VPKGGVauCN0RoAg&callback=initMap"
    async defer></script>
<script type="text/javascript">
	var loginMember = 1;
	$("rsvbt").click(function(){
		if(loginMember != null){
			$(".rsvSubmit").submit();
		}else{
			alert("로그인 해야합니다");
			
		}
	})


	/* 메인이미지 클릭시 사업자대표이미지 슬라이더 실행할 모달창 만들함수*/
	function mainmodal(){
		var mainmodal = document.getElementById("mainmodal");
		mainmodal.style.display = 'block';
	};
	function cmainmodal(){
		var cmainmodal = document.getElementById("mainmodal");
		cmainmodal.style.display = 'none';
	
	};
	
	/* 하단바 클릭시 예약정보사이드바 모달창 */
	function rsvmodal(){
		var submodal = document.getElementById("submodal");
		submodal.style.display = 'block';
	};
	function closersv(){
		var submodal = document.getElementById("submodal");
		submodal.style.display = 'none';
		
	};
	
	
	 var placeSearch, autocomplete, lat, lng;
	function initAutocomplete() {
	  // Create the autocomplete object, restricting the search to geographical
	  // location types.
	  autocomplete = new google.maps.places.Autocomplete(
	                                      "${owner.owner_address}",{types: ['geocode']});
	  // When the user selects an address from the dropdown, populate the address
	  // fields in the form.
	  autocomplete.addListener('place_changed', fillInAddress);
	}
	function fillInAddress() {
	  // Get the place details from the autocomplete object.
	  var place = autocomplete.getPlace();
	   lat =place.geometry.location.lat();
	   lng =place.geometry.location.lng();
	   console.log(lat);
	   console.log(lng);
	} 
 
	/* var map;
    function initMap() {
      map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: latitude, lng: longitude	},
        zoom: 8
      });
    }  */
    
    var swiper = new Swiper('.travel', {
        slidesPerView: 3,
        spaceBetween: 30,
        slidesPerGroup: 3,
        loop: true,
        loopFillGroupWithBlank: true,
        pagination: {
          el: '.swiper-pagination',
          clickable: true,
        },
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
      });
    var swiper1 = new Swiper('.roomcon', {
        slidesPerView: 1,
        spaceBetween: 30,
        loop: true,
        pagination: {
          el: '.swiper-pagination',
          clickable: true,
        },
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
      });
 
 
    

	var roomno ;
	var price ;
	var addPrice;

		$(".selectroom").change(function(){
			roomno = this.value;
			
			
			var disableDays=[];
			$.ajax({
				url:"selectRsvInfo.do",
				data: {room_no: roomno},
				type:"post",
				dataType:"json",
				cache:false,
				success: function(data){
					
					var jsonStr = JSON.stringify(data);
					var json = JSON.parse(jsonStr);
					var weekPrice = json.on_season_price;
					var nomalPrice = json.off_season_price;
					addPrice = json.add_person_price;
					var option = "<option selected disabled hidden>필수선택</option>";
					
					for(var i = 2; i < json.max_no+1;i++){
						option += "<option value="+i+">"+i +"</option>";
					}
					
					$(".selectCount").html($(".selectCount").text() + option );
					
					$.ajax({
						url: "selectRsvDate.do",
						data: {room_no:roomno},
						type:"post",
						dataType:"json",
						cache:false,
						success: function(data){
							
						 	var jsonStr = JSON.stringify(data);
							var json = JSON.parse(jsonStr);
							
							for(var i = 0 ; i < json.length;i++){
								disableDays.push(json[i]);
							}
							console.log(disableDays);
							$("#start").datepicker({
								 dateFormat: 'yy-mm-dd' //Input Display Format 변경
						                ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
						                ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
						                ,buttonImage: "/application/db/jquery/images/calendar.gif"
						                ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
						                ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
						                ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
						                ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
						                ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
						                ,minDate: "+0D" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
										,beforeShowDay: function(date){
											var string = jQuery.datepicker.formatDate('yy-mm-dd',date);
											return [disableDays.indexOf(string)==-1]
										}
										,onSelect: function(dateText, inst){
											$("#end").datepicker({
											 dateFormat: 'yy-mm-dd' //Input Display Format 변경
							           	     ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
							          	     ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
							           	     ,buttonImage: "/application/db/jquery/images/calendar.gif"
							           	     ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
							           	     ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
							           	     ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
							           	     ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
							           	     ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
							           	     ,minDate: dateText //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
											,beforeShowDay:function(date){
												var str = jQuery.datepicker.formatDate('yy-mm-dd',date);
												return [dateText.indexOf(str)==-1]
											}
										})
										var week = new Array('일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일');
										var isWeek = new Date(dateText).getDay();
										
										if(isWeek == 5 || isWeek == 6){
											price = weekPrice;
										}else{
											price = nomalPrice;
										}
										
										console.log(isWeek);
										console.log(price);
			
							}
							});
					
							
							
						},error: function(jqXHR, textStatus, errorThrown){
							console.log("error : " + jqXHR + ", " + 
									textStatus + ", " + errorThrown);
							
						}
					})
				}	
			})
			
			
		});

	
	
		
$(".selectCount").change(function(){
	var el = $(this).val();
	var totalPrice = price + (addPrice * (el-2));
	console.log(totalPrice);
	$(".priceDiv").html(totalPrice);
	$(".hiddenPrice").html("<input type='hidden' name='total_price' value='" + totalPrice +"' >");
})
 
	
	/* $(function(){
		var address = ${owner.owner_address};
		
		$.ajax({
			url:"selectTravels.do",
			data: {touristspot_address : address},
			type:"post",
			dataType:"json",
			cache:false,
			success: function(data){
				var option = "<div class='swiper-wrapper'>";
				var jsonStr = JSON.stringify(data);
				var json = JSON.parse(jsonStr);
				
				for(var i = 0 ; json.length; i++){
					option += "<div class='swiper-slide travelslide'>" +
								"<div><img src='${pageContext.request.contextPath}/resources/files/touristspotImages/$'"+{json.touristSpot_ImageName} +"'" +
								"<div class='swiper-slide-text'><div style='font-size:x-small;'>"+${json.touristSpotCategoryName}+"</div>" +
								"<div style='font-size:x-small;'>"+${json.touristSpot_name}+"</div>" +
								"<div style='font-size:x-small;'>"+${json.touristSpot_open}+"~"+${json.touristSpot_closed}+"</div>" +
								"</div></div></div>";
				}
				$(".swiper-container travel").html($(".swiper-container travel").text() + option + "</div>");
			}
		})
	}) */


</script>
</html>

