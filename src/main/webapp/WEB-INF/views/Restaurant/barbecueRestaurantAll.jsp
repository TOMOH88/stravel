<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<style type="text/css">
	.barbecuecategory:after {display:block; content:''; clear:both}
	.barbecuecategory .barbecuelist{float:left; width : 180; margin-right : 25px;}
</style>
</head>
<body>
<h3>바베큐</h3>
<div class = "barbecuecategory">
		<c:forEach items = "${barbecueList }" var = "b">
			<div class = "barbecuelist">
				<a href = "restaurantdetail.do?restaurant_no=${b.restaurant_no }">
				<img src = "${pageContext.request.contextPath }/resources/img/restaurant/${b.rename_thumnail}" width = "150" height = "150">
					<div class = "barbecuename">
						<span class = "barbecuename">${b.restaurant_name }</span>
					</div>
					</a>
			</div>
		</c:forEach>
	</div>
	
</body>
</html>