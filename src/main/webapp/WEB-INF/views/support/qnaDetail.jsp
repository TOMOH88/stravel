<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</head>
<body>
	<h1>1:1 상세페이지</h1>
	<h2>${list.qna_writer }님의${list.qna_no }번 글입니다.</h2>
	<table>
		<tr>
			<th>제목</th>
			<td>${list.qna_title }</td>
			<th>작성일</th>
			<td>${list.qna_date }</td>
		</tr>
		<tr>
			<th colspan="4">내용</th>
		</tr>
		<tr>
			<td colspan="4" ><textarea rows="5" cols="25" readonly="readonly">${list.qna_content }</textarea></td>
		</tr>

		<c:if test="${list.qna_status eq 'Y' }">
			<tr>
				<th colspan="2">답변</th>
				<th>답변일</th>
				<td>${list.qna_answerdate }</td>
			</tr>
			<tr>
				<td colspan="4"><textarea rows="5" cols="25" readonly="readonly">${list.qna_answer }</textarea></td>
			</tr>
			
		</c:if>
	</table>
</body>
</html>