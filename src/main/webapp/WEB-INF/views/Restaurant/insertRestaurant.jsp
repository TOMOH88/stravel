<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="initial-scale=1.0">
<title>stravel</title>
<style>
	table{
		border : 1px solid #444;
	}
	th, td{
		border : 1px solid #444;
	}
	#map {
		height : 300px;
		width:100%;
	}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.MultiFile.js" type="text/javascript" ></script>

<script type="text/javascript">
var map;
var marker;
  function geoCode() {
	  	var faddr_lat = 37.5007939;
		var faddr_lng = 127.03696560000003;
	  	var faddr = document.getElementById('restaurant_address').value;
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
	  		$("#restaurant_gridx").val(faddr_lat);
	  		$("#restaurant_gridy").val(faddr_lng);
	  		return;
	  	});
			
	  }
</script>
</head>
<body>
<c:import url="../common/header.jsp" />
<section class = "section-margin">
	<div class = "container">
		<h1 align="center">관광지 글쓰기 페이지</h1>
		<form action="insertrestaurant.do" method = "post" enctype = "multipart/form-data">
		<input type = "hidden" name = "restaurant_writer" value = "고상훈">
		<table class = "table">
			<tr>
				<th>식당 명</th>
				<td><input type = "text" name = "restaurant_name" class = "form-control" required></td>
			</tr>
			<tr>
				<th>식당 카테고리</th>
				<td>
					<select id = "restaurant_category_code" name = "restaurant_category_code">
							<c:forEach items = "${list }" var = "b">
								<option value = "${ b.restaurant_category_code }">${b.restaurant_category_name }</option>
							</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>식당 설명</th>
				<td>
					<textarea name = "restaurant_content" class = "form-control"></textarea>
				</td>
			</tr>
			<tr>
				<th>식당 주소</th>
				<td>
					<input type = "text" id="restaurant_address"name = "restaurant_address" class = "form-control" required>
					<input type = "button" onclick = "geoCode();" value = "검색">
					<div id = "map"></div>
					<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDThTAj0AKRlW45lmKFY65_OkQylWQBmeg&callback=geoCode"async defer></script>
					<input type="hidden" name="restaurant_gridx" id="restaurant_gridx"/>
					<input type="hidden" name="restaurant_gridy" id="restaurant_gridy"/>
				</td>
					
			</tr>
			<tr>
				<th>식당 영업시작 시간</th>
				<td><input type = "text" name = "restaurant_openinghours" class = "form-control" required></td>
			</tr>
			<tr>
				<th>식당 영업마감 시간</th>
				<td><input type = "text" name = "restaurant_closehours" class = "form-control" required></td>
			</tr>
			<tr>
				<th>식당 전화번호</th>
				<td><input type = "tel" id = "restaurant_tel" name = "restaurant_tel" class = "form-control" required></td>
			</tr>
			<tr>
				<th>식당 홈페이지</th>
				<td><input type = "text" name = "restaurant_homepage" class = "form-control" required></td>
			</tr>
			<tr>
				<th>사진 업로드</th>
				<td><input type = "file" multiple = "multiple" name = "mainpic" class = "multi with-preview"></td>
			</tr>
			<tr>
				<td><input type = "submit"></td>
				<td><input type = "reset"></td>
			</tr>
			</table>	
			</form>			
	</div>
</section>
</body>
</html>