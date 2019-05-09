<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<style type="text/css">
	.seafoodcategory:after {display:block; content:''; clear:both}
	.seafoodcategory .seafoodlist{float:left; width : 180; margin-right : 25px;}	
	.koreancategory:after {display:block; content:''; clear:both}
	.koreancategory .koreanlist{float:left; width : 180; margin-right : 25px;}
	.barbecuecategory:after {display:block; content:''; clear:both}
	.barbecuecategory .barbecuelist{float:left; width : 180; margin-right : 25px;}
	.cafecategory:after {display:block; content:''; clear:both}
	.cafecategory .cafelist{float:left; width : 180; margin-right : 25px;}
</style>
</head>
<body>

<h1>ˆìŠ¤ ë‘ ë¦¬ìŠ¤/h1>

<!-- ê´€ë¦¬ì -->
<a href = "insertres.do">ˆìŠ¤ ë‘ ±ë¡</a> 
<div>
	<h3>œí‘¸/h3>
	<c:forEach items = "${seaList }" var = "s">
		<a href = "restaurantdetail.do?restaurant_no=${s.restaurant_no }"><img src="${ pageContext.request.contextPath }/resources/img/restaurant/${s.rename_thumnail}" width = "150" height = "150"></a>
		${s.retaurant_name }
	</c:forEach>
</div>
<div>
	<h3>œì‹</h3>
	<c:forEach items = "${koreanfoodList }" var = "k">
		<a href = "restaurantdetail.do?restaurant_no=${k.restaurant_no }"><img src="${pageContext.request.contextPath }/resources/img/restaurant/${k.rename_thumnail}" width = "150" height = "150"></a>
		<%-- <div class = "koreanfoodtitle">
			${k.restaurant_name }
		</div> --%>
	</c:forEach>
</div>


<!-- ¬ìš©-->
<a href = "seafoodAll.do">œí‘¸œë ˆ¤í† /a>


<h3>œí‘¸/h3>
	<div class = "seafoodcategory">
		<c:forEach items = "${seaList }" var = "s">
			<div class = "seafoodlist">
				<a href = "restaurantdetail.do?restaurant_no=${s.restaurant_no }">
				<img src="${ pageContext.request.contextPath }/resources/img/restaurant/${s.rename_thumnail}" alt = "${s.restaurant_name }" width = "150" height = "150"></a>
					<div class = "seafoodname">
						<span class = "restaurntname">${s.restaurant_name }</span>
					</div>
			</div>
			
		</c:forEach>
	</div>
<div>
<h3>œì‹</h3>
	<div class = "koreancategory">
		<c:forEach items = "${koreanfoodList }" var = "k">
			<div class = "koreanlist">
				<a href = "restaurantdetail.do?restaurant_no=${k.restaurant_no }">
				<img src="${pageContext.request.contextPath }/resources/img/restaurant/${k.rename_thumnail}" width = "150" height = "150"></a>
					<div class = "koreanname">
						<span class = "koreanname">${k.restaurant_name }</span>
					</div>
			</div>
		</c:forEach>
	</div>

<div>
<h3>ë°”ë² /h3>
	<div class = "barbecuecategory">
		<c:forEach items = "${barbecueList }" var = "b">
			<div class = "barbecuelist">
				<a href = "restaurantdetail.do?restaurant_no=${b.restaurant_no }">
				<img src = "${pageContext.request.contextPath }/resources/img/restaurant/${b.rename_thumnail}" width = "150" height = "150"></a>
					<div class = "barbecuename">
						<span class = "barbecuename">${b.restaurant_name }</span>
					</div>
			</div>
		</c:forEach>
	</div>
<h3>ì¹´í˜ /”ì/h3>
	<div class = "cafecategory">
		<c:forEach items = "${cafeList }" var = "c">
			<div class = "cafelist">
				<a href = "restaurantdetail.do?restaurant_no=${c.restaurant_no }">
				<img src = "${pageContext.request.contextPath }/resources/img/restaurant/${c.rename_thumnail}" width = "150" height = "150"></a>
					<div class = "cafename">
						<span class = "cafename">${c.restaurant_name }</span>
					</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>