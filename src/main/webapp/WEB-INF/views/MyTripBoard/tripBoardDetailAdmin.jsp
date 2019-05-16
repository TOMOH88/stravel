 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<style type="text/css">
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
	.trip_board .like .hart {border : none; background-color : white;}
</style>
<script type="text/javascript">
	function deleteSchedule(board_no){
		location.href = "deleteschedule.do?board_no=" + board_no;
	}
	function deleteReview(answer_no, board_no){
		console.log(answer_no + board_no);
		location.href = "deletereview.do?answer_no=" + answer_no+"&board_no=" + board_no;
	}
</script>
</head>
<body>
<fieldset>
	<legend>${ myboard.board_writer }세끼의 글 </legend>
	<div class = "trip_board">
		<ul>
			<li>
			 	<label for = "title">제목</label>
			 	${myboard.board_title }
			</li>
			<li>
				<label for = "date">날짜</label>
			 	
			</li>
			<li>
				<label for = "date">일정</label>
			 	박 일
			</li>
			<div class = "myinfo">
				<a href = "#">나의 정보 불러오기</a>
			</div>
			<li>
				<label for = "schedule">스케줄</label>
				
			</li>
			<li>
				<label for = "latter">후기</label><br><br>
				${myboard.board_content }
			</li>
			<div>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="width: 100%; height: 600px;">
  <ol class="carousel-indicators">
    <c:forEach items="${imageList }" var="image">
    <li data-target="#carouselExampleIndicators" data-slide-to="${image.board_sq }" <c:if test="${image.board_sq eq 1 }"> class="active" </c:if>></li>
    </c:forEach>
  		</ol>
				<div class="carousel-inner" style="height:100%;">
				<c:forEach items="${image }" var="image">
					<c:if test="${image.baord_sq eq 1 }">
				
							<div class="carousel-item active" style="height:100%;">
								<img class="d-block w-100"
									src="${ pageContext.request.contextPath }/resources/img/myTripBoard/${image.baord_imagename}"
									alt="${image.board_imagename}" style="height: 100%;">
							</div>
					
					</c:if>
					<c:if test="${image.board_sq > 1 }">
						<div class="carousel-item" style="height:100%;">
							<img class="d-block w-100"
								src="${ pageContext.request.contextPath }/resources/img/myTripBoard/${image.board_imagename}"
								alt="${image.board_imagename}" style="height: 100%;">
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
		</ul>
	</div>
</fieldset>

<fieldset>
	<legend>리뷰달기</legend>
	<form action = "insertreview.do" method = "post">
		<input type = "hidden" name = "board_no" value = "${myboard.board_no }">
		<input type = "hidden" name = "answer_writer" value = "고상훈">
		<div class = "reviewcategory">
			<div>
				<textarea name = "answer_content" rows = "3" cols = "50"></textarea>
			</div>
			<div>
				<input type = "submit">
			</div>
		</div>
	</form>
</fieldset>
<fieldset>
	<legend>리뷰 작성</legend>
		<table class = "sub_news" border = "1" cellspacing = "0" summary = "게시판의 글제목 리스트">
		<caption>게시판 리스트</caption>
			<colgroup>
				<col width = "25">
				<col width = "110">
				<col width = "100">
				<col width = "25">
			</colgroup>
			<thead>
			<tr>
				<th scope = "col">번호</th>
				<th scope = "col">리뷰</th>
				<th scope = "col">아이디</th>
				<th scope = "col">botton</th>
			</tr>
			</thead>
			<tbody>
				<c:forEach items = "${review }" var = "review">
				<tr>
					<td class = "number">${review.answer_no }</td>
					<td class = "content">${review.answer_content }</td>
					<td class = "writer">${review.answer_writer }</td>
					<td class = "button"><button onclick = "deleteReview(${review.answer_no}, ${review.board_no });">삭제</button></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
</fieldset>
<div class = "deleteSchedule">
	<button onclick = "deleteSchedule(${myboard.board_no});">일정 자랑 삭제</button>
</div>
</body>
</html>