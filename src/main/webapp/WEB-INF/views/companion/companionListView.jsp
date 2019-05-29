<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function writeform(){
	location.href="compwrite.do";
}
</script>
<meta charset="UTF-8">

<title>stravel</title>
</head>
<body>
 <c:import url="../common/header.jsp" />
 <hr>
 <br><br><br>
<h1 align="center">동행 찾기</h1>
<br>


<table id="companion" align="center" cellpadding="4px" style="width: 900px; border-collapse:collapse;">
<tr>
	<th>번호</th>
	<td>아이디</td>
	<th style="width:500px;">제목</th>
	<th>진행상태</th>
</tr>
<c:forEach items="${compList }" var="c">
<tr>
	<th>${c.companion_no }</th>
	<td>${c.user_email }</td>
	<th>
	<%-- 로그인 상태일 때만 상세보기 링크 설정함 --%>
	<c:if test="${!empty loginUser }">
		<a href="compdetail.do?companion_no=${c.companion_no }">${c.companion_title }</a>
	</c:if>
	<c:if test="${empty loginUser }">
		<a href="compdetail.do?companion_no=${c.companion_no }">${c.companion_title }</a>
	</c:if>
	
	</th>
	<c:if test="${c.companion_progress eq '1'}">
	<th><button style="background-color:#bcbcbc; color:blue; border:0; width:80px; height:25px; border-radius:5px;">진행중</button></th>
	</c:if>
	<c:if test="${c.companion_progress eq '2'}">
	<th><button style="background-color:#bcbcbc; color:red; border:0; width:80px; height:25px; border-radius:5px;">진행완료</button></th>
	</c:if>
</tr>
</c:forEach>
<tr>
	<th>
		<button style="background-color:#bcbcbc; color:blue; border:0; width:140px; height:30px; border-radius:5px;" onclick="writeform()">글쓰기</button>
	</th>
</tr>
</table>

<br><br><br>
<%-- 페이징 처리 --%>
<div style="text-align:center;">
<c:if test="${ currentPage le 1 }">
	[맨처음]&nbsp;
</c:if>
<c:if test="${ currentPage gt 1 }">
	<a href="comp.do?page=1">[맨처음]</a>&nbsp;
</c:if>
<c:if test="${ (currentPage - 10) < startPage && (currentPage - 10) > 1 }">
	<a href="comp.do?page=${ startPage - 10 }">[prev]</a>
</c:if>
<c:if test="${ !((currentPage - 10) lt startPage and (currentPage - 10) gt 1)}">
	[prev]
</c:if>
<%-- 현재 페이지가 포함된 페이지 그룹 숫자 출력 처리 --%>
<c:forEach var="p" begin="${ startPage }" end="${ endPage }"> 
	<c:if test="${ p eq currentPage }">
	<font color="red" size="4"><b>[${ p }]</b></font>
	</c:if>
	<c:if test="${ p ne currentPage }">
	<a href="comp.do?page=${ p }">${ p }</a>
	</c:if>
</c:forEach>
<c:if test="${ (currentPage + 10) > endPage && (currentPage + 10) < maxPage }">
	<a href="comp.do?page=${ endPage + 10 }">[next]</a>&nbsp;
</c:if>
<c:if test="${ (currentPage + 10) <= endPage || (currentPage + 10) >= maxPage }">
	[next]&nbsp;
</c:if>
<c:if test="${ currentPage ge maxPage }">
	[맨끝]
</c:if>
<c:if test="${ currentPage lt maxPage }">
	<a href="comp.do?page=${ maxPage }">[맨끝]</a>
</c:if>
</div>


<br><br><br>












<c:import url="../common/footer.jsp" />
</body>
</html>