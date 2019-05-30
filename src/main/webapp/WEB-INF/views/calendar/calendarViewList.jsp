<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?&key=AIzaSyDThTAj0AKRlW45lmKFY65_OkQylWQBmeg"></script>
<script type="text/javascript">
/* function add_div(){
    var div = document.createElement('div');
    div.innerHTML = document.getElementById('pre_set').innerHTML;
    document.getElementById('field').appendChild(div);
}

function remove_item(obj){
    // obj.parentNode 를 이용하여 삭제
    document.getElementById('field').removeChild(obj.parentNode);
} */

var markerArray = [];
var iConArray = [];
var nameArray = [];
var contentArray = [];

$(function(){
	$.ajax({
		type: "POST",
		url : "cview.do",
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

    
</script>
<title>stravel</title>
<style type="text/css">
div{
	border:1px solid black;
}

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
<div class="row" style="height:530px;">
<div class="col-md-1" style="background:#203341; height:530px; overflow:scroll;">
<form action="acalendar.do" method="post">
<input type="submit" value="일정추가">
<div id="pre_set" class="row">
    <font style="color:white;">Day</font>
<input type="hidden" name="calendar_title" id="calendar_title" value="day">
</div>
</form>
<c:forEach var="c" items="${ca }" varStatus="status">
<div class="row" id="field">
<a href="dayOne.do?calendar_no=${c.calendar_no }">
<label>
${status.count} ${c.calendar_title }
</label></a>
<a href="delDay.do?calendar_no=${c.calendar_no }">삭제</a>
</div>
</c:forEach>
</div>
<div class="col-md-2" style="overflow:scroll; height:530px;">
<div class="row" id="result">
${oca.calendar_no }${oca.calendar_title }
</div>
</div>
<div class="col-md-2" style="overflow:scroll; height:530px;">
<c:forEach var="tl" items="${tour}">
<div class="row">
<img src="${pageContext.request.contextPath }/resources/files/touristspotImages/${tl.rename_thumnail }" style="width:100%; height:100px;">
<div class="col-xl-12">
<div class="row">
<a href="delDay.do?tno=${tl.touristspot_no }">${tl.touristspot_name }</a>
</div>
</div>
<div class="col-xl-12">
<div class="row">
<font style="font-size:8pt;">${tl.touristspot_content }</font>
</div>
<div class="row">
<div class="col-xl-6">
<div class="row">
<font style="font-size:8pt;">${tl.touristspot_tel }</font>
</div>
<div class="row">
<a href="${tl.touristspot_homepage }"><font style="font-size:8pt;">사이트 이동</font></a>
</div>
</div>
<div class="col-xl-6" align="center" style="margin:auto;">
<button>추가</button>
</div>
</div>
</div>
</div>
</c:forEach>
</div>
<div class="col-md-7" id="map" style="height:530px; position:static;">
</div>
</div>
</div>
<div style="position:absolute; left: 1190px; top: 110px; width:10px; height:30px;"><button class="btn btn-success btn-sm" data-toggle="modal" data-target="#exampleModal3">저장</button></div>
<div style="position:absolute; left: 1240px; top: 110px; width:10px; height:30px;"><button class="btn btn-success btn-sm" onclick="location.href='mycalendar.do'">닫기</button></div>
<form action="vcalendar.do" method="post">
<div class="modal fade" id="exampleModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">제목</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div>
      <font>제목</font><input type="text" name="mycalendar_title" class="form-control" required></div>
      <div class="row">
       <div class="col-xl-6">
       <font>출발일</font><input type="date" name="mycalendar_start_date" class="form-control" required>
      </div>
      <div class="col-xl-6">
       <font>종료일</font><input type="date" name="mycalendar_end_date" class="form-control" required>
      </div>
      </div>
      <div>
      <label>내용
      <textarea rows="auto" cols="100" style="width:100%;" name="mycalendar_content" required></textarea></label></div>
      <div>
      <label>여행테마</label>
      <div class="row">
      <div class="col-xl-4">
      <input type="radio" value="나홀로" name="category" required>나홀로
      </div>
      <div class="col-xl-4">
      <input type="radio" value="단체" name="category" required>단체
      </div>
      <div class="col-xl-4">
      <input type="radio" value="가족" name="category" required>가족
      </div>
      </div>
      <div class="row">
      <div class="col-xl-6">
      <input type="radio" value="커플" name="category" required>커플
      </div>
      <div class="col-xl-6">
      <input type="radio" value="친구" name="category" required>친구
      </div>
      </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        <input type="submit" class="btn btn-secondary" value="저장">
      </div>
    </div>
  </div>
  </div>
</div>
</form>
</body>
</html>