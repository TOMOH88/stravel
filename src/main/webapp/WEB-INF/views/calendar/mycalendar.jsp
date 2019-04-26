<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의일정</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
<c:import url="../common/header.jsp" />
<!--================Tour section Start =================-->
<section class="section-margin pb-xl-5">
<h1>나의일정보기</h1>
<div align="center">
<div class="d-inline">
<a href="calendar.do">
<img src="${pageContext.request.contextPath }/resources/img/maldives-1993704_1920.jpg" style="width:300px; height:300px;">
</a>
</div>
<div class="d-inline">
<img src="${pageContext.request.contextPath }/resources/img/maldives-1993704_1920.jpg" style="width:300px; height:300px;">
</div>
<div class="d-inline">
<img src="${pageContext.request.contextPath }/resources/img/maldives-1993704_1920.jpg" style="width:300px; height:300px;">
</div>
<div class="d-inline">
<img src="${pageContext.request.contextPath }/resources/img/maldives-1993704_1920.jpg" style="width:300px; height:300px;">
</div>
</div>
</section>
<!--================Tour section End =================-->
<c:import url="../common/footer.jsp" />
</body>
</html>