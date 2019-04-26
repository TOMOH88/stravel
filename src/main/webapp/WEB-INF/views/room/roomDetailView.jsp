<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="vendors/linericon/style.css">
<link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="vendors/flat-icon/font/flaticon.css">
<link rel="stylesheet" href="vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="css/style.css">
<style type="text/css">
@media (min-width: 1128px)
.maindiv {
    max-width: 1080px !important;
}
@media (min-width: 744px)
.maindiv {
    max-width: 696px !important;
}
@media (min-width: 1506px)
.timgdiv {
	max-width:1506px;
}
.maindiv {
	
	width:1032px;
	
	margin-left: auto !important;
    margin-right: auto !important;
    
   /*  margin-left: auto !important;
    margin-right: auto !important;
    width: auto !important;
    padding-right: 24px !important;
    padding-left: 24px !important; */
	
}
#mainimg{
	width:100%;
	height:100%;
}

#mainimg1{
	width:50px;
	height:50px;
	border-radius:50%;
}
#titlediv{
	font-size:1.5em;
	font-weight:bold;
	margin-left:20px;
}
 #map {
    height: 100%;
} 
 #selectroom,
 #selectperson{
  width: 240px;
  padding: .8em .5em;
  font-family: inherit;
  background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
/*   border: 1px solid #999;
  border-radius: 0px; */
 
 }
 .rsvbt {
	-moz-box-shadow:inset 0px 39px 0px -24px #99b4ff;
	-webkit-box-shadow:inset 0px 39px 0px -24px #99b4ff;
	box-shadow:inset 0px 39px 0px -24px #99b4ff;
	background-color:#99b4ff;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border-radius:4px;
	border:1px solid #99b4ff;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:2px 90px;
	text-decoration:none;
	text-shadow:0px 1px 0px #99b4ff;
}
.rsvbt:hover {
	background-color:#99b4ff;
}
.rsvbt:active {
	position:relative;
	top:1px;
}

        
 

      /* Optional: Makes the sample page fill the window. */
      /* html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      } */
</style>
</head>
<body class="roomBody">

<div  style="border: 1px solid black; width:100%; height:100px;">
header
</div>

<div onclick="check();" style="width:100%;height:592px;" class="timgdiv"><!-- 나중에 클릭시 모달창 함수 실행시킬 div 영역 -->
	<div style=" width:50%;height:592px; float:left; ">
	<img id="mainimg" src="${pageContext.request.contextPath }/resources/files/메인사진1.PNG"><!-- 1번그림 -->
	</div>
	<div style="width:25%;height:592px; float:left;">
		<div style="width:100%; height:50%">
		<img id="mainimg" src="${pageContext.request.contextPath }/resources/files/메인사진1.PNG" ><!-- 2번그림 -->
		</div>
		<div style="width:100%; height:50%">
		<img id="mainimg" src="${pageContext.request.contextPath }/resources/files/메인사진1.PNG"><!-- 3번그림 -->
		</div>
	</div>
	<div style="width:25%;height:592px; float:left;">
		<div style="width:100%; height:50%">
		<img id="mainimg" src="${pageContext.request.contextPath }/resources/files/메인사진1.PNG"><!-- 4번그림 -->
		</div>
		<div style="width:100%; height:50%">
		<img id="mainimg" src="${pageContext.request.contextPath }/resources/files/메인사진1.PNG"><!-- 5번그림 -->
		</div>
	</div>
</div>

