<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<script type="text/javascript">
function faqdelete(){
	if(confirm("정말 삭제하시겠습니까?") == true){
		location.href=location.href = "faqDelete.do?faq_no=${faq.faq_no}";
	}else {
		return;
	}
}
function pre(){
		var no = ${faq.faq_no}-1;
		location.href=location.href = "adminfaqView.do?faq_no="+no;

}
function ne(){
		var no = ${faq.faq_no}+1;
		location.href=location.href = "adminfaqView.do?faq_no="+no;
}
</script>
</head>
<body>
<c:import url="../../common/header.jsp"/>
<div class="content">
<div class="container-fluid">
<div class="row">
<div class="card">
<div class="header">
<h4 class="title">${faq.faq_no }번글</h4>
<p class="category">상세보기</p>
</div>
<div class="content table-responsive table-full-width">
<table class="table table-hover table-striped">
<tr>
<th class="success">제목</th><td>${faq.faq_title }</td><th class="success">작성날짜</th><td>${faq.faq_date }</td>
</tr>
<tr>
<th class="success">작성자</th><td>${faq.faq_writer }</td>
<th class="success">파일첨부</th><td><c:if test="${!empty faq.rename_ffilename }"><a href="faqdown.do?filename=${faq.rename_ffilename }">다운로드</a></c:if>
<c:if test="${empty faq.rename_ffilename }">첨부파일 없음</c:if> </td>
</tr>
<tr>
<th class="success">내용</th><td colspan="4">${faq.faq_content }</td>
</tr>
</table>
<div style="text-align:center;">
<button class="btn btn-default btn-sm" onclick="location.href='adminfaq.do'">목록</button>
<!-- <button class="btn btn-default btn-sm" onclick="faqdelete();">삭제</button> -->
<!-- <button class="btn btn-default btn-sm" onclick="pre();">이전글</button>
<button class="btn btn-default btn-sm" onclick="ne();">다음글</button> -->
</div>
</div>
</div>
</div>
</div>
</div>
<c:import url="../../common/footer.jsp"/>
</body>
</html>