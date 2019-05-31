<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/linericon/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/flat-icon/font/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/jquery-ui.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/swiper.min.css">
	<!-- Animation library for notifications   -->
<link href="${pageContext.request.contextPath }/resources/assets/css/animate.min.css" rel="stylesheet"/>
<!--  Light Bootstrap Table core CSS    -->
<link href="${pageContext.request.contextPath }/resources/assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>
<!--     Fonts and icons     -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
<link href="${pageContext.request.contextPath }/resources/assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

<style type="text/css">
@media ( max-width :1405px) {
	.ownerside {
		display: none;
	}
}

.irbt {
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
	padding: 2px 5px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #99b4ff;
}

.irbt:hover {
	background-color: #99b4ff;
}

.irbt:active {
	position: relative;
	top: 1px;
}
 input[type=text],
 input[type=number]{
  width:100px;
 }
ul li a{
 width:120px;
}
ul{
padding:20px;
}
ul li {
width:131px;
margin:0px auto;
}


#titlediv {
	font-size: 1.5em;
	font-weight: bold;
	margin-left: 20px;
}
.ompm {
	border-left: 1px dashed #cfcfcf;
}
.ownerbody div img {
	width:200px;
	height:200px;

	
}
#ompmimg{
	width:290px; 
	height:200px; 
	text-align:center;
}
.ompm,
.ompm1{
	width:260px; 
	height:260px;
	display:table-cell; 
	cursor:pointer
}
.ompmtext{
	width:300;
	height:100px;
	padding:20px 50px 20px 50px;
}
#isroom div{ 
	margin:2px;
}
#isroom div input{
	border:0px;
	border-bottom:1px solid #cfcfcf;
}
#insertroombt{
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
	padding: 2px 5px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #99b4ff;
}
 #map{
 	width:200px;
 	height:200px;
 }
</style>
</head>
<body>
<%-- <section class="section-margin">
	<c:import url="../common/header.jsp" />
    </section> --%>
    
<div style="width:100%; display:inline-block;">
		<div class="ownerside" style=" width:240px; height:700px; float:left;" ><!-- ownerside -->
		<div class="sidebar" data-color="purple" data-image="${pageContext.request.contextPath }/resources/assets/img/sidebar-5.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="main.do" class="simple-text">
                    STRAVEL
                </a>
            </div>
            <ul class="nav">
            	<li class="active">
            		<a href="ownerLogout.do"><i class="pe-7s-graph"></i><p>로그아웃</p></a>
            	</li>
				<li class="active">
                    <a href="#">
                        <i class="pe-7s-graph"></i>
                        <p>예약관리</p>
                        <ul>
                        <li><a href="orderList.do?owner_no=${loginMember.owner_no }">오늘 예약건</a></li>
                    	<li><a href="passOrderList.do?owner_no=${loginMember.owner_no }">지난 예약건</a></li>
                    	</ul>
                    </a>
                </li>
                <li class="active">
                    <a href="#">
                        <i class="pe-7s-graph"></i>
                        <p>마이페이지</p>
                        <ul>
                        <li><a href="#">개인정보수정</a></li>
                        <li><a href="sampStar.do">매출관리</a></li>
                    	<li><a href="#">후기관리</a></li>
                        </ul>
                    </a>
                </li>
                <li class="active">
                    <a href="#">
                        <i class="pe-7s-graph"></i>
                        <p>객실관리</p>
                        <ul>
                        <li><a href="adminfaq.do">객실리스트</a></li>
                        <li><a href="insertRoom.do">객실등록</a></li>
                    	<li><a href="updateRoomList.do?owner_no=${loginMember.owner_no }">객실수정</a></li>
                        </ul>
                    </a>
                </li>
            </ul>
    	</div>
    </div>
	</div><!-- ownerside  -->

		
		<div class="ownerbody"  style="width:69%; display:table-cell;"><!-- ownerbody -->
		<bR><BR><BR>
		<div style="width:900px;border:1px solid black; margin:0 auto; background:#edf7f8; padding:50px;">
			<div style="text-align:center; font-size:2em; margin-bottom:20px; color:black; font-weight:bold; ">객실등록</div>
			<div id="isroom" style="margin:20px; border:1px solid #cfcfcf; background:white;padding:30px;">
			<form action="updateAddress.do?owner_no=${loginOwner.owner_no }" method="post">
		<label>주소
		<input type="text" name="owner_address" id="owner_address">
		<input type="button" onclick="geoCode();" value="검색">
		<div id="map"></div>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDThTAj0AKRlW45lmKFY65_OkQylWQBmeg&callback=geoCode"
    async defer></script> 

		<input type="hidden" name="owner_latitude" id="owner_latitude">
		<input type="hidden" name="owner_longitude" id="owner_longitude">
		<input multiple="multiple" type="file" name="owner_img" class="multi with-preview"/>
		<input type="submit" >
	</form>
			</div>
		</div>
	</div><!-- ownerbody -->
</div>


<!-- <div  class="bottombar" style="position:fixed; bottom:0px; width:100%; height:71px; border-top:1px solid black; z-index:10;background:white; opacity:0.8; ">
</div> -->
<div>
	<c:import url="../common/footer.jsp" />
</div>

	<script
		src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery.ajaxchimp.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/mail-script.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/skrollr.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/swiper.min.js"></script>
	<!-- 달력 -->
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-ui.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-ui.min.js"></script>
		
	<script src="${pageContext.request.contextPath }/resources/js/jquery.MultiFile.js" type="text/javascript" ></script>
	



</body>
	<script type="text/javascript">
		function check(){
			location.href="orderList.do";
		};
		var map;
		   var marker;
		      function geoCode() {
		            var faddr_lat = ${touristspot.touristspot_latitude };
		          var faddr_lng = ${touristspot.touristspot_longitude };
		         var faddr = document.getElementById('address').value;
		            var geocoder;
		            geocoder = new google.maps.Geocoder();
		            geocoder.geocode( { 'address': faddr}, function(results, status) {
		               if (status == google.maps.GeocoderStatus.OK) {
		                  var faddr_lat = results[0].geometry.location.lat();   //위도
		                  var faddr_lng = results[0].geometry.location.lng();   //경도
		               } else {
		                  var faddr_lat = ${touristspot.touristspot_latitude };
		                  var faddr_lng =  ${touristspot.touristspot_longitude };
		               }
		               map = new google.maps.Map(document.getElementById('map'), {
		                   center: {lat: faddr_lat, lng: faddr_lng},
		                   zoom: 15});
		               
		               marker = new google.maps.Marker({
		                       position: {lat: faddr_lat, lng: faddr_lng},
		                       map: map/* ,
		                       title: 'Hello World!' */
		                   });
		               return;
		            });   
		         }
		/*   var input = document.getElementById('owner_address');
		  var autocomplete = new google.maps.places.Autocomplete(input,{
			  type:['(cities)']
		  }); */
		});
	</script>
</html>