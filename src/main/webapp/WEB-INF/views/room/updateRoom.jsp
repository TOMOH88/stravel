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

/* table tr td {
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
 */
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

</style>
</head>
<body>
<section class="section-margin">
	<c:import url="../common/header.jsp" />
    </section>
<div style="width:100%; display:inline-block;">
	<div class="ownerside" style=" width:20%; height:100%;  position: sticky; top: 150px;"><!-- ownerside -->
		<div style="float: left; border: 1px solid #cfcfcf; width: 260px; bottom: 150; margin: 20px;">
			<div style="margin: 30px;">
				<ul>
					<li><a href="ownerMain.do">마이페이지</a></li>
					<li><a href="orderList.do?owner_no=6">예약현황</a></li>
					<li><a href="insertRoom.do">상품등록</a></li>
					<li><a href="updateRoomList.do?owner_no=6">상품수정</a></li>
					<li><a href="updateOwner.do">정보수정</a></li>
				</ul>
			</div>
		</div>
	</div><!-- ownerside -->
		
		<div class="ownerbody"  style="width:69%; display:table-cell;"><!-- ownerbody -->
		<bR><BR><BR>
		<div style="width:900px;border:1px solid black; margin:0 auto; background:#edf7f8; padding:50px;">
			<div style="text-align:center; font-size:2em; margin-bottom:20px; color:black; font-weight:bold; ">객실등록</div>
			<div id="isroom" style="margin:20px; border:1px solid #cfcfcf; background:white;padding:30px;">
			<form action="insertRoomSub.do" method="post" enctype="multipart/form-data" >
				
				<div>객실정보</div>
				<hr>
				<div>객실명 : <input type="text" name="room_name"  value="${room.room_name }"></div>
				<div>최소인원 : <input type="number" min="2" max="10" name="min_no" value="${room.min_no }"></div>
				<div>최대인원 : <input type="number" min="2" max="10" name="max_no" value="${room.max_no }"></div>
				<div>객실정보 :</div>
				<textarea rows="7" cols="50" name="room_content" value="${room.room_content }"></textarea>
				<br>
				<br>
				<br>
				<br>
				<div>가격정보</div>
				<hr>
				<div>비수기 :<input type="text" name="off_season_price" value="${room.off_season_price }"></div>
				<div>성수기 :<input type="text" name="on_season_price" value="${room.on_season_price }"></div>
				<div>주말추가 :<input type="text" name="week_extra_price" value="${room.week_extra_price }"></div>
				<div>인원추가 :<input type="text" name="add_person_price" value="${room.add_person_price }"></div>
				<div>할인율 : <input type="number" min="10" max="100" step="5" name="discountrate" value="${room.discountrate }">%</div>
				<br>
				<div>편의시설</div>
				<hr>
				<div>
					<table>
								<c:forTokens items="${room.room_option }" delims="," var="hb">
									<c:if test="${hb eq 'wifi' }">
										<c:set var="checked0" value="checked" />
									</c:if>
									<c:if test="${hb eq 'parking' }">
										<c:set var="checked1" value="checked" />
									</c:if>
									<c:if test="${hb eq 'tv' }">
										<c:set var="checked2" value="checked" />
									</c:if>
									<c:if test="${hb eq 'fire' }">
										<c:set var="checked3" value="checked" />
									</c:if>
									<c:if test="${hb eq 'bed' }">
										<c:set var="checked4" value="checked" />
									</c:if>
									<c:if test="${hb  eq 'cook' }">
										<c:set var="checked5" value="checked" />
									</c:if>
									<c:if test="${hb eq 'aircon' }">
										<c:set var="checked6" value="checked" />
									</c:if>
									<c:if test="${hb eq 'heater' }">
										<c:set var="checked7" value="checked" />
									</c:if>
									<c:if test="${hb eq 'gril' }">
										<c:set var="checked8" value="checked" />
									</c:if>
									<c:if test="${hb eq 'spa' }">
										<c:set var="checked9" value="checked" />
									</c:if>
									<c:if test="${hb eq 'breakfast' }">
										<c:set var="checked10" value="checked" />
									</c:if>
									<c:if test="${hb eq 'roomservice' }">
										<c:set var="checked11" value="checked" />
									</c:if>
								</c:forTokens>
					<tr>
						<td><label for="wifi"><input type="checkbox" name="room_option" value="wifi" id="wifi" ${checked0 }>WI-FI</label></td>
						<td><label for="parking"><input type="checkbox"name="room_option" value="parking" id="parking" ${checked1 }>주차장</label></td>
						<td><label for="tv"><input type="checkbox" name="room_option" value="tv" id="tv" ${checked2 }>TV</label></td>
						<td><label for="fire"><input type="checkbox" name="room_option" value="fire" id="fire" ${checked3 }>소화기</label></td>
					</tr>
					<tr>
						<td><label for="bed"><input type="checkbox" name="room_option" value="bed"   id="bed" ${checked4 }>침구/세면도구</label></td>
						<td><label for="cook"><input type="checkbox" name="room_option" value="cook"  id="cook" ${checked5 }>취사도구(식기구/접시/가스레인지or인덕션)</label></td>
						<td><label for="aircon"><input type="checkbox" name="room_option" value="aircon" id="aircon" ${checked6 }>에어컨</label></td>
						<td><label for="heater"><input type="checkbox" name="room_option" value="heater" id="heater" ${checked7 }>난방</label></td>
					</tr>
					<tr>
						<td><label for="gril"><input type="checkbox" name="room_option" value="gril" id="gril" ${checked8 }>그릴서비스</label></td>
						<td><label for="spa"><input type="checkbox" name="room_option" value="spa" id="spa" ${checked9 }>스파</label></td>
						<td><label for="breakfast"><input type="checkbox" name="room_option" value="breakfast" id="breakfast" ${checked10 }>조식</label></td>
						<td><label for="roomservice"><input type="checkbox" name="room_option" value="roomservice"  id="roomservice" ${checked11 }>룸서비스</label></td>
					</tr>
					</table>
				</div><br><Br>
				<div>사진 </div>
				<div>
				<input multiple="multiple" type="file" name="roomImg" class="multi with-preview"/>
					
				</div>
				<hr>
				<br>
				<div style="text-align:center;"><input type="submit" value="등록하기" class="irbt" style="margin-right:20px;"><input type="reset" value="취소하기" class="irbt"></div>
				
				</form>
			</div>
		</div>
	</div><!-- ownerbody -->
</div>


<!-- <div  class="bottombar" style="position:fixed; bottom:0px; width:100%; height:71px; border-top:1px solid black; z-index:10;background:white; opacity:0.8; ">
</div> -->
<div class="footer" style="border:1px solid black; width: 100%; height:200px; position:absolute;">
	
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
		
	<script src="${pageContext.request.contextPath }/resources/js/jquery.MultiFile.js" type="text/javascript" ></script>
		
	<script type="text/javascript">
		
	</script>

</body>
</html>