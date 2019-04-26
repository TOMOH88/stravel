<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0">
<meta charset="UTF-8">
<title>stravel</title>
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
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
<h1>일정상세보기</h1>
<div class="row" style="border:1px solid black;">
<div class="col-xs-8 col-sm-6" style="border:1px solid black;">
<h2>dddddddddddddddddddd</h2>
</div>
<div class="col-xs-4 col-sm-6" style="border:1px solid black;">
<div id="map"></div>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 8
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDThTAj0AKRlW45lmKFY65_OkQylWQBmeg&callback=initMap"
    async defer></script>
    </div>
</div>
</section>
<!--================Tour section End =================-->
<c:import url="../common/footer.jsp" />
</body>
</html>