<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
</head>
<style>
div{
	border:1px solid black;
}
  table {
    border: 1px solid #444444;
  }
  th, td {
    border: 1px solid #444444;
  }
  
  
  
  	.landmarkcategory:after {display:block; content:''; clear:both}
	.landmarkcategory .landmarklist{float:left; width : 180; margin-right : 25px;}	
	
	
	
	
</style>
<script type="text/javascript">
	function moveWritePage() {
	location.href="TSWriter.do";	
	}
</script>
</head>
<body>
<c:import url="../common/adminHeader.jsp" />
<section class="section-margin">
<div class="rgba-black-strong py-5 px-4">
    <div class="row d-flex justify-content-center">
    <div class="col-md-2">
   <div class="blog_right_sidebar">
   <aside class="single_sidebar_widget post_category_widget">
                        <h4 class="widget_title"><a href="moveTSAdmin.do" class="d-flex">관광지</a></h4>
                        <ul class="list cat-list">
                            <li>
                                <a href="#" class="d-flex">
                                    <p>랜드마크</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="d-flex">
                                    <p>유적지</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="d-flex">
                                    <p>박물관</p>
                                </a>
                            </li>
                              <li>
                                <a href="#" class="d-flex">
                                    <p>쇼핑</p>
                                </a>
                            </li>
                        </ul>
                      </aside>
   </div>
</div>
      <div class="col-md-10">
      <!-- 작업 작성시작 -->
      <h1>관광지 리스트 관리자</h1>
<center><button onclick="moveWritePage(); return false;">글쓰기</button></center>
      <h3>랜드마크</h3>
	<div class="landmarkcategory">
		<c:forEach items = "${touristspot }" var = "ts">
			<div class="landmarklist">
				<a href = "touristspotDetailAdmin.do?tno=${ts.touristspot_no }">
				<img src="${ pageContext.request.contextPath }/resources/files/touristspotImages/${ts.rename_thumnail}" alt = "${ts.rename_thumnail}" width = "150" height = "150"></a>
					<div>
						<span>${ts.touristspot_name }</span>
					</div>
			</div>
			
		</c:forEach>
	</div>
      <!-- 작성끝 -->
      </div>
      </div>
      </div>
</section>
<c:import url="../common/afooter.jsp" />
</body>
</html>