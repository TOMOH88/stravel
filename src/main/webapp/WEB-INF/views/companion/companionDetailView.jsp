<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">


</script>
<meta charset="UTF-8"> 
<title>stravel</title>
</head>
<body>
 <c:import url="../common/header.jsp" />
 <hr>
 <br><br><br>
<h2 align="center">동행 찾기 ${companion.companion_no } 번 글 상세보기</h2>
<br><br>

<div style="width:1032px;   border:1px solid #bcbcbc;margin:0px auto; padding:50px;"><!-- 전체 -->
	
		<div style="width:100%; height:90px; background:yellow;" ><!-- 헤더 -->
			<div>
				<div style="padding:10px; display:table-cell; width:125px;">제 목</div>
				<div style="padding:10px; display:table-cell; width:800px;">${companion.companion_title }</div>
				<div style="padding:10px; display:table-cell; width:100px;">작성일</div>
				<div style="padding:10px; display:table-cell; width:200px;">${companion.companion_date }</div>
			</div>
			<div style="padding:10px; display:table-cell; width:100px;">작성자</div>
			<div style="padding:10px; display:table-cell; width:200px;">${companion.user_email }</div>
		</div><!-- 헤더 -->
		<div style="width:100%; height:400px; background:green;"><!-- 바디 -->
			<div>내용만</div>
			<div>댓글달기
			

			
			
			
			
			
			
			
			</div>
		</div><!-- 바디 -->
		
	
		
	
	
	
</div> <!-- 전체 -->










<br><hr><br>

<div><c:import url="../common/footer.jsp" /></div>

</body>
</html>