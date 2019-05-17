<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/swiper.min.css">
<style type="text/css">
@media (max-width:992px){
	#mdiv{
		width:900px;
		margin:150px auto;
	}
	#rlistimg{
	 	width:243px;
	 	height:243px;
}
	#rlisttext{
		width:243px;
		height:81px;
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
		<img src="${pageContext.request.contextPath }/resources/files/ownerImg/1-1.png">
			<input type="text" name="sname">
		</div>
		</form>
		<c:forEach items="${roomList }" var="r" >
				<a href="roomDetail.do?owner_no=${r.owner_no} "><div id="rlist" style="margin-top: 20px;" >
					<div style="border: 1px solid black;" id="rlistimg" >
						<div class="swiper-container">
							<div class="swiper-wrapper">
								
								<c:forEach items="${ownerImgList}" var="img" >
								<c:if test="${r.owner_no eq img.owner_no }">
										<div class="swiper-slide"><img src="${pageContext.request.contextPath }/resources/files/ownerImg/${img.owner_img}"></div>
								</c:if>
								</c:forEach> 
								
							</div>
							<!-- Add Arrows -->
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev"></div>
						</div>
					</div>
					<div style="border: 1px solid black; padding: 10px;" id="rlisttext">
						<div style="font-size: x-small;">${r.owner_category }</div>
						<div style="font-size: small; font-weight: bold;">${r.owner_companyName }</div>
						<div style="font-size: x-small;">${r.owner_address }</div>
						<div style="font-size: x-small;">${r.off_season_price }</div>

					</div>
				</div></a>
			</c:forEach>
	</div>
	<div><!-- 페이징처리공간 -->
	</div>
</div>


</body>

<script src="${pageContext.request.contextPath }/resources/js/swiper.min.js"></script>
<script type="text/javascript">
var swiper = new Swiper('.swiper-container', {
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  });
  
  function moveDetail(el){
	  location.href= "roomDetail.do?owner_no='"+el +"'"; 
  }
</script>
</html>