<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="initial-scale=1.0">
<title>stravel</title>
<style>
  table {
    border: 1px solid #444444;
  }
  th, td {
    border: 1px solid #444444;
  }

      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 300px;
        width: 600px;
      }
      /* Optional: Makes the sample page fill the window. */
/*       html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }  */
</style>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js" type="text/javascript" ></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.MultiFile.js" type="text/javascript" ></script>
<script>
/* 	var lat = 37.5007939
	var lng = 127.03696560000003
	var placeSearch, autocomplete;
	
	function initAutocomplete() {
	  autocomplete = new google.maps.places.Autocomplete(
	                                      (document.getElementById('touristsopt_address')),{types: ['geocode']});
	  autocomplete.addListener('place_changed', fillInAddress);
	} 	
 	function fillInAddress() {
 	var place = autocomplete.getPlace();
 	lat = place.geometry.location.lat();
	lng = place.geometry.location.lng();
    document.getElementById("lat").value=place.geometry.location.lat();
    document.getElementById("lng").value=place.geometry.location.lng();
    console.log(lat+", "+ lng)
    
 	}
    var map;
    function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: lat, lng: lng},
          zoom: 15
        });
      } */
    
    
    
    
    var map;
	var marker;
      function geoCode() {
    	  	var faddr_lat = 37.5007939;
    		var faddr_lng = 127.03696560000003;
    	  	var faddr = document.getElementById('touristsopt_address').value;
    	  	var geocoder;
    	  	geocoder = new google.maps.Geocoder();
    	  	geocoder.geocode( { 'address': faddr}, function(results, status) {
    	  		if (status == google.maps.GeocoderStatus.OK) {
    	  			var faddr_lat = results[0].geometry.location.lat();	//위도
    	  			var faddr_lng = results[0].geometry.location.lng();	//경도
    	  		} else {
    	  			var faddr_lat = 37.5007939;
    	  			var faddr_lng = 127.03696560000003;
    	  		}
    	  		map = new google.maps.Map(document.getElementById('map'), {
        	        center: {lat: faddr_lat, lng: faddr_lng},
        	        zoom: 15});
    	  		
    	  		marker = new google.maps.Marker({
    	                position: {lat: faddr_lat, lng: faddr_lng},
    	                map: map/* ,
    	                title: 'Hello World!' */
    	            });
    	  		$("#touristsopt_latitude").val(faddr_lat);
    	  		$("#touristsopt_longitude").val(faddr_lng);
    	  		return;
    	  	});
				
    	  }
</script>   
<!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDThTAj0AKRlW45lmKFY65_OkQylWQBmeg&libraries=places&callback=initAutocomplete" async defer></script> -->
</head>
<body>
<c:import url="../common/header.jsp" />
<section class="section-margin">
<h1 align="center">관광지 글쓰기 페이지</h1>
<form action="TSWriterUpload.do" method="post" enctype="multipart/form-data">
<input type="hidden" name="touristsopt_writer" value="김지훈">
<table class="table">
<tr>
	<th>관광지 명</th><td><input type="text" name="touristsopt_name" required="required" class="form-control"/></td>
</tr>
<tr>
	<th>관광지 카테고리</th>
	<td>
		<select name="touristsoptcategorycode">
			<c:forEach items="${ TSCategory}" var="TSC">
			<option value="${TSC.touristspotCategoryCode }">${TSC.touristspotCategoryName }</option>
			</c:forEach>
		</select>
	</td>
</tr>
<tr>
	<th>관광지 설명</th><td><textarea name="touristsopt_content" required="required"class="form-control"></textarea></td>
</tr>
<tr>
	<th>관광지 주소</th><td><input type="text" name="touristsopt_address" id="touristsopt_address" required="required" class="form-control"/><input type="button" onclick="geoCode();" value="검색"></td>

</tr>
<tr>
	<th>관광지 주소2</th>
	<td>  
	<div id="map"></div>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDThTAj0AKRlW45lmKFY65_OkQylWQBmeg&callback=geoCode"
    async defer></script> 
	<input type="hidden" name="touristsopt_latitude" id="touristsopt_latitude"/>
	<input type="hidden" name="touristsopt_longitude" id="touristsopt_longitude"/>
	</td>
	
</tr>
<tr>
	<th>관광지 영업시작 시간</th><td><input type="time" name="touristsopt_open" class="form-control"/></td>
</tr>
<tr>
	<th>관광지 영업마감 시간</th><td><input type="time" name="touristsopt_closed" class="form-control"/></td>
</tr>
<tr>
	<th>관광지 전화번호</th><td><input type="tel" name="touristsopt_tel" required="required" class="form-control"/></td>
</tr>
<tr>
	<th>관광지 홈페이지</th><td><input type="text" name="touristsopt_homepage" required="required" class="form-control"/></td>
</tr>
<tr>
	<th>사진 업로드</th><td><input multiple="multiple" type="file" name="tsimages" class="multi with-preview"/></td>
</tr>
<tr>
	<td><input type="submit"/></td><td><input type="reset"></td>
</tr>
</table>
</form>
</section>
</body>
</html>