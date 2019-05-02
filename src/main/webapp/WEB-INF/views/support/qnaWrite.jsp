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
	function moveQnaList() {
	location.href="qnalist.do";	
	}
</script>
</head>
<body>
<h1 align="center">1:1문의 글쓰기</h1>
<div class="writeFrom">
<form action="qnainsert.do" method="post" enctype="multipart/form-data">
<input type="hidden" name="qna_writer" value="김지훈<%-- ${username }--%>">
<table>
	<tr>
		<th>제목</th>
		<td><input type="text" name="qna_title" style="width:440px;" /></td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea rows="30" cols="60" name="qna_content"></textarea></td>
	</tr>
	<tr>
		<th>첨부이미지</th>
		<td><input type="file" name="qnaimage"></td>
	</tr>
	<tr>
		<th colspan="2"><input type="submit" value="글쓰기"/>&nbsp;&nbsp;<input type="reset" value="취소"/>&nbsp;&nbsp;<input type="button" onclick="moveQnaList();" value="목록으로"/></th>
	</tr>	
</table>
</form>
</div>
</body>
</html>