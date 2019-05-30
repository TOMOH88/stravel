<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<!-- Mobile Specific Meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="${pageContext.request.contextPath }/resources/assets/css/bootstrap.min.css" rel="stylesheet" />
<!-- Animation library for notifications   -->
<link href="${pageContext.request.contextPath }/resources/assets/css/animate.min.css" rel="stylesheet"/>
<!--  Light Bootstrap Table core CSS    -->
<link href="${pageContext.request.contextPath }/resources/assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>
<!--     Fonts and icons     -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
<link href="${pageContext.request.contextPath }/resources/assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
<title>stravel</title>
<style type="text/css">
/* div{
	border:1px solid black;
} */
</style>
</head>
<body>
<div>
    <div class="sidebar" data-color="purple" data-image="${pageContext.request.contextPath }/resources/assets/img/sidebar-5.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="main.do" class="simple-text">
                    STRAVEL
                </a>
            </div>
            
            <ul class="nav">
            <c:if test="${!empty loginAdmin}">
            	<li class="active">
            		<a href="adminLogout.do"><i class="pe-7s-graph"></i><p>로그아웃</p></a>
            	</li>
            	</c:if>
				<li class="active">
                    <a href="#">
                        <i class="pe-7s-graph"></i>
                        <p>회원관리</p>
                        <ul>
                        <li><a href="memberManager.do">-사용자</a></li>
                    	<li><a href="ownerManager.do">-사업자</a></li>
                    	</ul>
                    </a>
                </li>
                <li class="active">
                    <a href="#">
                        <i class="pe-7s-graph"></i>
                        <p>통계관리</p>
                        <ul>
                        <li><a href="sampStar.do">-사용자</a></li>
                    	<li><a href="#">-사업자</a></li>
                        </ul>
                    </a>
                </li>
                <li class="active">
                    <a href="moveTSAdmin.do">
                        <i class="pe-7s-graph"></i>
                        <p>관광지관리</p>
                    </a>
                </li>
                <li class="active">
                    <a href="#">
                        <i class="pe-7s-graph"></i>
                        <p>식당관리</p>
                    </a>
                </li>
                <li class="active">
                    <a href="#">
                        <i class="pe-7s-graph"></i>
                        <p>고객센터관리</p>
                        <ul>
                        <li><a href="adminqna.do">-1:1문의</a></li>
                    	<li><a href="adminnotice.do">-공지사항</a></li>
                    	<li><a href="adminfaq.do">-FAQ</a></li>
                        </ul>
                    </a>
                </li>
                <li class="active">
                    <a href="#">
                        <i class="pe-7s-graph"></i>
                        <p>커뮤니티관리</p>
                        <ul>
                        <li><a href="#">-일정공유</a></li>
                    	<li><a href="#">-동행찾기</a></li>
                        </ul>
                    </a>
                </li>
            </ul>
    	</div>
    </div>

    <div class="main-panel">
    <!--     <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">관리자</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
                            </a>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="#">
                               login
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav> -->
    <!--   Core JS Files   -->

    <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/resources/assets/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="${pageContext.request.contextPath }/resources/assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>
	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="${pageContext.request.contextPath }/resources/assets/js/demo.js"></script>
</body>
</html>