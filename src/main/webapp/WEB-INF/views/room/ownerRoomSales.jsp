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
/* @media ( max-width :1405px) {
	.ownerside {
		display: none;
	}
} */
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

.salesDiv{
	padding:10px;
}
.selesDiv >div{
	padding-top:10px;
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
	"
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
.titleDiv{
	padiing:5px;
	margin:10px 5px 0 0;
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
                        <li><a href="orderList.do?owner_no=${loginOwner.owner_no }">오늘 예약건</a></li>
                    	<li><a href="passOrderList.do?owner_no=${loginOwner.owner_no }">지난 예약건</a></li>
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
		
	<div class="ownerbody"  style="width:1300px;margin:auto; height:700px; display:table-cell;"><!-- ownerbody -->
		<bR><BR><BR>
		
		<div style="width:900px;  margin:0 auto">
		<div id="titlediv">MY STRAVEL</div>
		<hr>
			<div>
				<div style="display:table-cell; width:450px;height:450px;">
				
				<div>
					<form action="roomSales.do">
						<label for="check_in">검색날</label>
						<input type="date" class="date" name="check_in" placeholder="check_in">
						<label for="check_out">검색날</label>
						<input type="date" class="date" name='check_out'>
					</form>
				</div>
				</div>
				
				<div class="salesDiv" style="display:table-cell; width:450px;height:450px;">
				<div style="margin:0px auto;">
					<div class="titleDiv">전달 매출</div>
					<div class="elDiv">
						<c:set var="total" value ="0"/>
						<c:forEach items="${salesList }" var="sl">
							<c:set var="total" value="${total + sl.total_price }"/>
						</c:forEach>
						${total } 
						
					</div>
					
					<div class="titleDiv">예약건수</div>
					<div class="elDiv">${fn:length(salesList) }</div>
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
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-1.12.4.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-ui.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-ui.min.js"></script>
		
		
	<script type="text/javascript">
	
	</script>

</body>
</html>