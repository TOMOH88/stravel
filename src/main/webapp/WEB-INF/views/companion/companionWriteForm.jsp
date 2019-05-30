<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function cancle(){
	location.href="comp.do"
}
</script>
<meta charset="UTF-8">
<title>stravel</title>
</head>
<body>
 <c:import url="../common/header.jsp" />



<div style="width:1200px; height:1000px; margin:0px auto; background:#48d1CC;"><!-- 전체 -->
<div style="height:200px;"><!-- 헤더 -->
<div align="center" style="padding:50px;"><h2>동행찾기 상세 글 쓰기</h2></div>
</div><!-- 헤더 -->
<div><!-- 바디 -->
<form action="compinsert.do" method="post" enctype="multipart/form-data">
	<div><input type="hidden" id="companion_writer" name="companion_writer" value="${loginMember.user_email }"></div>
	<div style="padding: 30px; width:100px; height:100px; display:table-cell;">제목</div><div style="width:1000;height:100px; display:table-cell;"><input type="text" id="companion_title" name="companion_title" style="width:1000px;" required></div>
	<div align="center"><textarea class="compcontents" name="companion_content" placeholder="내용을 입력해주세요" style="width:1000px; height:500px; margin:0px auto;"required></textarea></div>
	<br>
	<div style="width:400px; margin:0px auto;">
	<div style="display:table-cell; width:230px;"><input type="submit" value="등록" style="width:100px;"/></div><div style="display:table-cell; width:230px;"><input type="button" value="취소" onclick="cancle()" style="width:100px;"></div>
	</div>
</form>

</div><!-- 바디 -->






x
</div><!-- 전체 -->












<br><br><br>
<c:import url="../common/footer.jsp" />
</body>
</html>