<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.MultiFile.js" type="text/javascript" ></script>
</head>
<body>
<form action="insertnotice.do" method = "post" enctype = "multipart/form-data">
<input type = "hidden" name = "board_writer" value = "고상훈">
<fieldset>
	<legend>일정자랑 작성</legend>
	<div class = "trip_notice">
		<ul>
			<li>
			 	<label for = "title">제목</label>
			 	<input type = "text" name = "board_title">
			 </li>
			 <li>
			 	<label for = "date">날짜</label>
			 	<input type = "date"> ~ <input type = "date">
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
				<label for = "image">이미지</label>
				<input type = "file" multiple = "multiple" name = "picture" class = "multi with-preview">
			</li>
			<li>
				<label for = "latter">후기</label>
				<textarea name = "board_content" rows = "6" cols = "200"></textarea>
			</li>
		</ul>
	</div>
</fieldset>
</form>
</body>
</html>