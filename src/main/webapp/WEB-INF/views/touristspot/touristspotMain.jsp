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
</head>
<body>
<c:import url="../common/header.jsp" />
<section class="section-margin">

<h1>관광지</h1>
<nav>
1.<br>
2.<br>
3.<br>
4.<br>
</nav>	

<table>
<tr><th>페이지 명</th><td>링크</td><td>작업 상태</td></tr>
<tr><th>관광지 관리자 페이지</th><td><a href="moveTSAdmin.do">이동</a></td><td>작업중</td></tr>
<tr><th>샘플</th><td><a href="sampMap.do">이동</a></td><td>작업중</td></tr>
<tr><th>샘플2</th><td><a href="sampMap2.do">이동</a></td><td>작업중</td></tr>
</table>



</section>
<c:import url="../common/footer.jsp"/>
</body>
</html>