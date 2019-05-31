<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="initial-scale=1.0">
<title>stravel</title>
<script type="text/javascript">
	function moveWritePage() {
	location.href="insertres.do";	
	}
</script>
<style>
  table {
    border: 1px solid #444444;
  }
  th, td {
    border: 1px solid #444444;
  } 	
  
    .landmarkcategory:after {display:block; content:''; clear:both}
	.landmarkcategory .seafoodlist{float:left; width : 180; margin-right : 25px;}	
	
	.koreancategory:after {display:block; content:''; clear:both}
	.koreancategory .koreanlist{float:left; width : 180; margin-right : 25px;}	
	
	.barbecuecategory:after {display:block; content:''; clear:both}
	.barbecuecategory .barbecuelist{float:left; width : 180; margin-right : 25px;}	
	
	.cafecategory:after {display:block; content:''; clear:both}
	.cafecategory .cafelist{float:left; width : 180; margin-right : 25px;}	
</style>
</head>
<body>
<c:import url="../common/adminHeader.jsp" />
<section class="section-margin">
<div class="rgba-black-strong py-5 px-4">
    <div class="row d-flex justify-content-center">
    <div class="col-md-2">
   <div class="blog_right_sidebar">
   
   <aside class="single_sidebar_widget post_category_widget">
                        <h4 class="widget_title"><a href="restaurantlistadmin.do" class="d-flex">식당</a></h4>
                        <ul class="list cat-list">
                            <li>
                                <a href="restaurantcategoryadmin.do?category=B003" class="d-flex">
                                    <p>Seafood</p>
                                </a>
                            </li>
                            <li>
                               <a href="restaurantcategoryadmin.do?category=B001" class="d-flex">
                                    <p>Koreanfood</p>
                                </a>
                            </li>
                            <li>
                               <a href="restaurantcategoryadmin.do?category=B002" class="d-flex">
                                    <p>Barbecue</p>
                                </a>
                            </li>
                              <li>
                                <a href="restaurantcategoryadmin.do?category=B004" class="d-flex">
                                    <p>Cafe/Dessert</p>
                                </a>
                            </li>
                        </ul>
                      </aside>
   </div>
</div>
      <div class="col-md-10">
      <!-- 작업 작성시작 -->
      <h1>식당 리스트 관리자</h1>
      <center><button onclick="moveWritePage(); return false;">글쓰기</button></center>
      <h3>Seafood</h3>
      
	<div class="landmarkcategory">
		<c:forEach items = "${seaList }" var = "s">
			<div class = "seafoodlist">
				<a href = "restaurantdetailadmin.do?restaurant_no=${s.restaurant_no }">
				<img src="${ pageContext.request.contextPath }/resources/img/restaurant/${s.rename_thumnail}" alt = "${s.restaurant_name }" width = "150" height = "150">
					<div class = "seafoodname">
						<span class = "restaurntname">${s.restaurant_name }</span>
					</div>
				</a>
			</div>
		</c:forEach>
	</div>
	
	<h3>Koreanfood</h3>
	<div class = "koreancategory">
		<c:forEach items = "${koreanfoodList }" var = "k">
			<div class = "koreanlist">
				<a href = "restaurantdetailadmin.do?restaurant_no=${k.restaurant_no }">
				<img src="${pageContext.request.contextPath }/resources/img/restaurant/${k.rename_thumnail}" width = "150" height = "150">
					<div class = "koreanname">
						<span class = "koreanname">${k.restaurant_name }</span>
					</div>
				</a>
			</div>
		</c:forEach>
	</div>
	
	<h3>Barbecue</h3>
	<div class = "barbecuecategory">
		<c:forEach items = "${barbecueList }" var = "b">
			<div class = "barbecuelist">
				<a href = "restaurantdetailadmin.do?restaurant_no=${b.restaurant_no }">
				<img src = "${pageContext.request.contextPath }/resources/img/restaurant/${b.rename_thumnail}" width = "150" height = "150">
					<div class = "barbecuename">
						<span class = "barbecuename">${b.restaurant_name }</span>
					</div>
				</a>
			</div>
		</c:forEach>
	</div>
	
	<h3>Cafe / dessert</h3>
	<div class = "cafecategory">
		<c:forEach items = "${cafeList }" var = "c">
			<div class = "cafelist">
				<a href = "restaurantdetailadmin.do?rest	aurant_no=${c.restaurant_no }">
				<img src = "${pageContext.request.contextPath }/resources/img/restaurant/${c.rename_thumnail}" width = "150" height = "150">
					<div class = "cafename">
						<span class = "cafename">${c.restaurant_name }</span>
					</div>
				</a>
			</div>
		</c:forEach>
	</div>
	
      <!-- 작성끝 -->
      </div>
      </div>
      </div>
</section>
<c:import url="../common/afooter.jsp"/>|
</body>
</head>
<!-- <style type="text/css">
	.seafoodcategory:after {display:block; content:''; clear:both}
	.seafoodcategory .seafoodlist{float:left; width : 180; margin-right : 25px;}	
	.koreancategory:after {display:block; content:''; clear:both}
	.koreancategory .koreanlist{float:left; width : 180; margin-right : 25px;}
	.barbecuecategory:after {display:block; content:''; clear:both}
	.barbecuecategory .barbecuelist{float:left; width : 180; margin-right : 25px;}
	.cafecategory:after {display:block; content:''; clear:both}
	.cafecategory .cafelist{float:left; width : 180; margin-right : 25px;}
</style> -->
<!-- <body> -->

<%-- <h1>레스토랑 리스트</h1>

<!-- 관리자 -->
	<a href = "insertres.do">레스토랑 등록</a> 


<!-- 사용자 -->
<a href = "seafoodall.do">시푸드레스토랑</a>
<a href = "koreanfoodall.do">한식레스토랑</a>
<a href = "barbecuefoodall.do">바베큐 레스토랑</a>
<a href = "caferestaurantall.do">카페/디저트 레스토랑</a>


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
<h3>카페 /디저트</h3>
	<div class = "cafecategory">
		<c:forEach items = "${cafeList }" var = "c">
			<div class = "cafelist">
				<a href = "restaurantdetail.do?rest	aurant_no=${c.restaurant_no }">
				<img src = "${pageContext.request.contextPath }/resources/img/restaurant/${c.rename_thumnail}" width = "150" height = "150">
					<div class = "cafename">
						<span class = "cafename">${c.restaurant_name }</span>
					</div>
				</a>
			</div>
		</c:forEach>
	</div>
</body> --%>
</html>