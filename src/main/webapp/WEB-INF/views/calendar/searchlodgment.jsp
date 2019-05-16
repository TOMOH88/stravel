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
<div class="col-md-5" style="overflow:scroll; height:530px;">
<br>
<div class="col-md-12">
<div class="row">
<!-- 필터시작 -->	
<!-- Button trigger modal -->
<div class="col-xl-2">
<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#exampleModal1">
  숙박기간
</button>
<!-- Modal -->
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
<!-- Button trigger modal -->
<div class="col-xl-2">
<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#exampleModal2">
  인원수
</button>
<!-- Modal -->
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
<!-- Button trigger modal -->
<div class="col-xl-2">
<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#exampleModal3">
  가격
</button>
<!-- Modal -->
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
<!-- Button trigger modal -->
<div class="col-xl-2">
<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#exampleModal4">
  필터추가
</button>
<!-- Modal -->
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
<div class="col-xl-1"></div>
<!-- 필터끝-->
</div>
<br>
<div class="row">
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="height:100%; width:200px;">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <a href="#"><img class="d-block w-100" src="${pageContext.request.contextPath}/resources/img/polynesia-3021072_1920.jpg" alt="첫번째 슬라이드"></a>
    </div>
    <div class="carousel-item">
      <a href="#"><img class="d-block w-100" src="${pageContext.request.contextPath}/resources/img/polynesia-3021072_1920.jpg" alt="두번째 슬라이드"></a>
    </div>
    <div class="carousel-item">
      <a href="#"><img class="d-block w-100" src="${pageContext.request.contextPath}/resources/img/polynesia-3021072_1920.jpg" alt="세번째 슬라이드"></a>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">이전</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">다음</span>
  </a>
</div>
<div class="col-xl-7">
<a href="#">호텔1</a> <br>
<font style="font-size:8pt;">주택의 개인실
인원 1명
침실 1개
침대 1개
공동 사용 욕실 1개</font>
<br>
<br>
★★★★★
</div>
</div>
</div>
</div>
<!-- map 시작 -->
<div class="col-md-7" id="map-canvas" style="height:530px;"></div>
<!-- map 끝 -->
</div>
</div>
<script type="text/javascript">
function initialize() {
    var mapLocation = new google.maps.LatLng('33.321349', '126.684723'); // 지도에서 가운데로 위치할 위도와 경도
    var markLocation = new google.maps.LatLng('33.321349', '126.684723'); // 마커가 위치할 위도와 경도


    var mapOptions = {
      center: mapLocation, // 지도에서 가운데로 위치할 위도와 경도(변수)
      zoom: 10.7, // 지도 zoom단계
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map-canvas"), // id: map-canvas, body에 있는 div태그의 id와 같아야 함
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
     
    var content = "<div style='width: 100%; height: 100%;'><div id='carouselExampleIndicators1' class='carousel slide' data-ride='carousel'style='height:100%; width:200px;''>"
    	 + "<ol class='carousel-indicators'>"
    	 + "<li data-target='#carouselExampleIndicators1' data-slide-to='4' class='active'></li>"
    	 + "<li data-target='#carouselExampleIndicators1' data-slide-to='5'></li>"
    	 + "<li data-target='#carouselExampleIndicators1' data-slide-to='6'></li>"
    	 + "</ol>"
    	 + "<div class='carousel-inner'>"
    	 + "<div class='carousel-item active'>"
    	 + "<a href='main.do'><img class='d-block w-100' src='${pageContext.request.contextPath}/resources/img/polynesia-3021072_1920.jpg' alt='네번째 슬라이드'></a>"
    	 + "</div>"
    	 + "<div class='carousel-item'>"
    	 + "<a href='main.do'><img class='d-block w-100' src='${pageContext.request.contextPath}/resources/img/polynesia-3021072_1920.jpg' alt='다섯째 슬라이드'></a>"
    	 + "</div>"
    	 + "<div class='carousel-item'>"
    	 + "<a href='main.do'><img class='d-block w-100' src='${pageContext.request.contextPath}/resources/img/polynesia-3021072_1920.jpg' alt='여섯째 슬라이드'></a>"
    	 + "</div>"
    	 + "</div>"
    	 + "<a class='carousel-control-prev' href='#carouselExampleIndicators1' role='button' data-slide='prev'>"
    	 + "<span class='carousel-control-prev-icon' aria-hidden='true'></span>"
    	 + "<span class='sr-only'>이전</span>"
    	 + "</a>"
    	 + "<a class='carousel-control-next' href='#carouselExampleIndicators1' role='button' data-slide='next'>"
    	 + "<span class='carousel-control-next-icon' aria-hidden='true'></span>"
    	 + "<span class='sr-only'>다음</span>"
    	 + "</a>"
    	 + "</div>"
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