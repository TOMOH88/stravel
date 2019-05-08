<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
</head>
<body>

<h1>레스토랑 리스트</h1>

<!-- 관리자 -->
<a href = "insertres.do">레스토랑 등록</a>
<div>
	<h3>시푸드</h3>
	<c:forEach items = "${seaList }" var = "s">
		<a href = "restaurantdetail.do?restaurant_no=${s.restaurant_no }"><img src="${ pageContext.request.contextPath }/resources/img/restaurant/${s.rename_thumnail}" width = "150" height = "150"></a>
		${s.retaurant_name }
	</c:forEach>
</div>
<div>
	<h3>한식</h3>
	<c:forEach items = "${koreanfoodList }" var = "k">
		<a href = "restaurantdetail.do?restaurant_no=${k.restaurant_no }"><img src="${pageContext.request.contextPath }/resources/img/restaurant/${k.rename_thumnail}" width = "150" height = "150"></a>
		<%-- <div class = "koreanfoodtitle">
			${k.restaurant_name }
		</div> --%>
	</c:forEach>
</div>

<div>
	<h3>바베큐</h3>
	<c:forEach items = "${barbecueList }" var = "b">
		<a href = "restaurantdetail.do?restaurant_no=${b.restaurant_no }"><img src = "${pageContext.request.contextPath }/resources/img/restaurant/${b.rename_thumnail}" width = "150" height = "150"></a>
	</c:forEach>
</div>
<div>
	<h3>카페 /디저트</h3>
	<c:forEach items = "${cafeList }" var = "c">
		<a href = "restaurantdetail.do?restaurant_no=${c.restaurant_no }"><img src = "${pageContext.request.contextPath }/resources/img/restaurant/${c.rename_thumnail}" width = "150" height = "150"></a>
	</c:forEach>
</div>
</body>
</html>