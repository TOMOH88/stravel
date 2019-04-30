<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<style type="text/css">
#page-wrapper {
    padding-left: 250px;
  }
  
  #sidebar-wrapper {
    position: fixed;
    width: 250px;
    height: 100%;
    margin-left: -250px;
    background: #000;
    overflow-x: hidden;
    overflow-y: auto;
  }
  
  #page-content-wrapper {
    width: 100%;
    padding: 20px;
  }
  
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
<section class="section-margin pb-xl-5">
<div id="page-wrapper">
  <div id="sidebar-wrapper">
    <ul class="sidebar-nav">
    	<input type="button" value="상세 일정 만들기" class="btn btn-info">
    </ul>
  </div>
<div id="map" style="width:100%; height:561px;"></div>
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
</body>
</html>