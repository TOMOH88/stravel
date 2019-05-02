<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js" type="text/javascript" ></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.MultiFile.js" type="text/javascript" ></script>
<script type="text/javascript"></script>
</head>
<body>
<c:import url="../common/header.jsp" />
<section class="section-margin">
<h1 align="center">관광지 글쓰기 페이지</h1>
<form action="TSWriterUpload.do" method="post" enctype="multipart/form-data">
<input type="hidden" name="touristsopt_writer" value="김지훈">
<table class="table">
<tr>
	<th>관광지 명</th><td><input type="text" name="touristsopt_name" required="required" class="form-control"/></td>
</tr>
<tr>
	<th>관광지 카테고리</th>
	<td>
		<select name="touristsoptcategorycode">
			<c:forEach items="${ TSCategory}" var="TSC">
			<option value="${TSC.touristspotCategoryCode }">${TSC.touristspotCategoryName }</option>
			</c:forEach>
		</select>
	</td>
</tr>
<tr>
	<th>관광지 설명</th><td><textarea name="touristsopt_content" required="required"class="form-control"></textarea></td>
</tr>
<tr>
	<th>관광지 주소</th><td><input type="text" name="touristsopt_address" required="required" class="form-control"/></td>
</tr>
<tr>
	<th>관광지 영업시작 시간</th><td><input type="time" name="touristsopt_open" required="required" class="form-control"/></td>
</tr>
<tr>
	<th>관광지 영업마감 시간</th><td><input type="time" name="touristsopt_closed" required="required" class="form-control"/></td>
</tr>
<tr>
	<th>관광지 전화번호</th><td><input type="tel" name="touristsopt_tel" required="required" class="form-control"/></td>
</tr>
<tr>
	<th>관광지 홈페이지</th><td><input type="text" name="touristsopt_homepage" required="required" class="form-control"/></td>
</tr>
<tr>
	<th>사진 업로드</th><td><input  multiple="multiple" type="file" name="tsimages2"/></td>
</tr>
<tr>
	<th>사진 업로드2</th><td><input multiple="multiple" type="file" name="tsimages" class="multi with-preview" required="required" /></td>
</tr>
<tr>
	<td><input type="submit"/></td><td><input type="reset"></td>
</tr>
</table>
</form>
</section>
</body>
</html>