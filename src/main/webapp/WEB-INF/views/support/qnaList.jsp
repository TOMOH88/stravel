<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<style>
  table {
    border: 1px solid #444444;
  }
  th, td {
    border: 1px solid #444444;
  }
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function moveWritePage() {
	location.href="qnawrite.do";	
	}
</script>
</head>
<body>
<h1>1:1 문의 게시판 사용자</h1>
<center><button onclick="moveWritePage(); return false;">글쓰기</button></center>
<table>
<tr><th>번호</th><th>제목</th><th>날짜</th><th>답변유무</th></tr>
<c:forEach items="${qnalist }" var="list">
<tr><th>${list.qna_no }</th><th><a href="qnadetail.do?qna_no=${list.qna_no }&qna_writer=김지훈">${list.qna_title }</a></th><th>${list.qna_date }</th><th>${list.qna_status }</th></tr>
</c:forEach>
</table>
</body>
</html>