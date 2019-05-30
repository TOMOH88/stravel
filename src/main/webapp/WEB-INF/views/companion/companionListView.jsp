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
<style>
table tr td {
   border-bottom: 1px solid rgba(67, 67, 67, 0.8);
   "
}

table tr:nth-child(2n) {
   background-color: white;
}

table tr:nth-child(2n+1) {
   background-color: #edf7f8;
}

table tr:nth-child(1) {
   background-color: rgba(67, 67, 67);
}
table tr td div{
	padding:5px;
}
</style>
<meta charset="UTF-8">

<title>stravel</title>
</head>
<body>
 <c:import url="../common/header.jsp" />
 <hr>
 <br><br><br>
<h1 align="center">동행 찾기</h1>
<br>


<table id="companion" align="center" cellpadding="4px;" style="width: 900px; border-collapse:collapse;">
<tr style="padding:10px;">
	<td style="width:50px;"><div>번호</div></td>
	<td style="width:200px;"><div>아이디</div></td>
	<td style="width:500px;"><div>제목</div></td>
	<td><div>진행상태</div></td>
</tr>
<c:forEach items="${compList }" var="c">
<tr>
	<td><div>${c.companion_no }</div></td>
	<td><div>${c.user_email }</div></td>
	<td>
	<%-- 로그인 상태일 때만 상세보기 링크 설정함 --%>
	<c:if test="${!empty loginMember }">
		<div><a href="compdetail.do?companion_no=${c.companion_no }">${c.companion_title }</a></div>
	</c:if>
	<c:if test="${empty loginMember }">
		<div>${c.companion_title }</div>
	</c:if>
	</td>
	<c:if test="${c.companion_progress eq '1'}">
	<td><div align="center"><button style="background-color:#bcbcbc; color:blue; border:0; width:80px; height:25px; border-radius:5px;">진행중</button></div></td>
	</c:if>
	<c:if test="${c.companion_progress eq '2'}">
	<td><div align="center"><button style="background-color:#bcbcbc; color:red; border:0; width:80px; height:25px; border-radius:5px;">진행완료</button></div></td>
	</c:if>
</tr>
</c:forEach>
</table>
<br>
<c:if test="${!empty loginMember }">
<div align="center"><button style="background-color:#bcbcbc; color:blue; border:0; width:140px; height:30px; border-radius:5px;" onclick="writeform()">글쓰기</button></div>
</c:if>
<c:if test="${empty loginMember }">
<div align="center"><button style="background-color:#bcbcbc; color:blue; border:0; width:140px; height:30px; border-radius:5px;">글쓰기</button></div>
</c:if>
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