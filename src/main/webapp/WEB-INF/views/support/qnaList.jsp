<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
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
</table>
</body>
</html>