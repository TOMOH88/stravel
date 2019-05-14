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
<!-- 별점 부트스트랩 링크-->
<title>header</title>
<style>
div{ 
	border:1px solid black;
}
</style>
</head>
<body>
<!--================ Header Menu Area start =================-->
<header class="header_area">
    <div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container box_1620">
          <a class="navbar-brand logo_h" href="main.do"><img src="${pageContext.request.contextPath }/resources/img/logo.png" alt=""></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
            <ul class="nav navbar-nav menu_nav justify-content-end">
            <li class="nav-item"><a class="nav-link" href="test1.do">테스트용</a></li>
            <li class="nav-item"><a class="nav-link" href="test3.do">테스트용2</a></li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">고객센터</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="notice.do">공지사항</a></li>
                  <li class="nav-item"><a class="nav-link" href="faqlist.do">FAQ</a></li>
                  <li class="nav-item"><a class="nav-link" href="qnalist.do">1:1문의</a></li>
               	</ul>
							</li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">커뮤니티</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="#">동행찾기</a></li>
                  <li class="nav-item"><a class="nav-link" href="tripboard.do">일정자랑</a></li>
                </ul>
							</li>			
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">정보</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="oh.do">숙박</a></li>
                  <li class="nav-item"><a class="nav-link" href="touristspot.do">관광지</a></li>
                  <li class="nav-item"><a class="nav-link" href="restaurantlist.do">식당</a></li>
                </ul>
                <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">마이페이지</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="mycalendar.do">나의일정</a></li>
                  <li class="nav-item"><a class="nav-link" href="adminMain.do">예약내역</a></li>
                </ul>
							</li>
              <li class="nav-item"><a class="nav-link" href="#">login</a></li>
            </ul>
          </div> 
        </div>
      </nav>
    </div>
  </header>
  <!--================Header Menu Area =================-->
<script src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.ajaxchimp.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/mail-script.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/skrollr.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery-1.11.0.min.js"></script>
</body>
</html>