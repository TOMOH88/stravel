<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?&key=AIzaSyDThTAj0AKRlW45lmKFY65_OkQylWQBmeg"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
var markerArray = [];
var iConArray = [];
var nameArray = [];
var contentArray = [];

$(function(){
	$.ajax({
		type: "POST",
		url : "aview.do",
		dataType: "json",
		contentType:"application/json; charset=UTF-8",
		success : function(data){
			if(data.code == "ok")
			for(i in data.owner){
				var no = [];
				no[i] = data.owner[i].owner_no;
				nameArray[i] = [data.owner[i].owner_companyName];
				var latitude = [];
				latitude[i] = [data.owner[i].owner_latitude];
				var longitude = [];
				longitude[i] = [data.owner[i].owner_longitude];
				markerArray[i] = new google.maps.LatLng(latitude[i],longitude[i]);
				iConArray[i] = "http://maps.google.com/mapfiles/ms/micons/yellow-dot.png";
				contentArray[i] = [data.owner[i].owner_address];
				
				addMarker(no, data, contentArray, location, nameArray)
				
				}
		},
		error: function(jqXHR, textStatus, errorThrown){
			alert(jqXHR.responseText.errorThrown)
		}
	});
});

/*     function initMap(no, data , name, latitude, longitude) {
    	var mapLocation = new google.maps.LatLng('33.321349', '126.684723'); // 지도에서 가운데로 위치할 위도와 경도
        mapOptions = { 
         zoom:11, 
         center:mapLocation 
        } 
    	
        var map = new google.maps.Map(document.getElementById('map'), mapOptions); 
        var infowindow = new google.maps.InfoWindow(); 
        var marker = [];
        
        for (i = 0; i < no.length; i++) { 
        	var icon = '';
           marker[i] = new google.maps.Marker({ 
           position: new google.maps.LatLng(latitude[i], longitude[i]), 
           map:   map, 
           title: '제주도' , 
          }); 
          var contentString = 'Title on Load'; 
          var infowindow = [];
          infowindow = new google.maps.InfoWindow({ 
           content: contentString, 
           maxWidth: 160 
          }); 
          
          infowindow.open(map, marker[i]); 
     
          // Event that closes the Info Window with a click on the map 
          google.maps.event.addListener(map, 'click', function() { 
           infowindow.close(); 
          }); 
          
          google.maps.event.addListener(marker, 'click', (function(marker, i) { 
           return function() { 
            var contentString = 'Title on Click'; 
            infowindow.setContent(contentString); 
            infowindow.open(map, marker); 
           } 
          })(marker, i)); 
         } 
        } 
    google.maps.event.addDomListener(window, 'load', initMap); */
    var markers = [];
    var iterator = 0;
    var map;
     
  
    function initialize() {
        var mapOptions = {
            zoom: 11,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            center: new google.maps.LatLng('33.321349', '126.684723')
        };
     
        map = new google.maps.Map(document.getElementById('map'),mapOptions);
     
        for (var i = 0; i < markerArray.length; i++) {
            addMarker();
        }
    }
     
     
    // 마커 추가
    function addMarker(no, data, contentArray, location, nameArray) {
    	
    	var title = nameArray[iterator];
        var marker = new google.maps.Marker({
            position: markerArray[iterator],
            map: map,
            draggable: false,
            icon: iConArray[iterator],
            title : "'" + nameArray[iterator] + "'"
        });
        markers.push(marker);
     
        var infowindow = new google.maps.InfoWindow({
          content: "'" + contentArray[iterator] + "'"
        });
     
        google.maps.event.addListener(marker, 'click', function() {
            infowindow.open(map,marker);
        });
        iterator++;
        
        google.maps.event.addListener(map, 'click', function() { 
            infowindow.close(); 
           }); 
    }
     
    google.maps.event.addDomListener(window, 'load', initialize);
</script>
<title>stravel</title>
<style type="text/css">

.map{
	position:fixed;
	height:100%;
}

</style>
</head>
<body>
<c:import url="../common/sheader.jsp" />
<div style="height:90px;"></div>
<div class="container-fluid">
<div class="row">
<div class="col-md-5" style="overflow:scroll; height:530px;">
<br>
<div class="col-md-12">
<div class="row">
<!-- 필터시작 -->	
<!--Button trigger modal
<div class="col-xl-2">
<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#exampleModal1">
  숙박기간
