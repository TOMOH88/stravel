<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
</script>
<title>stravel</title>
<style type="text/css">
div{
	border:1px solid black;
}

.map{
	position:fixed;
	height:100%;
}

</style>
</head>
<body>
<c:import url="../common/sheader.jsp" />
<div style="height:90px;"></div>
<div class="container-fluid">
<div class="row">
<div class="col-md-4" style="overflow:scroll; height:530px;">
<div class="col-md-12">
<button class="btn btn-info btn-sm" data-target="#layerpop" data-toggle="modal">숙박기간</button><br/>
<div class="modal fade" id="layerpop" >
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- header -->
      <div class="modal-header">
        <!-- 닫기(x) 버튼 -->
        <button type="button" class="close" data-dismiss="modal">×</button>
        <!-- header title -->
        <h4 class="modal-title"></h4>
      </div>
      <!-- body -->
      <div class="modal-body">
      <div>
      <input type="date" id="startDate">~<input type="date" id="endDate">
      </div>
      </div>
    </div>
  </div>
</div>
</div>
</div>
<div class="col-md-8" id="map" style="height:530px;"></div>
</div>
</div>
<script>
				var map;
				function initMap() {
					map = new google.maps.Map(document.getElementById('map'), {
						center : {
							lat : -34.397,
							lng : 150.644
						},
						zoom : 8 
					});
				}
			</script>
			<script
				src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDThTAj0AKRlW45lmKFY65_OkQylWQBmeg&callback=initMap"
				async defer></script>
</body>
</html>