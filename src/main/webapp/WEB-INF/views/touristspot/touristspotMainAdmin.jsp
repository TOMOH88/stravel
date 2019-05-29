<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/paging.js"></script>
</head>
<style>
  	.landmarkcategory:after {display:block; content:''; clear:both}
	.landmarkcategory .landmarklist{float:left; width : 180; margin-right : 25px;}	
	
	
	
	
</style>
<script type="text/javascript">
$(function() {
	'<c:if test="${!empty p.searchCategory}">'
	var category = '${p.searchCategory}';
	$("#searchCategory").val(category).prop("selected", true);
	'</c:if>'
});


	function moveWritePage() {
	location.href="TSWriter.do";	
	}
</script>
</head>
<body>
<c:import url="../common/adminHeader.jsp" />
<div class="content">
<div class="container-fluid">
<div class="row">
      <div class="col-md-12">
      <!-- 작업 작성시작 -->
      <h1>관광지 리스트 관리자</h1>
      <div><button  class="btn btn-primary" onclick="moveWritePage(); return false;" >글쓰기</button></div>
      <h3>관광지</h3>
	<div class="landmarkcategory">
		<c:forEach items = "${touristspot }" var = "ts">
			<div class="landmarklist">
				<a href = "touristspotDetailAdmin.do?tno=${ts.touristspot_no }">
				<img src="${ pageContext.request.contextPath }/resources/files/touristspotImages/${ts.rename_thumnail}" alt = "${ts.rename_thumnail}" width = "150" height = "150"></a>
					<div>
						<span>${ts.touristspot_name }</span>
					</div>
					<div>
						<span>
						<c:if test="${ts.touristspotcategorycode eq 'A001'}">랜드마크</c:if>
						<c:if test="${ts.touristspotcategorycode eq 'A002'}">유적지</c:if>
						<c:if test="${ts.touristspotcategorycode eq 'A003'}">박물관</c:if>
						<c:if test="${ts.touristspotcategorycode eq 'A004'}">쇼핑</c:if>
						</span>
					</div>
			</div>
			
		</c:forEach>
	</div>
      <!-- 작성끝 -->
      </div>
      <div align="center">
                                <!-- Pagination 시작 ( 페이징 )-->
								<ul class="pagination">
					            <c:if test="${p.pageStartNum ne 1}">
					                <!--맨 첫페이지 이동 -->
					                <li><a onclick='pagePre(${p.pageCnt+1},${p.pageCnt});'>«</a></li>
					                <!--이전 페이지 이동 -->
					                <li><a onclick='pagePre(${p.pageStartNum},${p.pageCnt});'>‹</a></li>
					            </c:if>
					            <!--페이지번호 -->
					            <c:forEach var='i' begin="${p.pageStartNum}" end="${p.pageLastNum}" step="1">
					                <li class='pageIndex${i}'><a onclick='pageIndex(${i});'>${i}</a></li>
					            </c:forEach>
					            
					            <c:if test="${p.lastChk}">
					                <!--다음 페이지 이동 -->
					                <li><a onclick='pageNext(${p.pageStartNum},${p.total},${p.listCnt},${p.pageCnt});'>›</a></li>
					                <!--마지막 페이지 이동 -->
					                <li><a onclick='pageLast(${p.pageStartNum},${p.total},${p.listCnt},${p.pageCnt});'>»</a></li>
					            </c:if>
					        </ul>
					        <form action="moveTSAdmin.do" method="post" id='frmPaging'>
					            <!--출력할 페이지번호, 출력할 페이지 시작 번호, 출력할 리스트 갯수 -->
					            <input type='hidden' name='index' id='index' value='${p.index}'>
					            <input type='hidden' name='pageStartNum' id='pageStartNum' value='${p.pageStartNum}'>
					            <input type='hidden' name='listCnt' id='listCnt' value='${p.listCnt}'>
					            <div class="row">
					            <div class="col-xl-6" style="align:center;">
					            <select name="searchCategory" id="searchCategory" class="btn btn-primary btn-sm">
									<option name="searchCategory" id="searchCategory" value="">선택하세요</option>
									<option name="searchCategory" id="searchCategory" value="touristspot_name">제목</option>
									<option name="searchCategory" id="searchCategory" value="touristspot_content">내용</option>
									<option name="searchCategory" id="searchCategory" value="touristspot_address">위치</option>
								</select>
								
								<input type="text" name="items" class="btn btn-primary btn-sm" placeholder="Search" value="${p.items }" class="form-control" >
								<input type="button" class="btn btn-primary btn-sm" value="검색" onclick="frmPaging(); return false;">
								</div>
								</div>
					        </form>
							</div>
      
      </div>
      </div>
</div>

<c:import url="../common/afooter.jsp" />
</body>
</html>