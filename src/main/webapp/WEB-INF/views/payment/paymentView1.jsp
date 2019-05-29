<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<div><c:import url="../common/header.jsp" /></div>
<div style="width:1200px; height: 1200px; margin:0px auto; background:yellow;"><!-- 전체 -->
<br>
	<div align="center"><!-- 헤더 -->
	<h7 style="color:blue;"> 이용 규칙 및 상세 내용</h7>
	<h7>  >  </h7>
	<h7 style="color:#bcbcbc;"> 확인 및 결제</h7>
	</div>
<hr>
	<div style="width:760px; display:table-cell; background:blue;"><!-- 메인 -->
		<div style="width:740px; margin:0px auto; background:white;">
			<div style="height:300px; padding:30px;"><h2>숙소 이용 규칙 확인하기</h2></div>
			<div style="height:200px; padding:30px;">주의사항</div>
			<div style="height:200px; padding:30px;">주의</div>
			<div style="height:200px; padding:30px;">주의</div>
			<div style="height:200px; padding:30px;"><!-- 푸터 -->
			<a href="pay2.do"><button style="background-color:#bcbcbc; color:blue; border:0; width:140px; height:30px; border-radius:5px;">동의 및 계속하기</button></a>
		</div>
		</div>
	</div><!-- 메인 -->
	<div style="width:460px; display:table-cell; background:green;"><!-- 사이드 -->
		<div style="width:440px; margin:0px auto; background:white; position:sticky; top:100px;">
			<div style="height:100px;">제목</div><!-- 제목/사진 -->
			<div style="height:100px;">인원</div><!-- 인원 -->
			<div style="height:100px;">날짜</div><!-- 날짜 -->
			<div style="height:100px;">가격</div><!-- 가격 -->
			<div style="height:100px;">총금액</div><!-- 총가격 -->
		</div>	
	</div><!-- 사이드 -->
	

</div><!-- 전체 -->



<script src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/jquery.ajaxchimp.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/mail-script.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/skrollr.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
<div><c:import url="../common/footer.jsp" /></div>
</body>
</html>