<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<c:import url="../common/header.jsp"/>
<div class="content">
<div class="container-fluid">
<div class="row">
<!-- table 영역 시작 -->
<div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">일정 자랑</h4>
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
					       	<form action = "selectlist.do" method = "post">
								<div class = "selectList">
									제목  <input type = "text" name = "board_title" class="btn btn-primary btn-sm" class="form-control">
									<!-- 글쓴이 : <input type = "text" name = "user_name"> -->
									<input type = "submit" class="btn btn-primary btn-sm" value="검색">
								</div>
							</form>
                            <button class="btn btn-primary" onclick="location.href='writetrip.do'">글등록</button>
                            
                            </div>
                                <table class="table table-hover table-striped">
                                
                                    <thead>
                                        <th>제목</th>
										<th>글쓴이</th>
										<th>날짜</th>
										<th>조회수</th>
										<th>좋아요</th>
                                    </thead>
                                    <c:forEach items = "${ list }" var = "b">
										<tr>
											<td class = "title">
											<a href = "tripboarddetail.do?board_no=${b.board_no }">${b.board_title }</a></td>
											<td class = "name">${b.board_writer }</td>
											<td class = "date">${b.board_write_date }</td>
											<td class = "read">${b.board_read_count }</td>
											<td class = "hit">${b.board_good_count }</td>
										</tr>
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
					            <select  id='listCount' name='listCount' onchange='listCnt();'>
						            <option value='5' >5</option>
						            <option value='10'>10</option>
						            <option value='15'>15</option>
						            <option value='20'>20</option>
					        	</select>
					        </form>
							</div>

</div>
</div>
</div>
</div>
</div>

<c:import url="../common/footer.jsp"/>

<%-- <style type="text/css">
	.sub_news, .sub_news th, .sub_news td{border:0}
	.sub_news a{color:#383838; text-decoration:none}
	.sub_news{width:100%; border-bottom:1px solid #000; color:#666; font-size:12px; table-layout:fixed}
	.sub_news caption{display:none}
	.sub_news th{padding:5px 0 6px;border-top:solid 1px #999; border-bottom:solid 1px #b2b2b2; background-color:#f1f1f4; color:#333; font-weight:bold; line-height:20px; vertical-align:top}
	.sub_news td{padding:8px 0 9px; border-bottom:solid 1px #d2d2d2; text-align:center; line-heignt:18px}
	.sub_news .date, .sub_news .hit, .sub_news .read{padding:0; font-family:Tahoma; font-size:11px; line-height:normal}
	.sub_news .title{text=align:left; padding-left:15px; font-size:13px;}
	.sub_news .title .pic, .sub_news .title .new{margin:0 0 2px; vertical-align :middle}
	.sub_news .title a .comment{padding:0;background:none; color : #f00; font-size:12px; font-weight:bold}
	.sub_news tr.reply .title a{padding-left:16px; background:url(첨부파일/ic_reply.png) 0 1px no-repeat}
	
</style>
</head>
<body>
<h1>일정자랑</h1>
<table class = "sub_news" border = "1" cellspacing = "0" summary = "게시판의 글제목 리스트">
<form action = "selectlist.do" method = "post">
	<div class = "selectList">
		제목 : <input type = "text" name = "board_title">
		<!-- 글쓴이 : <input type = "text" name = "user_name"> -->
		<input type = "submit"`>
	</div>
</form>
<caption>게시판 리스트</caption>

	
	<colgroup>
		<col>
		<col width = "110">
		<col width = "100">
		<col width = "80">
		<col width = "80">
	</colgroup>
	<thead>
	<tr>
		<th scope = "col">제목</th>
		<th scope = "col">글쓴이</th>
		<th scope = "col">날짜</th>
		<th scope = "col">조회수</th>
		<th scope = "col">좋아요</th>
	</tr>
	</thead>
	<tbody>
		<c:forEach items = "${ list }" var = "b">
			<tr>
				<td class = "title">
				<a href = "tripboarddetail.do?board_no=${b.board_no }">${b.board_title }</a></td>
				<td class = "name">${b.board_writer }</td>
				<td class = "date">${b.board_write_date }</td>
				<td class = "read">${b.board_read_count }</td>
				<td class = "hit">${b.board_good_count }</td>
			</tr>
		</c:forEach>
	</tbody>
	
</table>
<div class = "button">
	<a href = "writetrip.do">일정 자랑 쓰기</a>
</div> --%>
</body>
</html>