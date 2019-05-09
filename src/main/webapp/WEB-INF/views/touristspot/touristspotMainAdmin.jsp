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
<c:import url="../common/header.jsp" />
<section class="section-margin">
<div class="rgba-black-strong py-5 px-4">
    <div class="row d-flex justify-content-center">
    <div class="col-md-2">
   <div class="blog_right_sidebar">
   <aside class="single_sidebar_widget post_category_widget">
                        <h4 class="widget_title"><a href="moveTSAdmin.do" class="d-flex">愿愿묒</a></h4>
                        <ul class="list cat-list">
                            <li>
                                <a href="#" class="d-flex">
                                    <p>쒕뱶留덊겕</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="d-flex">
                                    <p>좎쟻吏</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="d-flex">
                                    <p>諛뺣Ъ愿</p>
                                </a>
                            </li>
                              <li>
                                <a href="#" class="d-flex">
                                    <p>쇳븨</p>
                                </a>
                            </li>
                        </ul>
                      </aside>
   </div>
</div>
      <div class="col-md-10">
      <!-- 묒뾽 묒꽦쒖옉 -->
      <h1>愿愿묒 由ъ뒪愿由ъ옄</h1>
<center><button onclick="moveWritePage(); return false;">湲곌린</button></center>
      <h3>쒕뱶留덊겕</h3>
	<div class="landmarkcategory">
		<c:forEach items = "${touristspot }" var = "ts">
			<div class="landmarklist">
				<a href = "touristspotDetail.do?tno=${ts.touristsopt_no }">
				<img src="${ pageContext.request.contextPath }/resources/files/touristspotImages/${ts.rename_thumnail}" alt = "${ts.rename_thumnail}" width = "150" height = "150"></a>
					<div>
						<span>${ts.touristsopt_name }</span>
					</div>
			</div>
			
		</c:forEach>
	</div>https://github.com/TOMOH88/stravel/invitations
      <!-- 묒꽦-->
      </div>
      </div>
      </div>
</section>
<c:import url="../common/footer.jsp" />
</body>
</html>