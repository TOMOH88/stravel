<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<link href="${pageContext.request.contextPath }/resources/assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/paging.js"></script>
<script type="text/javascript">
$(function() {
	'<c:if test="${!empty p.searchCategory}">'
	var category = '${p.searchCategory}';
	$("#searchCategory").val(category).prop("selected", true);
	'</c:if>'
});

</script>
<style>
 div{
	border:1px solid black;
} 

#cardimg{
	background-image:url(https://mdbootstrap.com/img/Photos/Horizontal/Work/4-col/img%20%2814%29.jpg);
}

.accordion.md-accordion.accordion-5 .card .card-header {
    background-color: white;
    -webkit-transition: .3s;
    -o-transition: .3s;
    transition: .3s;
}

.accordion.md-accordion.accordion-5 .card {
    background-color: transparent;
}

.rgba-black-strong, .rgba-black-strong:after {
    background-color: rgba(0,0,0,.7);
}

.justify-content-center {
    -ms-flex-pack: center!important;
    justify-content: center!important;
}

.md-accordion .card .card-header a {
    -webkit-transition: ease-in-out .3s;
    -o-transition: ease-in-out .3s;
    transition: ease-in-out .3s;
}

.collapse:not(.show) {
    display: none;
}

.card {
    -webkit-box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);
    box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);
    border: 0;
    font-weight: 400;
}

.accordion.md-accordion.accordion-1 .card .card-header, .accordion.md-accordion.accordion-2 .card .card-header, .accordion.md-accordion.accordion-4 .card .card-header, .accordion.md-accordion.accordion-5 .card .card-header {
    border: 0;
}
</style>
</head>
<body>
<c:import url="../../common/header.jsp"/>
<section class="section-margin">
<div class="card card-image" id="cardimg">
 
  <!-- Content -->
  <div class="rgba-black-strong py-5 px-4">
  <div class="col-md-12">
<font style="font-size:15pt; color:white;">공지사항</font>
</div>
    <div class="row d-flex justify-content-center">
      <div class="col-md-12 col-xl-12">
		<c:forEach items="${ noticeList }" var="list" begin="0" varStatus="status">
        <!--Accordion wrapper-->
        <div class="accordion md-accordion accordion-5" id="accordionEx5" role="tablist"
          aria-multiselectable="true">
		
          <!-- Accordion card -->
          <div class="card mb-4">

            <!-- Card header -->
            <div class="card-header p-0 z-depth-1" role="tab" id="heading${status.count }">
              <a data-toggle="collapse" data-parent="#accordionEx5" href="#collapse${status.count }" aria-expanded="true"
                aria-controls="collapse${status.count }">
                <i class="fas fa-cogs fa-2x p-3 mr-4 float-left black-text" aria-hidden="true"></i>
                <h4 class="text-uppercase white-text mb-0 py-3 mt-1">
                  ${list.notice_title }
                </h4>
              </a>
            </div>

            <!-- Card body -->
            <div id="collapse${status.count }" class="collapse" role="tabpanel" aria-labelledby="heading${status.count }"
              data-parent="#accordionEx5">
              <div class="card-body rgba-black-light white-text z-depth-1">
                <p class="p-md-4 mb-0">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus
                  terry richardson ad squid. 3 wolf moon officia aute,
                  non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch
                  3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda
                  shoreditch et.</p>
              </div>
            </div>
          </div>
                </c:forEach>
          <!-- Accordion card -->
      </div>
				<div align="center">
                                <!-- Pagination 시작 ( 페이징 )-->
								<ul class="pagination justify-content-center">
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
					        <form action="notice.do" method="post" id='frmPaging'>
					            <!--출력할 페이지번호, 출력할 페이지 시작 번호, 출력할 리스트 갯수 -->
					            <input type='hidden' name='index' id='index' value='${p.index}'>
					            <input type='hidden' name='pageStartNum' id='pageStartNum' value='${p.pageStartNum}'>
					            <input type='hidden' name='listCnt' id='listCnt' value='${p.listCnt}'>
					            
					            <select name="searchCategory" id="searchCategory" class="btn btn-primary btn-sm">
					            
									<option name="searchCategory" id="searchCategory" value="">선택하세요</option>
									<option name="searchCategory" id="searchCategory" value="notice_writer">아이디</option>
									<option name="searchCategory" id="searchCategory" value="notice_title">제목</option>
									<option name="searchCategory" id="searchCategory" value="notice_content">내용</option>
								</select>
								<input type="text" name="items" class="btn btn-primary btn-sm" placeholder="Search" value="${p.items }" class="form-control" >
								<input type="button" class="btn btn-primary btn-sm" value="검색" onclick="frmPaging(); return false;">
					        </form>
    				</div>
    </div>	
  </div>
  <!-- Content -->
  
</div>
<!-- Card -->

</section>
<c:import url="../../common/footer.jsp"/>
</body>
</html>