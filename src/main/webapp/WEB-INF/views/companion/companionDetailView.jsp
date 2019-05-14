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
 <c:import url="../common/header.jsp" />
 <hr>
 <br><br><br>
<h2 align="center">동행 찾기 ${companion.companion_no } 번 글 상세보기</h2>
<br><hr><br>
<div style="width:1650px; height:1000px; float:left; border:1px solid #bcbcbc;">
	<div style="width:20%; height:100%; float:left; border:1px solid #bcbcbc;"></div>
	
	<div style="width:60%; height:100%; float:left; border:1px solid #bcbcbc;">
		<div style="width:100%; height:10%; float:top; border:1px solid #bcbcbc;"></div>
		<div style="width:100%; height:80%; float:top; border:1px solid #bcbcbc;">
			<h7>${companion.companion_title }</h7>
		<br>
			${companion.user_email }
		<c:if test="${companion.companion_progress eq '1'}">
		<button style="background-color:#bcbcbc; color:blue; border:0; width:80px; height:25px; border-radius:5px;">진행중</button>
		</c:if>
		<c:if test="${companion.companion_progress eq '2'}">
		<button style="background-color:#bcbcbc; color:red; border:0; width:80px; height:25px; border-radius:5px;">진행완료</button>
		</c:if>
			
		<br><hr><br>
		<div>${companion.companion_content }</div>
		<br>
		<hr style="border: 1px solid #bcbcbc;">
		
		<c:forEach items="${compReplyList}" var="cr">
		
			<table>
				<tr>
					<td>${cr.user_email }</td>
					<td>${cr.companion_reply_content }</td>
					<td>${cr.companion_reply_date }</td>
				</tr>
			</table>
		
		
		</c:forEach>
		
		
		</div>

		
		
		
		<div style="width:100%; height:10%; float:top; border:1px solid #bcbcbc;"></div>
	</div>
	
	<div style="width:20%; height:100%; float:left; border:1px solid #bcbcbc;"></div>
	
</div> <!-- 전체 -->










<br><hr><br>

<c:import url="../common/footer.jsp" />
</body>
</html>