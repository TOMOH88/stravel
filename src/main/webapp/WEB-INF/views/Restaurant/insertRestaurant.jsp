<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.MultiFile.js" type="text/javascript" ></script>
<script type="text/javascript">
	$(function(){
		var phone1 = $("#phone1").val();
		var phone2 = $("#phone2").val();
		var phone3 = $("#phone3").val();
		
	});
</script>
</head>

<body>

<form action="insertrestaurant.do" method = "post" enctype = "multipart/form-data">
<input type = "hidden" name = "restaurant_writer" value = "고상훈">
<fieldset>
	<legend>레스토랑 등록</legend>
		<div class = "insertrestaurant">
			<ul>
				<li>
					<label for = "title">레스토랑 이름</label>
					<input type = "text" name = "restaurant_name" required>
				</li>
				<li>
					<label for = "category">Category</label>
					<select id = "restaurant_category_code" name = "restaurant_category_code">
						<c:forEach items = "${list }" var = "b">
							<option value = "${ b.restaurant_category_code }">${b.restaurant_category_name }</option>
						</c:forEach>
					</select>
				 </li>
				 <li>
				 	<label for = "starttime">식당 영업시간</label>
				 	<input type = "time" name = "restaurant_openinghours" required>
				 </li>
				 <li>
				 	<label for = "endtime">식당 마감시간</label>
				 	<input type = "time" name = "restaurant_closehours" required>
				 </li>
				 <li>
				  	<label for = "address">식당 주소</label>
				  	<input type = "text" name = "restaurant_address" required>
				 </li>
				 <li>
				 	<label for = "homepage">홈페이지</label>
				 	<input type = "text" name = "restaurant_homepage"required>
				 </li>
				 <li>
				 	<label for ="phone">전화번호</label>
				 	<input type = "text" id = "restaurant_tel" name = "restaurant_tel" required>
				 </li>
				 <li>
				 	<label for = "restaurantpicture2">식당 사진</label>
				 	<input type = "file" multiple = "multiple" name = "mainpic" class = "multi with-preview">
				 </li>
				 <li>
				 	<label for = "restaurantinfo">식당 정보</label>
				 	<textarea name = "restaurant_content" rows="5" cols="100"></textarea>
				 </li>
			</ul>
			<div>
				<input type = "submit">
			</div>
		</div>
</fieldset>
</form>

</body>
</html>