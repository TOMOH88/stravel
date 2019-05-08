<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function add_div(){
    var div = document.createElement('div');
    div.innerHTML = document.getElementById('pre_set').innerHTML;
    document.getElementById('field').appendChild(div);
}

function remove_item(obj){
    // obj.parentNode 를 이용하여 삭제
    document.getElementById('field').removeChild(obj.parentNode);
}
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
<div class="col-md-1" style="background:#203341;">
<button class="btn btn-info btn-sm" onclick="add_div();">일정추가</button>
<div class="row">
<div id="pre_set" style="display:none">
    <font>Day</font> <input class="btn btn-info btn-sm" type="button" value="삭제" onclick="remove_item(this)">
</div>
<div id="field"></div>
</div>
</div>
<div class="col-md-2">asd</div>
<div class="col-md-2">asd</div>
<div class="col-md-2">asd</div>
<div class="col-md-5" id="map" style="height:530px;"></div>
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