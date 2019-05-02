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
.map{
	width:100%;
}
html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
div{
	border:1px solid black;
}

#map{
	width:300px;
	height:300px;
}
</style>
</head>
<body>
	<c:import url="../common/header.jsp" />
	<!--================Tour section Start =================-->
	<section class="section-margin pb-xl-5">
		<div class="container">
		<div class="row">
			<h5>나의 일정</h5>
		</div>
			<div class="row">
				<div class="col-md-8">
					<table class="table">
						<tr>
							<td>DAY1</td>
						</tr>
						<tr>
							<td>DAY2</td>
						</tr>
						<tr>
							<td>DAY3</td>
						</tr>
					</table>
				</div>
				<div class="col-md-4"><div id="map"></div>
			</div>
		</div>
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