</button>
Modal
<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">숙박기간</h5>
        <button type="button" class="닫기" data-dismiss="modal" aria-label="닫기">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <label for="startDate"> 체크인
        <input type="date" id="startDate">
        </label>
        <label for="endDate"> 체크아웃
         <input type="date" id="endDate">
         </label>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary">저장</button>
      </div>
    </div>
  </div>
</div>
</div>
<div class="col-xl-1"></div>
Button trigger modal
<div class="col-xl-2">
<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#exampleModal2">
  인원수
</button>
Modal
<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">인원수</h5>
        <button type="button" class="닫기" data-dismiss="modal" aria-label="닫기">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <label for="num1">성인
      	<input type="number" class="form-control" id="num1">
      	</label>
      	<label for="num2">어린이
      	<input type="number" class="form-control" id="num2">
      	</label>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary">저장</button>
      </div>
    </div>
  </div>
</div>
</div>
<div class="col-xl-1"></div>
Button trigger modal
<div class="col-xl-2">
<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#exampleModal3">
  가격
</button>
Modal
<div class="modal fade" id="exampleModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">가격</h5>
        <button type="button" class="닫기" data-dismiss="modal" aria-label="닫기">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <input type="number">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary">저장</button>
      </div>
    </div>
  </div>
</div>
</div>
<div class="col-xl-1"></div>
Button trigger modal
<div class="col-xl-2">
<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#exampleModal4">
  필터추가
</button>
Modal
<div class="modal fade" id="exampleModal4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">편의시설</h5>
        <button type="button" class="닫기" data-dismiss="modal" aria-label="닫기">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <label><input type="checkbox" >WI-FI</label><br>
      <label><input type="checkbox" >주차장</label><br>
      <label><input type="checkbox" >야외 그릴장</label><br>
      <label><input type="checkbox" >소화기</label><br>
      <label><input type="checkbox" >TV</label><br>
      <label><input type="checkbox" >침구/세면도구</label><br>
      <label><input type="checkbox" >취사기구</label><br>
      <label><input type="checkbox" >에어컨</label><br>
      <label><input type="checkbox" >난방</label>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary">저장</button>
      </div>
    </div>
  </div>
</div>
</div>
<div class="col-xl-1"></div> -->
<!-- 필터끝-->
</div>
<br>
<!-- 리스트 영역 시작 -->
<c:forEach var="list" items="${ow}" varStatus="status">
<div class="row" style="border:1px solid Wheat; background:LightGoldenrodYellow">
<div class="col-xl-5">
<div id="carouselExampleIndicators${status }" class="carousel slide" data-ride="carousel" style="height:100%; widht:100%;">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators${status }" data-slide-to="${status }" class="active"></li>
    <li data-target="#carouselExampleIndicators${status }" data-slide-to="${status }"></li>
    <li data-target="#carouselExampleIndicators${status }" data-slide-to="${status }"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <a href="#"><img class="d-block w-100" src="${pageContext.request.contextPath}/resources/img/maldives-1993704_1920.jpg" alt="${status }"></a>
    </div>
    <div class="carousel-item">
      <a href="#"><img class="d-block w-100" src="${pageContext.request.contextPath}/resources/img/maldives-1993704_1920.jpg"></a>
    </div>
    <div class="carousel-item">
      <a href="#"><img class="d-block w-100" src="${pageContext.request.contextPath}/resources/img/maldives-1993704_1920.jpg"></a>
    </div>
  </div>
  <div style="background:Burlywood;" align="center"><font style="color:LightSlateGray;">TravelMaker.stravel</font></div>
</div>
</div>
<div class="col-xl-7">
<a href="roomDetail.do?owner_no=${list.owner_no }">${list.owner_companyName }</a> <br>
<font style="font-size:8pt;">
${list.owner_category }<br>
TEL : ${list.owner_phone } &nbsp; 가격 : ${list.off_season_price }<br>
주소 : ${list.owner_address }
</font>
<br>
별점 : ${list.property_review_like }
</div>
</div>
<br>
<!-- 리스트 영역 끝 -->
</c:forEach>
</div>
</div>
<!-- map 시작 -->
<div class="col-md-7" id="map" style="height:530px;"></div>
<!-- map 끝 -->
</div>
</div>
<div style="position:absolute; left: 1300px; top: 30px; width:10px; height:30px;"><button class="btn btn-success btn-sm" onclick="location.href='main.do'">닫기</button></div>
</body>
</html>