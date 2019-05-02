<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
  <!-- Link Swiper's CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/swiper.min.css">
<script src="${pageContext.request.contextPath }/resources/js/swiper.min.js"></script>
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery-ui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<script src="${pageContext.request.contextPath }/resources/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery-ui.js"></script>
</head>
<body>
 <p>Date: <input type="text" id="datepicker"></p>
 <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
</body>
</html>