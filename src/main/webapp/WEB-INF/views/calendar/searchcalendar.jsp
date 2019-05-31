<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?&key=AIzaSyDThTAj0AKRlW45lmKFY65_OkQylWQBmeg"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

var markerArray = [];
var iConArray = [];
var nameArray = [];
var contentArray = [];

$(function(){
	$.ajax({
		type: "POST",
		url : "tview.do",
		dataType: "json",
		contentType:"application/json; charset=UTF-8",
		success : function(data){
			if(data.code == "ok")
			for(i in data.tour){
				var no = [];
				no[i] = data.tour[i].touristspot_no;
				nameArray[i] = [data.tour[i].touristspot_name];
				var touristspot = [];
				touristspot[i] = [data.tour[i].touristspot];
				var latitude = [];
				latitude[i] = [data.tour[i].touristspot_latitude];
				var longitude = [];
				longitude[i] = [data.tour[i].touristspot_longitude];
				markerArray[i] = new google.maps.LatLng(latitude[i],longitude[i]);
				iConArray[i] = "http://maps.google.com/mapfiles/ms/micons/yellow-dot.png";
				contentArray[i] = [data.tour[i].touristspot_content];
				
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
<meta charset="UTF-8">
<title>stravel</title>
<style type="text/css">
/*  div{
	border:1px solid black;
} */

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
<div></div>
<div class="row" style="background:gray;">
<div class="col-md-2" style="margin:auto; text-align:center;">
<button class="btn btn-info btn-sm" onclick="location.href='cview.do'">상세일정만들기</button>
<!-- <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#exampleModal1">
상세일정 만들기
</button> -->
<!-- Modal -->
<!-- <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">일정 만들기</h5>
        <button type="button" class="닫기" data-dismiss="modal" aria-label="닫기">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="cinsert.do" method="post">
      <div class="modal-body">
      <label>제목
		<input type="text" name="mycalendar_title" placeholder="제목을 입력하세요" class="form-control">
		</label>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">닫기</button>
        <input type="submit" value="저장" class="btn btn-secondary btn-sm">
      </div>
      </form>
    </div>
  </div>
</div> -->
</div>
<div class="col-md-10" id="map" style="height:530px; position:static"></div>
</div>
</div>
<div style="position:absolute; left: 1240px; top: 110px; width:100px; height:30px;"><button class="btn btn-success btn-sm" onclick="location.href='mycalendar.do'">닫기</button></div>
</body>
</html>