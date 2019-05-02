<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
</head>
<body>
<fieldset>
	<legend>${ myboard.board_writer }님의 글 </legend>
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
		</ul>
	</div>
</fieldset>

</body>
</html>