<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<style type="text/css">
  .map{
	width:100%;
	height:100%;
}
html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
</style>
</head>
<body>
<c:import url="../common/sheader.jsp" />
<div style="padding:35px;">
<div class="row" style="background:gray;">
<div class="col-md-2" style="margin:auto; text-align:center;">
<button><font>상세일정만들기</font></button>
</div>
<div class="col-md-10" id="map" style="width:100%; height:561px;"></div>
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
</body>
</html>