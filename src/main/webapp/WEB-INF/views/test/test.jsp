<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test</title>
</head>
<body>
<c:import url="../common/header.jsp"/>
<section class="section-margin">
<div class="container">
<div class="page-header">
<c:forEach var="m" items="${mclist}">
${m.mycalendar_title } <br>
${m.mycalendar_start_date }<br>
${m.mycalendar_end_date }
</c:forEach>


</div>
</div>
</section>
<c:import url="../common/footer.jsp"/>
</body>
</html>