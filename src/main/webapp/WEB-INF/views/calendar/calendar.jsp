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

</style>
</head>
<body>
	<c:import url="../common/header.jsp" />
	<!--================Tour section Start =================-->
	<section class="section-margin pb-xl-5">
	<div class="container">
		<h1>일정상세보기</h1>
	</div>
		<div class="container"
			style="border: 1px solid black; width: 100%; height: 100%;">
			<img
				src="${pageContext.request.contextPath }/resources/img/polynesia-3021072_1920.jpg"
				style="width: 100%; height: 500px;">
		</div>
		<br>
		<div class="container">
			<div class="row">
			
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
	</section>
	<!--================Tour section End =================-->
	<c:import url="../common/footer.jsp" />
</body>
</html>