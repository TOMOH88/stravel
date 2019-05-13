<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<style type="text/css">
	.koreancategory:after {display:block; content:''; clear:both}
	.koreancategory .koreanlist{float:left; width : 180; margin-right : 25px;}
</style>
</head>
<body>

<h3>한식</h3>
	<div class = "koreancategory">
		<c:forEach items = "${koreanfoodList }" var = "k">
			<div class = "koreanlist">
				<a href = "restaurantdetail.do?restaurant_no=${k.restaurant_no }">
				<img src="${pageContext.request.contextPath }/resources/img/restaurant/${k.rename_thumnail}" width = "150" height = "150">
					<div class = "koreanname">
						<span class = "koreanname">${k.restaurant_name }</span>
					</div>
				</a>
			</div>
		</c:forEach>
	</div>

</body>
</html>