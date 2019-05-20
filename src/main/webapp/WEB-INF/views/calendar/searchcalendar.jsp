<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?&key=AIzaSyDThTAj0AKRlW45lmKFY65_OkQylWQBmeg"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function movecView(){
	location.href="cview.do";
}
</script>
<meta charset="UTF-8">
<title>stravel</title>
<style type="text/css">
/* div{
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
<button type="button" class="btn btn-info btn-sm" onclick="movecView();">
 상세일정만들기
</button>
</div>
<div class="col-md-10" id="map" style="height:530px; position:static"></div>
</div>
</div>
<div style="position:absolute; left: 1240px; top: 110px; width:100%; height:30px;"><button class="btn btn-success btn-sm" onclick="location.href='mycalendar.do'">닫기</button></div>
<script>
function initialize() {
    var mapLocation = new google.maps.LatLng('33.321349', '126.684723'); // 지도에서 가운데로 위치할 위도와 경도
    var markLocation = new google.maps.LatLng('33.321349', '126.684723'); // 마커가 위치할 위도와 경도


    var mapOptions = {
      center: mapLocation, // 지도에서 가운데로 위치할 위도와 경도(변수)
      zoom: 18, // 지도 zoom단계
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map"), // id: map-canvas, body에 있는 div태그의 id와 같아야 함
        mapOptions);
    
    var size_x = 30; // 마커로 사용할 이미지의 가로 크기
    var size_y = 30; // 마커로 사용할 이미지의 세로 크기
     
    // 마커로 사용할 이미지 주소
     
    var marker;
    marker = new google.maps.Marker({
           position: markLocation, // 마커가 위치할 위도와 경도(변수)
           map: map,
//         info: '말풍선 안에 들어갈 내용',
           title: '제주펜션~' // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
    });
     
    var content = 
    	"<a href='main.do'>"
    	 + "<div style='width: 200px; height: 150px;'>"
    	+ "<img src='${pageContext.request.contextPath}/resources/img/maldives-1993704_1920.jpg' style='width:100%; height:100%;'></div></a>"
    	+ "<hr><div style='width: 200px; height: 70px;'><font>침대1개</font><br>올레펜션<br>₩28,500 x 1박 &nbsp;&nbsp; ★★★★★</div>"; // 말풍선 안에 들어갈 내용
     
    // 마커를 클릭했을 때의 이벤트. 말풍선 뿅~
    var infowindow = new google.maps.InfoWindow({ content: content});

    google.maps.event.addListener(marker, "click", function() {
        infowindow.open(map,marker);
    });
     

     
  }
  google.maps.event.addDomListener(window, 'load', initialize);
			</script> 
</body>
</html>