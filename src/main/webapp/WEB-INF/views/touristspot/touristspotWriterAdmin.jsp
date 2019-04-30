<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h1>관광지 글쓰기 페이지</h1>
<form action="TSWriterUpload.do" method="post" enctype="multipart/form-data">
<table>
<tr>
	<th>관광지 명</th><td><input type="text" name="touristsopt_name"/></td>
</tr>
<tr>
	<th>관광지 카테고리</th>
	<td>
		<select name="touristsoptcategorycode">
			
		</select>
	</td>
</tr>
<tr>
	<th>관광지 설명</th><td><textarea name="touristsopt_content"></textarea></td>
</tr>
<tr>
	<th>관광지 주소</th><td><input type="text" name="touristsopt_address"/></td>
</tr>
<tr>
	<th>사진 업로드</th><td><input  multiple="multiple" type="file" name="tsimages"/></td>
</tr>
<tr>
	<td><input type="submit"/></td><td><input type="reset"></td>
</tr>
</table>
</form>
</body>
</html>