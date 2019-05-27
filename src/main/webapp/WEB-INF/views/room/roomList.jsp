<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/swiper.min.css">
<script src="${pageContext.request.contextPath }/resources/js/swiper.min.js"></script>

<style type="text/css">
@media (max-width:992px){
	#mdiv{
		width:900px;
		margin:150px auto;
	}

	
	#rlist{
		FLOAT:LEFT;
		width:33.3%;
	}
}
@media (max-width:730px){
	#mdiv{
		width:650px;
		margin:150px auto;
	}
	#rlist{
		FLOAT:LEFT;
		width:50%;
	}
}
@media (min-width:992px){
	#mdiv{
		width:1110px; 
		margin:0px auto;
	}
	#rlistimg{
	 	width:300px;
	 	height:300px;
}
	#rlisttext{
		width:300px;
		height:100px;
	}
	#rlist{
		FLOAT:LEFT;
		width:33.3%;
	}
}

	
	#rlist > div {
	 margin:0 auto;
	}
	 .swiper-container {
      width: 100%;
      height: 100%;
    }
    .swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;
      /* Center slide text vertically */
      display: -webkit-box;
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-box-align: center; 
      -ms-flex-align: center;
      -webkit-align-items: center;
      align-items: center;
    }
    .swiper-wrapper img{
    width:298px;
    height:298px;
    }
</style>
</head>
<body>
 <section class="section-margin">
	<c:import url="../common/header.jsp" />
</section> 
<div> <!-- maindiv -->	
	<div id="mdiv"  style="border:1px solid black; ">
		<form action="">
		<div id="sdiv" style="width:100%; height:50px;padding:5px; border:1px solid black;"><!-- 검색 필터링 공간 -->
		<form action="roomList.do">
			<input type="text" name="search">
			<input type="hidden" name="page" value="1">
			<input type="hidden" name="range" value="1">
		</form>
		</div>
		</form>
		<div style="display:inline-block; width:1108px;">
		<c:forEach items="${roomList }" var="r" >
			<div id="rlist" style="margin-top: 20px;cursor:pointer;" >
					<div style="border: 1px solid black;" id="rlistimg" >
						<div class="swiper-container">
							<div class="swiper-wrapper">
								
								<c:forEach items="${ownerImgList}" var="img" >
								<c:if test="${r.owner_no eq img.owner_no }">
										<div class="swiper-slide" onclick="moveDetail(${r.owner_no})"><img src="${pageContext.request.contextPath }/resources/files/ownerImg/${img.owner_img}"></div>
								</c:if>
								</c:forEach> 
								
							</div>
							<!-- Add Arrows -->
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev"></div>
						</div>
					</div>
					<div style="border: 1px solid black; padding: 10px; " id="rlisttext" onclick="moveDetail(${r.owner_no})">
						<div style="font-size: x-small;">${r.owner_category }</div>
						<div style="font-size: small; font-weight: bold;">${r.owner_companyName }</div>
						<div style="font-size: x-small;">${r.owner_address }</div>
						<div style="font-size: x-small;">${r.off_season_price }</div>

					</div>
				</div>
			</c:forEach>
			</div>
			<div style="width: 1000px; margin: 50px;">
				<!-- 페이징처리공간 -->
				<div id="paginationBox">
					<ul class="pagination">
						<c:if test="${pagination.prev}">
							<li class="page-item"><a class="page-link" href="#"
								onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a></li>
						</c:if>
						<c:forEach begin="${pagination.startPage}"
							end="${pagination.endPage}" var="idx">
							<li class="page-item  "><a
								class="page-link" href="#"
								onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')">
									${idx} </a></li>
						</c:forEach>
						<c:if test="${pagination.next}">
							<li class="page-item"><a class="page-link" href="#"
								onClick="fn_next(' ${pagination.range}',  '${pagination.range}', '${pagination.rangeSize}')">Next</a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
</div>




</body>


<script type="text/javascript">
var swiper = new Swiper('.swiper-container', {
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  });
  
  function moveDetail(el){
	  location.href= "roomDetail.do?owner_no=" +el; 
  }
  function fn_prev(page, range, rangeSize) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
		var url = "roomList.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}
//페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, searchType, keyword) {
		var url = "roomList.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;	
	}
	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		var url = "roomList.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;		
		location.href = url;
	}







</script>
</html>