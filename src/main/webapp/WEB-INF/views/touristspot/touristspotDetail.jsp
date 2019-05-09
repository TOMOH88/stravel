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
  	
</style>
<script type="text/javascript">
</script>
</head>
<body>
<c:import url="../common/header.jsp" />
 <section class="section-margin">
 <div class="container">
<h1>${touristspot.touristsopt_name }</h1>
<div>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="width: 100%; height: 600px;">
  <ol class="carousel-indicators">
    <c:forEach items="${touristspotImages }" var="tsi">
    <li data-target="#carouselExampleIndicators" data-slide-to="${tsi.touristspot_sq }" <c:if test="${tsi.touristspot_sq eq 1 }"> class="active" </c:if>></li>
    </c:forEach>
  </ol>
				<div class="carousel-inner" style="height:100%;">
				<c:forEach items="${touristspotImages }" var="tsi">
					<c:if test="${tsi.touristspot_sq eq 1 }">
				
							<div class="carousel-item active" style="height:100%;">
								<img class="d-block w-100"
									src="${ pageContext.request.contextPath }/resources/files/touristspotImages/${tsi.touristspot_imagename}"
									alt="${tsi.touristspot_imagename}" style="height: 100%;">
							</div>
					
					</c:if>
					<c:if test="${tsi.touristspot_sq > 1 }">
						<div class="carousel-item" style="height:100%;">
							<img class="d-block w-100"
								src="${ pageContext.request.contextPath }/resources/files/touristspotImages/${tsi.touristspot_imagename}"
								alt="${tsi.touristspot_imagename}" style="height: 100%;">
						</div>
						
					</c:if>
				</c:forEach>
			</div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
<div>
${touristspot.touristsopt_content }
</div>
<div>

</div>


</div>
</section>
<c:import url="../common/footer.jsp" />
</body>
</html>