<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<style>
  table {
    border: 1px solid #444444;
  }
  th, td {
    border: 1px solid #444444;
  }
  
    .landmarkcategory:after {display:block; content:''; clear:both}
	.landmarkcategory .landmarklist{float:left; width : 180; margin-right : 25px;}	
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
      <h3>${category }</h3>
	<div class="landmarkcategory">
		<c:forEach items = "${restaurant }" var = "restaurant">
			<div class="landmarklist">
				<a href = "restaurantdetailadmin.do?restaurant_no=${restaurant.restaurant_no }">
				<img src="${pageContext.request.contextPath }/resources/img/restaurant/${restaurant.rename_thumnail}" alt = "${restaurant.rename_thumnail}" width = "150" height = "150"></a>
					<div>
						<span>${restaurant.restaurant_name }</span>
					</div>
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
</html>