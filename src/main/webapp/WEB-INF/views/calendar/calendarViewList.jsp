<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?&key=AIzaSyDThTAj0AKRlW45lmKFY65_OkQylWQBmeg"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function add_div(){
    var div = document.createElement('div');
    div.innerHTML = document.getElementById('pre_set').innerHTML;
    document.getElementById('field').appendChild(div);
}

function remove_item(obj){
    // obj.parentNode 를 이용하여 삭제
    document.getElementById('field').removeChild(obj.parentNode);
}
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
<div class="row">
<div class="col-md-1" style="background:#203341;">
<button class="btn btn-info btn-sm" onclick="add_div();">일정추가</button>

<div id="pre_set" style="display:none;">
    <font style="color:white;">Day</font> <input class="btn btn-info btn-sm" type="button" value="삭제" onclick="remove_item(this)">
</div>
<div class="row" id="field"></div>
</div>
<div class="col-md-2">dd</div>
<div class="col-md-2">asd</div>
<div class="col-md-7" id="map" style="height:530px; position:static;">
</div>
</div>
</div>
<div style="position:absolute; left: 1190px; top: 110px; width:100%; height:30px;"><button class="btn btn-success btn-sm" data-toggle="modal" data-target="#exampleModal3">저장</button></div>
<div style="position:absolute; left: 1240px; top: 110px; width:100%; height:30px;"><button class="btn btn-success btn-sm" onclick="location.href='mycalendar.do'">닫기</button></div>
<form action="updatecalendar.do" method="post">
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
      <font>제목</font><input type="text" name="mycalendar_title" class="form-control" value="${mycalendar.mycalendar_title }"></div>
      <div class="row">
       <div class="col-xl-6">
       <font>출발일</font><input type="date" name="mycalendar_start_date" class="form-control">
      </div>
      <div class="col-xl-6">
       <font>종료일</font><input type="date" name="mycalendar_end_date" class="form-control">
      </div>
      </div>
      <div>
      <label>내용
      <textarea rows="auto" cols="100" style="width:100%;"></textarea></label></div>
      <div>
      <label>여행테마</label>
      <div class="row">
      <div class="col-xl-4">
      <input type="radio" value="나홀로">나홀로
      </div>
      <div class="col-xl-4">
      <input type="radio" value="단체">단체
      </div>
      <div class="col-xl-4">
      <input type="radio" value="가족">가족
      </div>
      </div>
      <div class="row">
      <div class="col-xl-6">
      <input type="radio" value="커플">커플
      </div>
      <div class="col-xl-6">
      <input type="radio" value="친구">친구
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