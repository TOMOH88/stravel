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
	table, tr, th, td {
        border: 1px solid #bcbcbc;
    }
</style>
<title>stravel</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
</head>
<body>
<c:import url="./common/header.jsp" />
<br><br><br>
<h2 style="color:black;">결제 내역</h2>
<br><hr><br>
<thead>	
<tr>
	<th> 번호 </th>
	<th> 상품 번호 </th>
	<th> 상품 명 </th>
	<th> 결제 금액 </th>
	<th> 진행 상태 </th>
</tr>
</thead>
<tbody>
<tr>
	<th></th>
	<th></th>
	<th></th>
	<th></th>
	<th></th>
</tr>


</tbody>














<script src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/jquery.ajaxchimp.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/mail-script.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/skrollr.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
<c:import url="common/footer.jsp" />
</body>
</html>