<hr>
<div style="margin-top:20px;"></div>
<div class="maindiv"><!-- 메인정보영역 -->
	<!-- <div style="margin-bottom:20px; height:auto;">메인/사이드바/즐길거리포함영역 -->
		<div style="background:gray; width:70%; float:left;"><!-- 메인정보영역 -->
			<div style="padding:20px;"><!-- 업체정보  -->
				<div><h1>제주월정리펜션</h></div><!-- 사업자이름 -->
				<div><h5>서울특별시 관악구 봉천동 <br> 010-3086-3045</h5></div>
			</div>
			<br>
			<hr>
			<div><!-- 객실 정보/포문 -->
			<div id="titlediv">객실정보</div><br>
				<div style="width:1032px;height:150px;margin:5px;"><!-- 객실하나 -->
					<div style="background:blue; width:150px; height:150px; float:left; margin-right:20px;"></div><!-- 객실사진슬라이더공간 -->
					<div style="background:red;float:left; height:150px; width:500px; border-radius:10px"><h5>객실정보<br>최대인원/최소인원</h5></div><!-- 각객실당정보 -->
				</div>
				<div style="width:1032px;height:150px;margin:5px;"><!-- 객실하나 -->
					<div style="background:blue; width:150px; height:150px; float:left; margin-right:20px;"></div><!-- 객실사진슬라이더공간 -->
					<div style="background:red;float:left; height:150px; width:500px; border-radius:10px"><h5>객실정보<br>최대인원/최소인원</h5></div><!-- 각객실당정보 -->
				</div>
				<div style="width:1032px;height:150px;margin:5px;"><!-- 객실하나 -->
					<div style="background:blue; width:150px; height:150px; float:left; margin-right:20px;"></div><!-- 객실사진슬라이더공간 -->
					<div style="background:red;float:left; height:150px; width:500px; border-radius:10px"><h5>객실정보<br>최대인원/최소인원</h5></div><!-- 각객실당정보 -->
				</div>
				<div style="width:1032px;height:150px;margin:5px;"><!-- 객실하나 -->
					<div style="background:blue; width:150px; height:150px; float:left; margin-right:20px;"></div><!-- 객실사진슬라이더공간 -->
					<div style="background:red;float:left; height:150px; width:500px; border-radius:10px"><h5>객실정보<br>최대인원/최소인원</h5></div><!-- 각객실당정보 -->
				</div>
			</div><!-- 객실정보끝 -->
			<br>
			<hr>
			<div><!-- 리뷰/포문 -->
				<div style="height:50px; width:1032px;">
					<!-- <div style="float:left" id="titlediv">&nbsp;&nbsp;후기 400개</div>
					<div style="float:left"><br>&nbsp;&nbsp;별점</div> -->
					<span id="titlediv">후기</span><span style="font-size:medium;">400개</span><!-- 별점 -->
				</div>
				<br>
				<div style="width:1032px;height:150px;margin:5px;"><!-- 후기하나 -->
					<div style="width:1032px;height:50px;"><!-- 사진/이름/별점 -->
						<div style="float:left;"><img id="mainimg1" src="${pageContext.request.contextPath }/resources/files/메인사진1.PNG"></div><!-- 사진 -->
						<div style="float:left;">
							<div>이름</div><!-- 이름 -->
							<div>별점</div><!-- 별점 -->
						</div>
					</div>
					<div style="width:1032px;height:150px;margin:5px;">
						통유리로 보는 바다풍경이 넘 멋지고 좋았어요 애월특성상 밤에 <br>
						편의 시설이 조금 불편하긴 했지만 일찍 도착했는데 잘 도와주셔 <Br>
						편히 지내다 왔어요 또 머무르고 싶어요
					</div>
				</div>
				<div style="width:1032px;height:150px;margin:5px;"><!-- 후기하나 -->
					<div style="width:1032px;height:50px;"><!-- 사진/이름/별점 -->
						<div style="float:left;"><img id="mainimg1" src="${pageContext.request.contextPath }/resources/files/메인사진1.PNG"></div><!-- 사진 -->
						<div style="float:left;">
							<div>이름</div><!-- 이름 -->
							<div>별점</div><!-- 별점 -->
						</div>
					</div>
					<div style="width:1032px;height:150px;margin:5px;">
						통유리로 보는 바다풍경이 넘 멋지고 좋았어요 애월특성상 밤에 <br>
						편의 시설이 조금 불편하긴 했지만 일찍 도착했는데 잘 도와주셔 <Br>
						편히 지내다 왔어요 또 머무르고 싶어요
					</div>
				</div>
				<div style="width:1032px;height:150px;margin:5px;"><!-- 후기하나 -->
					<div style="width:1032px;height:50px;"><!-- 사진/이름/별점 -->
						<div style="float:left;"><img id="mainimg1" src="${pageContext.request.contextPath }/resources/files/메인사진1.PNG"></div><!-- 사진 -->
						<div style="float:left;">
							<div>이름</div><!-- 이름 -->
							<div>별점</div><!-- 별점 -->
						</div>
					</div>
					<div style="width:1032px;height:150px;margin:5px;">
						통유리로 보는 바다풍경이 넘 멋지고 좋았어요 애월특성상 밤에 <br>
						편의 시설이 조금 불편하긴 했지만 일찍 도착했는데 잘 도와주셔 <Br>
						편히 지내다 왔어요 또 머무르고 싶어요
					</div>
				</div>
			</div><!-- 리뷰 -->
			<BR>
			<HR>
			<div><!-- 지역정보 -->
				<div id="titlediv">지역 정보</div>
				<div>주소</div>
				<br>
				<div id="place_plain" style="cursor: pointer" onclick="if(plain.style.display=='none')
					{plain.style.display='';place_plain.innerText = '접기'
					}else {plain.style.display='none'; place_plain.innerText= '지역정보 더보기'}">지역정보 더보기
				</div>
				<div id="plain" style="display : none;padding:10px;"><!-- 펼쳐질공간 -->
				교통편
				</div> 
				<div style="width:682px; height:350px; margin:20px; background:yellow;"><!-- 구글맵영역 -->
					<div id="map"></div>
				</div>
			</div><!-- 지역정보 -->
			<br>
			<hr>
		</div><!-- 메인정보 -->
