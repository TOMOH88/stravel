<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="initial-scale=1.0">
<title>stravel</title>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js" type="text/javascript" ></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.MultiFile.js" type="text/javascript" ></script>
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
        width: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
/*       html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }  */
</style>
<script>
    var map;
	var marker;
      function geoCode() {
    	  	var faddr_lat = 37.5007939;
    		var faddr_lng = 127.03696560000003;
    	  	var faddr = document.getElementById('touristspot_address').value;
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
    	  		$("#touristspot_latitude").val(faddr_lat);
    	  		$("#touristspot_longitude").val(faddr_lng);
    	  		return;
    	  	});
				
    	  }
</script>   
</head>
<body>
<c:import url="../common/adminHeader.jsp" />
<section class="section-margin">
<div class="container">
<h1 align="center">관광지 글쓰기 페이지</h1>
<form action="TSWriterUpload.do" method="post" enctype="multipart/form-data">
<input type="hidden" name="touristspot_writer" value="김지훈">
<table class="table">
<tr>
	<th>관광지 명</th><td><input type="text" name="touristspot_name" required="required" class="form-control"/></td>
</tr>
<tr>
	<th>관광지 카테고리</th>
	<td>
		<select name="touristspotcategorycode">
			<c:forEach items="${ TSCategory}" var="TSC">
			<option value="${TSC.touristspotCategoryCode }">${TSC.touristspotCategoryName }</option>
			</c:forEach>
		</select>
	</td>
</tr>
<tr>
	<th>관광지 설명</th><td><textarea name="touristspot_content" required="required"class="form-control"></textarea></td>
</tr>
<tr>
	<th>관광지 주소</th><td><input type="text" name="touristspot_address" id="touristspot_address" required="required" class="form-control"/><input type="button" onclick="geoCode();" value="검색"></td>

</tr>
<tr>
	<th>관광지 지도</th>
	<td>  
	<div id="map"></div>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDThTAj0AKRlW45lmKFY65_OkQylWQBmeg&callback=geoCode"
    async defer></script> 
	<input type="hidden" name="touristspot_latitude" id="touristspot_latitude"/>
	<input type="hidden" name="touristspot_longitude" id="touristspot_longitude"/>
	</td>
	
</tr>
<tr>
	<th>관광지 영업시작 시간</th><td><input type="time" name="touristspot_open" class="form-control"/></td>
</tr>
<tr>
	<th>관광지 영업마감 시간</th><td><input type="time" name="touristspot_closed" class="form-control"/></td>
</tr>
<tr>
	<th>관광지 전화번호</th><td><input type="tel" name="touristspot_tel" required="required" class="form-control"/></td>
</tr>
<tr>
	<th>관광지 홈페이지</th><td><input type="text" name="touristspot_homepage" required="required" class="form-control"/></td>
</tr>
<tr>
	<th>사진 업로드</th><td><input multiple="multiple" type="file" name="tsimages" class="multi with-preview"/></td>
</tr>
<tr>
	<td><input type="submit"/></td><td><input type="reset"></td>
</tr>
</table>
</form>
</div>
</section>
<c:import url="../common/afooter.jsp" />
</body>
</html>