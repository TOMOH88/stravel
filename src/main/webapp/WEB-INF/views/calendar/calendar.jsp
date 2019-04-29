<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0">
<meta charset="UTF-8">
<title>stravel</title>
<style>
#cover{
	width: 100%;
    height: 350px;
    position: relative;
}

#day{
	float: left;
    background: #203341;
    height: 60px;
    line-height: 60px;
    color: white;
    font-weight: bold;
    font-size: 22px;
    width: 110px;
    text-align: center;
}

#date{
	float: left;
    height: 60px;
    line-height: 60px;
    color: gray;
    font-weight: bold;
    font-size: 12px;
    width: 110px;
    text-align: center;
}

#total{
	float: right;
    height: 60px;
    line-height: 60px;
    color: gray;
    font-weight: bold;
    font-size: 15px;
    width: 110px;
    text-align: center;
}

.day_sch_box {
    width: 100%;
    border: 1px solid #e5e5e5;
    background: white;
    min-height: 100px;
}
/* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
#map {
	float:right;
	width: 500px;
	height: 500px;
}
/* Optional: Makes the sample page fill the window. */
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}

.day_box {
    width: 100%;
    padding-bottom: 30px;
}

.page_left, .page_left_cmt {
    float: left;
    width: 744px;
    min-height: 500px;
    padding-right: 25px;
}
.plan_page {
    width: 1092px;
    min-height: 500px;
    position: relative;
    margin: 0 auto;
}

.plan_cover {
    width: 100%;
    height: 350px;
    position: relative;
}

.plan_mnu_box {
    width: 100%;
    height: 70px;
    border-left: 1px solid #c8c8ca;
    border-right: 1px solid #c8c8ca;
    border-bottom: 1px solid #c8c8ca;
    background: white;
    padding-right: 20px;
    cursor: pointer;
}
</style>
</head>
<body>
	<c:import url="../common/header.jsp" />
	<!--================Tour section Start =================-->
	<section class="section-margin pb-xl-5">
	<div class="plan_page">
		<div class="plan_cover"
			style="border: 1px solid black; width: 100%; height: 100%;">
			<img
				src="${pageContext.request.contextPath }/resources/img/polynesia-3021072_1920.jpg"
				style="width: 100%; height: 300px;">
		<div class="plan_mnu_box">
		asdad
		</div>
		</div>
		<br>
		<div class="page_left">
		<div class="day_box">
			<div class="day_sch_box">
			asdasd
			</div>
		</div>
		</div>
			<div id="map"></div>
			<script>
				var map;
				function initMap() {
					map = new google.maps.Map(document.getElementById('map'), {
						center : {
							lat : -34.397,
							lng : 150.644
						},
						zoom : 8
					});
				}
			</script>
			<script
				src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDThTAj0AKRlW45lmKFY65_OkQylWQBmeg&callback=initMap"
				async defer></script>
				</div>
	</section>
	<!--================Tour section End =================-->
	<c:import url="../common/footer.jsp" />
</body>
</html>