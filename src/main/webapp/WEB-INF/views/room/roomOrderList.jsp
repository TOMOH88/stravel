<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

ul li {
	font-size: 1.5em;
	font-weight: bold;
	margin-bottom: 5px;
}

ul li a:link, ul li a:visited {
	color: #888888;
}

ul li a:hover {
	font-size: 1.1em;
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
</style>
</head>
<body>
<div id="headerdiv" style="border: 1px solid black; width:100%; height:100px;">
	header
</div>
<div style="width:100%; display:inline-block;">
	<div class="ownerside" style=" width:20%; height:100%;  position: sticky; top: 150px;"><!-- ownerside -->
		<div style="float: left; border: 1px solid #cfcfcf; width: 260px; bottom: 150; margin: 20px;">
			<div style="margin: 30px;">
				<ul>
					<li><a href="ownerMain.do">마이페이지</a></li>
					<li><a href="orderList.do">예약현황</a></li>
					<li><a href="insertRoom.do">상품등록</a></li>
					<li><a href="updateRoom.do">상품수정</a></li>
					<li><a href="updateOwner.do">정보수정</a></li>
				</ul>
			</div>
		</div>
	</div><!-- ownerside -->
		
	<div class="ownerbody"  style="width:69%; display:table-cell;"><!-- ownerbody -->
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
							<tr>
								<td>201호</td>
								<td>오청</td>
								<td>2명</td>
								<td>2019-04-22</td>
								<td>2019-05-05</td>
								<td>2019-05-06</td>
								<td>결제완료</td>
								<td><a class="rsvck" value="1">입실확인</a></td>
							</tr>	
							<tr>
								<td>201호</td>
								<td>오청</td>
								<td>2명</td>
								<td>2019-04-22</td>
								<td>2019-05-05</td>
								<td>2019-05-06</td>
								<td>결제완료</td>
								<td><a class="rsvck" value="1">입실확인</a></td>
							</tr>
							<tr>
								<td>201호</td>
								<td>오청</td>
								<td>2명</td>
								<td>2019-04-22</td>
								<td>2019-05-05</td>
								<td>2019-05-06</td>
								<td>결제완료</td>
								<td><a class="rsvck" value="1">입실확인</a></td>
							</tr>
							<tr>
								<td>201호</td>
								<td>오청</td>
								<td>2명</td>
								<td>2019-04-22</td>
								<td>2019-05-05</td>
								<td>2019-05-06</td>
								<td>결제완료</td>
								<td><a class="rsvck" value="1">입실확인</a></td>
							</tr>
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