<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
</head>
<body>
<c:import url="../../common/adminHeader.jsp"/>
<div class="content">
<div class="container-fluid">
<div class="row">
<div class="card">
<div class="header">
<h4 class="title">몇번글</h4>
<p class="category">상세보기</p>
</div>
<div class="content table-responsive table-full-width">
<table class="table table-hover table-striped">
<tr>
<th class="success">제목</th><td>FAQ1</td><th class="success">작성날짜</th><td>2019-05-09</td>
</tr>
<tr>
<th class="success">작성자</th><td>admin1</td><th class="success">파일첨부</th><td>첨부파일없음</td>
</tr>
<tr>
<th class="success">내용</th><td colspan="4">테스트............................</td>
</tr>
</table>
<div style="text-align:center;">
<button class="btn btn-default btn-sm" onclick="location.href='adminfaq.do'">목록</button>
<button class="btn btn-default btn-sm">삭제</button>
<button class="btn btn-default btn-sm">이전글</button>
<button class="btn btn-default btn-sm">다음글</button>
</div>
</div>
</div>
</div>
</div>
</div>
<c:import url="../../common/afooter.jsp"/>
</body>
</html>