<!-- 		<div style="background:yellow; width:30%; float:left; ">사이드바 공간 -->
			<div id="roomsidebar" style="width:260px; border:1px solid gray; float:left; position:sticky; top:100px; margin:10px; padding:10px;"><!-- 오른쪽 사이드바 -->
				<div style="width:260px;height:40px;"><!-- 사이드바 헤드 -->
					<!-- <div style="width:100px; padding:10px; "id="sideprice">₩85,000<div style="font-size:small;float:right;">/박</div></div> -->
					<span  id="sideprice">₩85,000</span><span style="font-size:x-small;">/박</span>
				</div>
				<div style="margin-left:10px;margin-right:10px;"><hr></div>
				<div ><!-- 사이드바 바디 -->
					<form action="" method="post">
						<div><!-- 객실선택드롭다운 -->
						<div style="font-size:xx-small">옵션</div>
							<div id="selectroom">
								<select id="selectroom" name="roomno" required>
									<option>101호</option>
									<option>102호</option>
									<option>103호</option>
									<option>201호</option>
									<option>102호</option>
								</select>
							</div>
						</div>
						<div style="font-size:xx-small">날짜</div>
						<!-- <div style="float:center;"><span><div>체크인</div></span><span>→</span><div>체크아웃</div><span></span></div> -->
						<div style="height:50px;"><!-- 체크인,체크아웃 /달력 -->
							<div>
								<div style="float:left; width:130px;">&nbsp;체크인</div>
								<div style="float:left; width:130px;">&nbsp;&nbsp;체크아웃</div>
							</div>
							<div >
								<div ><input type="date" name="checkin" style="float:left; width:117px;"></div>
								<div style="float:left; width:24; height:24;">→</div>
								<div ><input type="date" name="checkout" style="float:left; width:117px;"></div>
							</div>
						</div>
						<div><!-- 인원선택 -->		
						<div style="font-size:xx-small">옵션</div>
							<div id="selectperson">
								<select id="selectperson" required>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
								</select>			
							</div>
						</div>
						<Br>
						<hr>
						<div style="padding:8px;"><!-- 예약하기 버튼 -->
							<input type="submit" value="예약하기" name="reservation" class="rsvbt">
						</div>
					</form>
				</div>
			</div><!-- 오른쪽 사이드바 -->
		<!-- </div>사이드바 공간 -->
	<!-- <hr style="margin-top:30px;"> -->

	<!-- </div>즐길거리 슬라이드 공간
		<div>	
		<div id="titlediv">주변 즐길거리</div>
		<div style="background:red; height:200px;">
	</div> -->
	</div>
</div>


<script src="vendors/jquery/jquery-3.2.1.min.js"></script>
<script src="vendors/bootstrap/bootstrap.bundle.min.js"></script>
<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="vendors/nice-select/jquery.nice-select.min.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/mail-script.js"></script>
<script src="js/skrollr.min.js"></script>
<script src="js/main.js"></script>

 <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAJoPfOWTR_yPSub9u9VPKGGVauCN0RoAg&callback=initMap"
    async defer></script><!-- 구글맵 -->
</body>
</html>
<script type="text/javascript">
	/* 메인이미지 클릭시 사업자대표이미지 슬라이더 실행할 모달창 만들함수*/
	function check(){
		alert("확인");
	};
	var map;
    function initMap() {
      map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: -34.397, lng: 150.644},
        zoom: 8
      });
    }
</script>