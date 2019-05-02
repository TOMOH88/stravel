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
<fieldset>
	<legend>레스토랑 등록</legend>
		<div class = "insertrestaurant">
			<ul>
				<li>
					<label for = "title">Title</label>
					<input type = "text" name = "Title" required>
				</li>
				<li>
					<label for = "category">Category</label>
					<select id = "category" name = "category">
						<c:forEach items = "${list }" var = "b">
							<option value = "${ b.restaurant_category_code }">${b.restaurant_category_name }</option>
						</c:forEach>
					</select>
				 </li>
				 <li>
				 	<label for = "starttime">식당 영업시간</label>
				 	<input type = "time" name = "start" required>
				 </li>
				 <li>
				 	<label for = "endtime">식당 마감시간</label>
				 	<input type = "time" name = "finish" required>
				 </li>
				 <li>
				  	<label for = "address">식당 주소</label>
				  	<input type = "text" name = "restaurantaddress" required>
				 </li>
				 <li>
				 	<label for = "homepage">홈페이지</label>
				 	<input type = "email" name = "homepage"required>
				 </li>
				 <li>
				 	<label for ="phone">전화번호</label>
				 	<input type = "number" id = "phone1" name = "phone1" required> - <input type = "number" id = "phone2" name = "phone2" required> - <input type = "number" id = "phone3" name = "phone3" required>
				 </li>
				 <li>
				 	<label for = "restaurantpicture">식당 사진</label>
				 	<input multiple="multiple" type = "file" name = "mainpic">
				 </li>
				 <li>
				 	<label for = "restaurantpicture2">식당 사진2</label>
				 	<input type = "file" multiple = "multiple" name = "mainpic2" class = "multi with-preview" required>
				 </li>
				 <li>
				 	<label for = "restaurantinfo">식당 정보</label>
				 	<textarea name = "infomation" rows="5" cols="100" required></textarea>
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