<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<style type="text/css">
	.seafoodcategory:after {display:block; content:''; clear:both}
	.seafoodcategory .seafoodlist{float:left; width : 180; margin-right : 25px;}	
</style>
</head>
<body>

<h3>시푸드</h3>
	<div class = "seafoodcategory">
		<c:forEach items = "${seaList }" var = "s">
			<div class = "seafoodlist">
				<a href = "restaurantdetail.do?restaurant_no=${s.restaurant_no }">
				<img src="${ pageContext.request.contextPath }/resources/img/restaurant/${s.rename_thumnail}" alt = "${s.restaurant_name }" width = "150" height = "150">
					<div class = "seafoodname">
						<span class = "restaurntname">${s.restaurant_name }</span>
					</div>
				</a>
			</div>
		</c:forEach>
	</div>

</body>
</html>