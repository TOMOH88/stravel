<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/paging.js"></script>
<script type="text/javascript">
/* $(function() {
	'<c:if test="${!empty p.searchCategory}">'
	var category = '${p.searchCategory}';
	$("#searchCategory").val(category).prop("selected", true);
	'</c:if>'
});
 */
</script>
<title>stravel</title>
</head>
<body>
<c:import url="../../common/header.jsp" />
<section class="section-margin">
<div class="container">
<!-- table 시작 -->
<div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">1:1문의</h4>
                                <button onclick="location.href='qnaWrite.do'">문의 하기</button>
                                <p class="category"></p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <th>No</th>
                                    	<th>TITLE</th>
                                    	<th>WRITER</th>
                                    	<th>DATE</th>
                                    	<th>ANWERS</th>
                                    </thead>
                                    <c:forEach items="${qnaList }" var="qna">
                                    <tbody>
                                        <tr>
                                        	<td>${qna.qna_no }</td>
                                        	<td><a href="qnalistView.do?qna_no=${qna.qna_no }">${qna.qna_title }</a></td>
                                        	<td>${qna.qna_writer }</td>
                                        	<td>${qna.qna_date }</td>
                                        	<td>${qna.qna_status }</td>
                                        </tr>
                                    </tbody>
                                    </c:forEach>
                                </table>
                            </div>
<!-- Pagination 시작 ( 페이징 )-->
							<div style="text-align:center;">
                                <!-- Pagination 시작 ( 페이징 )-->
								<ul class="pagination justify-content-center">
					            <c:if test="${p.pageStartNum ne 1}">
					                <!--맨 첫페이지 이동 -->
					                <li class="page-item"><a class="page-link" onclick='pagePre(${p.pageCnt+1},${p.pageCnt});'>«</a></li>
					                <!--이전 페이지 이동 -->
					                <li class="page-item"><a class="page-link" onclick='pagePre(${p.pageStartNum},${p.pageCnt});'>‹</a></li>
					            </c:if>
					            <!--페이지번호 -->
					            <c:forEach var='i' begin="${p.pageStartNum}" end="${p.pageLastNum}" step="1">
					                <li class="page-item"><a class="page-link"  onclick='pageIndex(${i});'>${i}</a></li>
					            </c:forEach>
					            
					            <c:if test="${p.lastChk}">
					                <!--다음 페이지 이동 -->
					                <li class="page-item"><a class="page-link" onclick='pageNext(${p.pageStartNum},${p.total},${p.listCnt},${p.pageCnt});'>›</a></li>
					                <!--마지막 페이지 이동 -->
					                <li class="page-item"><a class="page-link" onclick='pageLast(${p.pageStartNum},${p.total},${p.listCnt},${p.pageCnt});'>»</a></li>
					            </c:if>
					        </ul>

					        <form action="qnalist.do" method="post" id='frmPaging'>
					            <!--출력할 페이지번호, 출력할 페이지 시작 번호, 출력할 리스트 갯수 -->
					            <input type='hidden' name='index' id='index' value='${p.index}'>
					            <input type='hidden' name='pageStartNum' id='pageStartNum' value='${p.pageStartNum}'>
					            <input type='hidden' name='listCnt' id='listCnt' value='${p.listCnt}'>
<!-- 					            <select  id='listCount' name='listCount' onchange='listCnt();'>
						            <option value='5' >5</option>
						            <option value='10'>10</option>
						            <option value='15'>15</option>
						            <option value='20'>20</option>
					        	</select> -->
<!-- 					            <select name="searchCategory" id="searchCategory" class="btn btn-primary btn-sm" >
									<option name="searchCategory" id="searchCategory" value="">선택하세요</option>
									<option name="searchCategory" id="searchCategory" value="notice_writer">아이디</option>
									<option name="searchCategory" id="searchCategory" value="notice_title">제목</option>
									<option name="searchCategory" id="searchCategory" value="notice_content">내용</option>
								</select> -->
								
<%-- 								<input type="hidden" id="searchCategory" name="searchCategory" value="notice_title"> 
								<input type="text" name="items" class="btn btn-primary" placeholder="Search" value="${p.items }" class="form-control" >
								<input type="button" class="btn btn-primary" value="검색" onclick="frmPaging(); return false;"> --%>
					        </form>
					        </div>

							<!-- Pagination 끝 -->
                        </div>
                    </div>
                    <!-- table -->
</div> 
</section>
<c:import url="../../common/footer.jsp" />
</body>
</html>