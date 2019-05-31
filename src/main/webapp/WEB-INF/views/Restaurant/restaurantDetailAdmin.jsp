<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/star-rating.js"
	type="text/javascript"></script>
<!-- 구글폰트 -->
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans"
	rel="stylesheet">
<script type="text/javascript">

$(document).ready(function(){
$(':radio').change(function() {
	  console.log('New star rating: ' + this.value);
	  $('#review_point').val(this.value);
	});
});

$(document).ready(function(){
$("input:radio[name='stars2']:radio[value='3']").prop('checked', true);
});
</script>
</head>
<style>
	#c1, #c2{
		border:1px dotted black;
	}
	#map{
		height:400px;
		width:100%;
	}
	#f1{
    font-family: 'Black Han Sans', sans-serif;
    }
    .landmarkcategory:after{
    	display:block;
    	content:'';
    	clear:both;
    }
    .landmarkcategory .landmarklist{
    	float:left;
    	width:180;
    	margin-right:25px;
    	margin-bottom:25px;
    }
.rating {
  display: inline-block;
  position: relative;
  height: 30px;
  line-height: 30px;
  font-size: 30px;
}

.rating label {
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  cursor: pointer;
}

.rating label:last-child {
  position: static;
}

.rating label:nth-child(1) {
  z-index: 5;
}

.rating label:nth-child(2) {
  z-index: 4;
}

.rating label:nth-child(3) {
  z-index: 3;
}

.rating label:nth-child(4) {
  z-index: 2;
}

.rating label:nth-child(5) {
  z-index: 1;
}

.rating label input {
  position: absolute;
  top: 0;
  left: 0;
  opacity: 0;
}

.rating label .icon {
  float: left;
  color: transparent;
}

.rating label:last-child .icon {
  color: #000;
}

.rating:not(:hover) label input:checked ~ .icon,
.rating:hover label:hover input ~ .icon {
  color: #09f;
}

.rating label input:focus:not(:checked) ~ .icon:last-child {
  color: #000;
  text-shadow: 0 0 5px #09f;
}

  	#map {
	    height: 400px;
	    width: 100%;
    }   
</style>
    <script type="text/javascript">    
	var map;
	var marker;
      function geoCode() {
    	  	var faddr_lat = ${list.restaurant_gridx};
    		var faddr_lng = ${list.restaurant_gridy};
    	  var faddr = document.getElementById('address').value;
    	  	var geocoder;
    	  	geocoder = new google.maps.Geocoder();
    	  	geocoder.geocode( { 'address': faddr}, function(results, status) {
    	  		if (status == google.maps.GeocoderStatus.OK) {
    	  			var faddr_lat = results[0].geometry.location.lat();	//위도
    	  			var faddr_lng = results[0].geometry.location.lng();	//경도
    	  		} else {
    	  			var faddr_lat = ${list.restaurant_gridx };
    	  			var faddr_lng =  ${list.restaurant_gridy };
    	  		}
    	  		map = new google.maps.Map(document.getElementById('map'), {
        	        center: {lat: faddr_lat, lng: faddr_lng},
        	        zoom: 15});
    	  		
    	  		marker = new google.maps.Marker({
    	                position: {lat: faddr_lat, lng: faddr_lng},
    	                map: map/* ,
    	                title: 'Hello World!' */
    	            });
    	  		return;
    	  	});	
    	  }
      
    </script>    
</head>
<body>
<c:import url="../common/adminHeader.jsp" />
	<div class="content" >
		<div class="container-fluid">
			<div class="container" id="c1">
				<c:import url="../common/adminHeader.jsp" />
				<h1 id="f1">${list.restaurant_name }</h1>	
					<div class="landmarkcategory" style="width: 100%;">
			    		<c:forEach items="${image }" var="imagelist">
							<div class="landmarklist">
								<img alt="${imagelist.restaurant_sq }"
									src="${ pageContext.request.contextPath }/resources/img/restaurant/${imagelist.restaurant_imagename }"
									width="200" height="200">
							</div>
			   			</c:forEach>
					</div>
					<hr>
<div>
${list.restaurant_content }

</div>
<div class="row">
<div class="col-md-6">
    <div id="map"></div><input type="hidden" id="address"/>
 	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDThTAj0AKRlW45lmKFY65_OkQylWQBmeg&callback=geoCode" async defer></script>
</div>
<div class="col-md-6">
주소 :${list.restaurant_address }<br>
홈페이지 : <a href="${list.restaurant_homepage }">홈페이지 접속하기</a><br>
전화번호 : ${list.restaurant_tel }<br>

<c:if test="${list.restaurant_openinghours eq null }">24시간 오픈</c:if>
<c:if test="${!list.restaurant_openinghours eq null }">
오픈시간 : ${list.restaurant_openinghours }<br>
닫는시간 : ${list.restaurant_closehours }<br>
</c:if>
<br>
<form class="rating">
  <label>
    <input type="radio" id="stars2" name="stars2" value="1" />
    <span class="icon">★</span>
  </label>
  <label>	
    <input type="radio" id="stars2" name="stars2" value="2" />
    <span class="icon">★</span>
    <span class="icon">★</span>
  </label>
  <label>
    <input type="radio" id="stars2" name="stars2" value="3" />
    <span class="icon">★</span>
    <span class="icon">★</span>
    <span class="icon">★</span>   
  </label>
  <label>
    <input type="radio" id="stars2" name="stars2" value="4" />
    <span class="icon">★</span>
    <span class="icon">★</span>
    <span class="icon">★</span>
    <span class="icon">★</span>
  </label>
  <label>
    <input type="radio" id="stars2" name="stars2" value="5" />
    <span class="icon">★</span>
    <span class="icon">★</span>
    <span class="icon">★</span>
    <span class="icon">★</span>
    <span class="icon">★</span>
  </label>
</form>
</div>
</div>
</div>
</div>
</div>
<div align = "center">
	<button onclick="location.href='updaterestaurant.do?restaurant_no=${list.restaurant_no}'">수정하기</button>
	<button onclick = "location.href='deleterestaurant.do?restaurant_no=${list.restaurant_no}'">삭제하기</button>
</div>
<br>
<div class="container" id="c2">
댓글 : ${fn:length(review)}
<table>
	<c:forEach items="${review }" var="review">
		<tr>
			<th width = "10%">${review.restaurant_review_writer }</th>
				<td width="80%">${review.restaurant_review_content }</td>
			<th width="10%">${review.restaurant_review_date }</th>
			<th><button onclick = "location.href='restaurantreviewBlind.do?review_no=${review.restaurant_review_no}&restaurant_no=${list.restaurant_no }'">블라인드</button></th>
			<th><button onclick = "location.href='restaurantreviewDelete.do?review_no=${review.restaurant_review_no}&restaurant_no=${list.restaurant_no }'">삭제하기</button></th>
		</tr>
	</c:forEach>
</table>
</div>
<br>
<c:import url="../common/afooter.jsp" />
</body>
</html>