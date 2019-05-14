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

<h2 align="center">동행찾기 상세 글 쓰기</h2>
<br><br><br>
<!-- 등록모달 -->
<div id="compmodal" class="compmodalout">
<form action="compinsert.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="user_email" value="#">
<table class="compwritemodalin" align="center" cellpadding="10px" style="width:700px; border-collapse: collapse;">
	<tr>
		<td colspan="6">
		<table style="width:100%;">
			<tr>
				<td style="align:left; width:3%;">
					<span class="bspan">제목</span>
				</td>
				<td style="width:30%;">
				<input type="text" name="companion_title" style="width:70%;" required>
				</td>
			</tr>
		</table>
		</td>
	</tr>
	<tr><td align="center" colspan="6"><textarea class="compcontents" name="companion_content" placeholder="내용을 입력해주세요" style="width:95%; height:160px;" required></textarea></td></tr>
	<tr><td align="center" colspan="3" style="width:50%;"><input type="submit" class="compsubmitbtn" value="등록" style="width:90%;"></td>
		<td align="center" colspan="3" style="width:50%;"><input type="button" class="compcanclebtn" value="취소" onclick="cancle()" style="width:90%"></td></tr>
</table>
</form>
</div>

<br><br><br>
<c:import url="../common/footer.jsp" />
</body>
</html>