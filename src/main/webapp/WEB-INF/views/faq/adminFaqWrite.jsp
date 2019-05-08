<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function move(){
	location.href="adminfaq.do";
}
</script>
<title>stravel</title>
</head>
<body>
<c:import url="../common/adminHeader.jsp"/>
<div class="content">
<div class="container-fluid">
<div class="row">
<form action="faqinsert.do">
<div class="col-md-12">
<div class="card">
<div class="header">
<h4 class="title">몇번글</h4>
<p class="category">상세보기</p>
</div>
<div class="content table-responsive">
<table class="table table-striped">
<tbody>
<tr>
<th>선택</th>
<td><select name="category" class="form-control">
<option value="">카테고리선택</option>
<option value="결제">결제</option>
<option value="상품">상품</option>
<option value="계정">계정</option>
</select></td>
</tr>
<tr>
<th>제목</th>
<td><input type="text" class="form-control"></td>
</tr>
<tr>
<th>내용</th>
<td><textarea rows="20" cols="50" class="form-control"></textarea></td>
</tr>
<tr>
<th>파일첨부</th>
<td><input type="file" class="form-control"></td>
</tr>
</tbody>
</table>
<div style="text-align:center;">
<input type="submit" value="작성완료" class="btn btn-default btn-sm">
<input type="reset" value="입력취소" class="btn btn-deafault btn-sm">
</div>
</div>
</div>
</form>
</div>
<div style="text-align:center;">
<button class="btn btn-default btn-sm" onclick="move();">목록가기</button>
</div>
</div>
</div>
</div>
<c:import url="../common/afooter.jsp"/>
</body>
</html>