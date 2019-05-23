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
<c:import url="../common/header.jsp" />
<section class="section-margin">
<div class="rgba-black-strong py-5 px-4">
    <div class="row d-flex justify-content-center">
    <div class="col-md-2">
   <div class="blog_right_sidebar">
   <aside class="single_sidebar_widget post_category_widget">
                        <h4 class="widget_title"><a href="touristspot.do" class="d-flex">관광지</a></h4>
                        <ul class="list cat-list">
                            <li>
                                <a href="touristspotCategory.do?cate=A001" class="d-flex">
                                    <p>랜드마크</p>
                                </a>
                            </li>
                            <li>
                                <a href="touristspotCategory.do?cate=A002" class="d-flex">
                                    <p>유적지</p>
                                </a>
                            </li>
                            <li>
                                <a href="touristspotCategory.do?cate=A003" class="d-flex">
                                    <p>박물관</p>
                                </a>
                            </li>
                              <li>
                                <a href="touristspotCategory.do?cate=A004" class="d-flex">
                                    <p>쇼핑</p>
                                </a>
                            </li>
                        </ul>
                      </aside>
   </div>
</div>
      <div class="col-md-10">
      <!-- 작업 작성시작 -->
      <h3>랜드마크</h3>
	<div class="landmarkcategory">
		<c:forEach items = "${landmark }" var = "lm">
			<div class="landmarklist">
				<a href = "touristspotDetail.do?tno=${lm.touristspot_no }">
				<img src="${ pageContext.request.contextPath }/resources/files/touristspotImages/${lm.rename_thumnail}" alt = "${lm.rename_thumnail}" width = "150" height = "150"></a>
					<div>
						<span>${lm.touristspot_name }</span>
					</div>
			</div>
			
		</c:forEach>
	</div>
      <!-- 작성끝 -->
	<hr>
      <!-- 작업 작성시작 -->
      <h3>유적지</h3>
	<div class="landmarkcategory">
		<c:forEach items = "${historic }" var = "hi">
			<div class="landmarklist">
				<a href = "touristspotDetail.do?tno=${hi.touristspot_no }">
				<img src="${ pageContext.request.contextPath }/resources/files/touristspotImages/${hi.rename_thumnail}" alt = "${hi.rename_thumnail}" width = "150" height = "150"></a>
					<div>
						<span>${hi.touristspot_name }</span>
					</div>
			</div>
			
		</c:forEach>
	</div>
      <!-- 작성끝 -->
	<hr>
      <!-- 작업 작성시작 -->
      <h3>박물관</h3>
	<div class="landmarkcategory">
		<c:forEach items = "${museum }" var = "mu">
			<div class="landmarklist">
				<a href = "touristspotDetail.do?tno=${mu.touristspot_no }">
				<img src="${ pageContext.request.contextPath }/resources/files/touristspotImages/${mu.rename_thumnail}" alt = "${mu.rename_thumnail}" width = "150" height = "150"></a>
					<div>
						<span>${mu.touristspot_name }</span>
					</div>
			</div>
			
		</c:forEach>
	</div>
      <!-- 작성끝 -->
	<hr>
      <!-- 작업 작성시작 -->
      <h3>쇼핑</h3>
	<div class="landmarkcategory">
		<c:forEach items = "${shopping }" var = "sh">
			<div class="landmarklist">
				<a href = "touristspotDetail.do?tno=${sh.touristspot_no }">
				<img src="${ pageContext.request.contextPath }/resources/files/touristspotImages/${sh.rename_thumnail}" alt = "${sh.rename_thumnail}" width = "150" height = "150"></a>
					<div>
						<span>${sh.touristspot_name }</span>
					</div>
			</div>
			
		</c:forEach>
	</div>
      <!-- 작성끝 -->
      </div>
      </div>
      </div>
</section>
<c:import url="../common/footer.jsp"/>
</body>
</html>