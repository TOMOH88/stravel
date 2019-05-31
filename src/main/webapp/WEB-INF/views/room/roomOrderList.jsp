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
<		<div class="ownerside" style=" width:240px; height:700px; float:left;" ><!-- ownerside -->
		<div class="sidebar" data-color="purple" data-image="${pageContext.request.contextPath }/resources/assets/img/sidebar-5.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="ownerMain.do?owner_no=${loginOwner.owner_no }" class="simple-text">
                    STRAVEL
                </a>
            </div>
            <ul class="nav">
            	<li class="active">
            	<c:if test="${!empty loginOwner }">
            		<a href="logout.do"><i class="pe-7s-graph"></i><p>로그아웃</p></a>
            	</c:if>
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
                <%-- <li class="active">
                    <a href="#">
                        <i class="pe-7s-graph"></i>
                        <p>마이페이지</p>
                        <ul>
                        <li><a href="roomSales.do?owner_no=${loginOwner.owner_no }">매출관리</a></li>
                    	<li><a href="#">후기관리</a></li>
                        </ul>
                    </a>
                </li> --%>
                <li class="active">
                    <a href="#">
                        <i class="pe-7s-graph"></i>
                        <p>객실관리</p>
                        <ul>
                        <li><a href="insertRoom.do">객실등록</a></li>
                    	<li><a href="updateRoomList.do?owner_no=${loginOwner.owner_no }">객실수정</a></li>
                        </ul>
                    </a>
                </li>
                <%-- <li class="active">
                <a href ="moveExtraUpdate.do"style="cursor:pointer" >
                	<c:if test="${ loginOwner.owner_approve eq '승인' }">
                	<i class="pe-7s-graph"></i>
                	<a><p>사업자<br>주소등록하기</p></a>
                	</c:if>
                	<c:if test="${loginOwner.owner_approve eq '미승인' }">
                	<i class="pe-7s-graph"></i>
                	<p>가입승인 대기중</p>
                	</c:if>
                	<i class="pe-7s-graph"></i>
                	</a>
                </li> --%>
            </ul>
    	</div>
    </div>
	</div><!-- ownerside  -->
	
    
		
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
								<c:if test="${orderList.rsv_status eq '결제완료' && orderList.enter_room eq '입실완료' }">
								입실완료
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