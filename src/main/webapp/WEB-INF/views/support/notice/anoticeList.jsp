<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
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
</head>
<body>
<c:import url="../../common/adminHeader.jsp"/>
<div class="content">
<div class="container-fluid">
<div class="row">
<!-- table 영역 시작 -->
<div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">공지사항</h4>
                                <p class="category"></p>
                            </div>
                            <div class="content table-responsive table-full-width">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <select class='btn btn-primary' id='listCount' name='listCount' onchange='listCnt();'>
					            <option value='5' >5</option>
					            <option value='10'>10</option>
					            <option value='15'>15</option>
					            <option value='20'>20</option>
					        </select>
					       	&nbsp;&nbsp;&nbsp;&nbsp;
                            <button class="btn btn-primary" onclick="location.href='noticewrite.do'">글등록</button>
                            </div>
                                <table class="table table-hover table-striped">
                                
                                    <thead>
                                        <th>No</th>
                                    	<th width="70%">TITLE</th>
                                    	<th>WRITER</th>
                                    	<th>DATE</th>
                                    </thead>
                                    <c:forEach items="${ noticeList }" var="notice">
                                    <tbody>	
                                    	<tr>
                                        	<td>${notice.notice_no }</td>
                                        	<td><a href="">${notice.notice_title }</a></td>
                                        	<td>${notice.notice_writer }</td>
                                        	<td>${notice.notice_date }</td>
                                        </tr>                                   
                                    </tbody>
                                    </c:forEach>
                                </table>
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
					        <form action="adminnotice.do" method="post" id='frmPaging'>
					            <!--출력할 페이지번호, 출력할 페이지 시작 번호, 출력할 리스트 갯수 -->
					            <input type='hidden' name='index' id='index' value='${p.index}'>
					            <input type='hidden' name='pageStartNum' id='pageStartNum' value='${p.pageStartNum}'>
					            <input type='hidden' name='listCnt' id='listCnt' value='${p.listCnt}'>
					            <div class="row">
					            <div class="col-xl-6" style="align:center;">
					            <select name="searchCategory" id="searchCategory" class="btn btn-primary btn-sm">
									<option name="searchCategory" id="searchCategory" value="">선택하세요</option>
									<option name="searchCategory" id="searchCategory" value="notice_writer">아이디</option>
									<option name="searchCategory" id="searchCategory" value="notice_title">제목</option>
									<option name="searchCategory" id="searchCategory" value="notice_content">내용</option>
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
</div>
</div>

<c:import url="../../common/afooter.jsp"/>
</body>
</html>