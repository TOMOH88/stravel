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
<link href="${pageContext.request.contextPath }/resources/assets/css/bootstrap.min.css" rel="stylesheet" />
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

.rsvck {
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

.rsvck:hover {
	background-color: #99b4ff;
}

.rsvck:active {
	position: relative;
	top: 1px;
}

table tr td {
	border-bottom: 1px solid rgba(67, 67, 67, 0.8);
	padding:auto;
	height:33px;
}

table tr:nth-child(2n) {
	background-color: white;
}

table tr:nth-child(2n+1) {
	background-color: #edf7f8;
}

table tr:nth-child(1) {
	background-color: rgba(67, 67, 67);
}

/* ul li {
	font-size: 1.5em;
	font-weight: bold;
	margin-bottom: 5px;
}

ul li a:link, ul li a:visited {
	color: #888888;
}

ul li a:hover {
	font-size: 1.1em;
} */

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
</style>
</head>
<body>
<%-- <section class="section-margin">
	<c:import url="../common/header.jsp" />
    </section> --%>
<div style="width:100%; display:inline-block;">
	<div class="ownerbody"  style="width:69%; height:700px; display:table-cell;"><!-- ownerbody -->
		<bR><BR><BR>
		<c:forEach items="${roomList }" var="roomList">
				<div style="width:1032px;height:150px;margin:5px;"><!-- 객실하나 -->
					<div style="border:1px solid #e4e4e4; width:150px; height:150px; float:left; margin-right:20px;">
							<div class="swiper-container">
								<div class="swiper-wrapper">
								<c:forEach items="${roomImgList }" var="roomImgList">
									<c:if test="${roomList.room_no eq roomImgList.room_no }"> 
									<div class="swiper-slide"><img id="mainimg" src="${pageContext.request.contextPath }/resources/files/roomImg/${roomImgList.room_img}"></div>
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
					<div style="border:1px solid #e4e4e4; padding:10px; float:left; height:130px; width:480px; border-radius:10px">${roomList.room_content }<br>최소인원 : ${roomList.min_no }<br>최대인원 : ${roomList.max_no }
					<div><a class="rsvck" href="updateRoomDetail.do?room_no=${roomList.room_no }">수정하기</a></div>	
					</div><!-- 각객실당정보 -->
					
				</div>
				
			</c:forEach> 
	</div><!-- ownerbody -->
	
    
		
	<div class="ownerbody"  style="width:1100px; margin:0px auto"><!-- ownerbody -->
	<br><br><br>
		<div style="margin: 0 auto; width:900px;">
				<div id="titlediv">예약 현황</div>
				<div style="width: 100%; ">
					<!--  -->
					<div>
						<hr>
						<table style="margin: 0 auto;">

							<tr>
								<td style="width: 100px;">객실</td>
								<td style="width: 100px;">예약자</td>
								<td style="width: 100px;">인원</td>
								<td style="width: 130px;">예약일시</td>
								<td style="width: 130px;">체크인</td>
								<td style="width: 130px;">체크아웃</td>
								<td style="width: 110px;">예약현황</td>
								<td style="width: 100px;">입실여부</td>
							</tr>
						<c:if test="${!empty orderList && empty passOrderList}">
						<c:forEach items="${orderList }" var="orderList">
							<tr>
								<td>${orderList.room_name }</td>
								<td>${orderList.user_name }</td>
								<td>${orderList.member }</td>
								<td>${orderList.rsv_date }</td>
								<td>${orderList.check_in }</td>
								<td>${orderList.check_out }</td>
								<td>${orderList.rsv_status }</td>
								<td>
								<c:if test="${orderList.rsv_status eq '결제완료' && orderList.enter_room eq '입실대기' }">
								<a href="updateStatus.do?rsv_no=${orderList.rsv_no }&owner_no=${orderList.owner_no}" class="rsvck">입실확인</a>
								</c:if>
								</td>
							</tr>
							</c:forEach>
							</c:if>
							<c:if test="${empty orderList && !empty passOrderList}">
						<c:forEach items="${passOrderList }" var="orderList">
							<tr>
								<td>${orderList.room_name }</td>
								<td>${orderList.user_name }</td>
								<td>${orderList.member }</td>
								<td>${orderList.rsv_date }</td>
								<td>${orderList.check_in }</td>
								<td>${orderList.check_out }</td>
								<td>${orderList.rsv_status }</td>
								<td>
								입실완료
								</td>
							</tr>
							</c:forEach>
							</c:if>
						</table>
					</div>
				</div>
			</div>
	</div><!-- ownerbody -->
</div>
<div class="footer" style="border:1px solid black; width: 100%; height:200px; position:absolute; bottom:0;">
	
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
	<%-- <script
		src="${pageContext.request.contextPath }/resources/js/jquery-1.12.4.js"></script> --%>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-ui.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-ui.min.js"></script>
		
		
	<script type="text/javascript">
	 	/* $(".rsvck").click(function(){
			var el = $(".rsvck").val();
			 /* location.href="updateStatus.do?rsv_no=" + el;  
			 alert($(".rsvck").val());
		
		})  */
		
		/* function moveUpdate(el){
	 		location.href = "updateStatus.do?rsv_no=" + el;
	 	} */
	</script>

</body>
</html>