<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
	<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>  -->
	<script src="${pageContext.request.contextPath }/resources/js/star-rating.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).on('ready', function () {
    $('.kv-gly-star').rating({
        containerClass: 'is-star'
    });
    $('.kv-gly-heart').rating({
        containerClass: 'is-heart',
        defaultCaption: '{rating} hearts',
        starCaptions: function (rating) {
            return rating == 1 ? 'One heart' : rating + ' hearts';
        },
        filledStar: '<i class="glyphicon glyphicon-heart"></i>',
        emptyStar: '<i class="glyphicon glyphicon-heart-empty"></i>'
    });
    $('.kv-fa').rating({
        theme: 'krajee-fa',
        filledStar: '<i class="fa fa-star"></i>',
        emptyStar: '<i class="fa fa-star-o"></i>'
    });
    $('.kv-fa-heart').rating({
        defaultCaption: '{rating} hearts',
        starCaptions: function (rating) {
            return rating == 1 ? 'One heart' : rating + ' hearts';
        },
        theme: 'krajee-fa',
        filledStar: '<i class="fa fa-heart"></i>',
        emptyStar: '<i class="fa fa-heart-o"></i>'
    });
    $('.kv-uni-star').rating({
        theme: 'krajee-uni',
        filledStar: '&#x2605;',
        emptyStar: '&#x2606;'
    });
    $('.kv-uni-rook').rating({
        theme: 'krajee-uni',
        defaultCaption: '{rating} rooks',
        starCaptions: function (rating) {
            return rating == 1 ? 'One rook' : rating + ' rooks';
        },
        filledStar: '&#9820;',
        emptyStar: '&#9814;'
    });
    $('.kv-svg').rating({
        theme: 'krajee-svg',
        filledStar: '<span class="krajee-icon krajee-icon-star"></span>',
        emptyStar: '<span class="krajee-icon krajee-icon-star"></span>'
    });
    $('.kv-svg-heart').rating({
        theme: 'krajee-svg',
        filledStar: '<span class="krajee-icon krajee-icon-heart"></span>',
        emptyStar: '<span class="krajee-icon krajee-icon-heart"></span>',
        defaultCaption: '{rating} hearts',
        starCaptions: function (rating) {
            return rating == 1 ? 'One heart' : rating + ' hearts';
        },
        containerClass: 'is-heart'
    });

    $('.rating,.kv-gly-star,.kv-gly-heart,.kv-uni-star,.kv-uni-rook,.kv-fa,.kv-fa-heart,.kv-svg,.kv-svg-heart').on(
            'change', function () {
                console.log('Rating selected: ' + $(this).val());
            });
});

</script>
</head>
<style>
	div{
		border:1px solid black;
	}
 	table {
   		border: 1px solid #444444;
  	}
 	th, td {
   		border: 1px solid #444444;
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
    	  	var faddr_lat = ${touristspot.touristspot_latitude };
    		var faddr_lng = ${touristspot.touristspot_longitude };
    	  var faddr = document.getElementById('address').value;
    	  	var geocoder;
    	  	geocoder = new google.maps.Geocoder();
    	  	geocoder.geocode( { 'address': faddr}, function(results, status) {
    	  		if (status == google.maps.GeocoderStatus.OK) {
    	  			var faddr_lat = results[0].geometry.location.lat();	//위도
    	  			var faddr_lng = results[0].geometry.location.lng();	//경도
    	  		} else {
    	  			var faddr_lat = ${touristspot.touristspot_latitude };
    	  			var faddr_lng =  ${touristspot.touristspot_longitude };
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
 <section class="section-margin">
 <div class="container">
<h1>${touristspot.touristspot_name }</h1>
<div>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="width: 100%; height: 600px;">
  <ol class="carousel-indicators">
    <c:forEach items="${touristspotImages }" var="tsi">
    <li data-target="#carouselExampleIndicators" data-slide-to="${tsi.touristspot_sq }" <c:if test="${tsi.touristspot_sq eq 1 }"> class="active" </c:if>></li>
    </c:forEach>
  </ol>
				<div class="carousel-inner" style="height:100%;">
				<c:forEach items="${touristspotImages }" var="tsi">
					<c:if test="${tsi.touristspot_sq eq 1 }">
				
							<div class="carousel-item active" style="height:100%;">
								<img class="d-block w-100"
									src="${ pageContext.request.contextPath }/resources/files/touristspotImages/${tsi.touristspot_imagename}"
									alt="${tsi.touristspot_imagename}" style="height: 100%;">
							</div>
					
					</c:if>
					<c:if test="${tsi.touristspot_sq > 1 }">
						<div class="carousel-item" style="height:100%;">
							<img class="d-block w-100"
								src="${ pageContext.request.contextPath }/resources/files/touristspotImages/${tsi.touristspot_imagename}"
								alt="${tsi.touristspot_imagename}" style="height: 100%;">
						</div>
						
					</c:if>
				</c:forEach>
			</div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
<div>
${touristspot.touristspot_content }

</div>
<div class="col-md-6">
    <div id="map"></div><input type="hidden" id="address"/>
 	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDThTAj0AKRlW45lmKFY65_OkQylWQBmeg&callback=geoCode" async defer></script>
</div>

<div class="col-md-6">
주소 :${touristspot.touristspot_address }<br>
홈페이지 : <a href="${touristspot.touristspot_homepage }">홈페이지 접속하기</a><br>
전화번호 : ${touristspot.touristspot_tel }<br>

<c:if test="${touristspot.touristspot_open eq null }">24시간 오픈</c:if>
<c:if test="${!touristspot.touristspot_open eq null }">
오픈시간 : ${touristspot.touristspot_open }<br>
닫는시간 : ${touristspot.touristspot_closed }<br>
</c:if>
</div>
<div>
<input type="text" class="kv-gly-heart rating-loading" value="2" data-size="xs" title="">
</div>

<div>
<form action="">
<input type="hidden" value=""/> 


<table>
<tr>
<td colspan="2">
<input type="text" class="kv-gly-heart rating-loading" value="2" data-size="xs" title="">
</td>
</tr>
<tr><td><textarea rows="4" cols="50"></textarea></td><td><input type="button" value="작성"/></td></tr>
</table>
</form>
</div>
</div>
</section>
<c:import url="../common/afooter.jsp" />
</body>
</html>