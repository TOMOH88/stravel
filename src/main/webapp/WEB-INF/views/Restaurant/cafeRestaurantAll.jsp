<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<style type="text/css">
	.cafecategory:after {display:block; content:''; clear:both}
	.cafecategory .cafelist{float:left; width : 180; margin-right : 25px;}
</style>
</head>
<body>

<h3>카페 /디저트</h3>
	<div class = "cafecategory">
		<c:forEach items = "${cafeList }" var = "c">
			<div class = "cafelist">
				<a href = "restaurantdetail.do?restaurant_no=${c.restaurant_no }">
				<img src = "${pageContext.request.contextPath }/resources/img/restaurant/${c.rename_thumnail}" width = "150" height = "150">
					<div class = "cafename">
						<span class = "cafename">${c.restaurant_name }</span>
					</div>
				</a>
			</div>
		</c:forEach>
	</div>

</body>
</html>