<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js">
</script>
<meta charset="UTF-8">
<title>stravel</title>
</head>
<body>
<div><c:import url="../common/header.jsp" /></div>
<div style="width:1032px; border:1px solid #bcbcbc;margin:0px auto; padding:50px;"><!-- 전체 -->
	<form action="compupdate.do" method="post" enctype="multipart/form-data">
		<div style="width:100%; height:90px; background:yellow;" ><!-- 헤더 -->
		<input type="hidden" id="companion_no" name="companion_no" value="${companion.companion_no }">
			<div>
				<div style="padding:10px; display:table-cell; width:125px;">제 목</div>
				<div style="padding:10px; display:table-cell; width:800px;"><input type="text" id="companion_title" name="companion_title" placeholder="${companion.companion_title }" style="width:70%;" required></div>
				<div style="padding:10px; display:table-cell; width:100px;">작성일</div>
				<div style="padding:10px; display:table-cell; width:200px;">${companion.companion_date }</div>
			</div>
			<div style="padding:10px; display:table-cell; width:100px;">작성자</div>
			<div style="padding:10px; display:table-cell; width:200px;">${companion.user_email }</div>
		</div><!-- 헤더 -->
		<div style="width:100%; height:400px; background:green;"><!-- 바디 -->
			<div><!-- 내용만 -->
			<div style="padding:10px;"><textarea class="compcontents" name="companion_content" placeholder="${companion.companion_content }" style="width:95%; height:160px;" required></textarea></div>
			</div>
			<div><input type="submit" value="수정하기"></div>
		</div><!-- 바디 -->
		
	</form>		
</div> <!-- 전체 -->
<div><c:import url="../common/footer.jsp" /></div>		
</body>
</html>