<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/flat-icon/font/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">

<style type="text/css">
	h7 {
		display:inline;
	}
	
 table, tr, th, td {
        border: 1px solid #bcbcbc;
    }
    
</style>
<title>stravel</title>
</head>
<body>
<c:import url="../common/header.jsp" />

<br><br><br>
<div align="center">
<h7 style="color:blue;">1. 이용 규칙 및 상세 내용</h7>
<h7>  >  </h7>
<h7 style="color:#bcbcbc;">  2. 사용자 정보 입력</h7>
<h7>  >  </h7>
<h7 style="color:#bcbcbc;">  3. 확인 및 결제</h7>
</div>
<br>
<hr>
<br><br>
<div style="width:1650px; height:1000px; float:left;">
	<div style="width:16%; height:100%; float:left;"> <!-- 공백 -->
	</div>

	<div style="width:43%; height:100%; float:left;"> <!-- 메인 -->
	<br><br>
	<h2>숙소 이용 규칙 확인하기</h2>
	<br><br><hr><br><br>
	<div>Seogwi-dong, Seogwipo-si 1박</div>
	<br><br>
	<div style="width:50%; height:10%; float:left;"> <!-- 공백 -->
	<div style="height:50%; float:top;">
	5월 체크인 : 일요일
	</div>
	<div style="height:50%; float:top;">
	5일 16:00 - 00:00
	</div>
	
	</div>
	<div style="width:50%; height:10%; float:left;"> <!-- 공백 -->
	<div style="height:50%; float:top;">
	5월 체크아웃 : 월요일
	</div>
	<div style="height:50%; float:top;">
	6일 11:00
	</div>
	</div>
	
	<div style="width:100%; height:50%; float:left;">
	체크인 정보 : 안내 직원으로 셀프 체크인
	<hr><br>
	<div><h4>주의 및 유의할 사항</h4></div>
	<br><hr><br>
	<div style="width:100%; height:60%; float:left;">
	<br><br>
	<img src="${pageContext.request.contextPath }/resources/files/번호1.jpg">반려동물 동반 불가</img><br><hr>
	<img src="${pageContext.request.contextPath }/resources/files/번호2.jpg">파티나 이벤트 금지</img><br><hr>
	<img src="${pageContext.request.contextPath }/resources/files/금연.jpg">흡연 금지</img><br><hr>

	</div>
	
	<a href="pay2.do"><button style="background-color:#bcbcbc; color:blue; border:0; width:140px; height:30px; border-radius:5px;">동의 및 계속하기</button></a>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	</div>
<!-- 사이드박스 div -->

	<div style="width:25%; height:100%; float:left;"> <!-- 사이드 -->
<div style="width:5%; height:100%; float:left;"><!-- 공백 -->
</div>

<div style="width:90%; height:100%; float:left;"><!-- 사이드라인 -->
<div style="width:370px; height:500px; float:left; border:1; border-radius:30px; background-color:#E0FFFF;"><!-- 사이드박스 -->
<div style="width:100%; height:5%; float:top;"><!-- 공백 -->
<img src="${pageContext.request.contextPath }/resources/files/paymentImges/1.jpg" style="width:100px; height:70px;" align="right">
</div>
<div style="width:100%; height:90%; float:top;"><!-- 사이드값 -->
<div style="padding:10px; text-align:center;"><h6>서귀포 최고의 오션뷰 호텔연</h6></div>
<br>
<hr>
<br>
<div style="width:50%; height:100; float:left;">
<div style="padding:10px;">인원 : 게스트 1명</div>
<div style="padding:10px;">2019년 5월 5일</div>
<div style="padding:10px;">₩59,000 X 1박</div>
<div style="padding:10px;">서비스 수수료 </div>
<hr><br>
<div style="padding:10px;"><h5>총 합계 (KRW)</h5></div>
</div>
<div style="width:50%; height:100; float:left;">
<div style="padding:10px; text-align:right;">-</div>
<div style="padding:10px; text-align:right;"> ~ 2019년 5월6일</div>
 <div style="padding:10px; text-align:right;">	₩59,000</div>

 <div style="padding:10px; text-align:right;">	₩7,611</div>
 <hr><br>
 <div style="padding:10px; text-align:right;"><h5>₩66,611</h5></div>

</div>



<div style="width:100%; height:5%; float:top;"><!-- 공백 -->
</div>









</div>

</div><!-- 사이드박스 -->


</div><!-- 사이드라인 -->

	</div><!-- 사이드 -->
</div> <!-- 전체 -->

















<script src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/jquery.ajaxchimp.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/mail-script.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/skrollr.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
<c:import url="../common/footer.jsp" />
</body>
</html>