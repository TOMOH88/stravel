<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function modalopen(){
	$("#cmodal").fadeIn(200);
}</script>
<meta charset="UTF-8">
<title>stravel</title>
</head>
<body>

<!-- 등록 모달 -->
<div id="cmodal" class="cwritemodalout">
<form action="/lb/qwrite"  method="post" enctype="multipart/form-data">
	<input type="hidden" name="userNo" value="">
<table class="cwritemodalin"  align="center" cellpadding="10px" style="width: 700px; border-collapse:collapse;">
	<tr bgcolor="#74b9ff"><td colspan="2" style="color: white; font-size: 25px; text-align: left; padding-left: 3%;"><b>1대1문의</b></td>
		<td colspan="4"><span class="modalclose" onclick="modalclose()">&times;</span></td></tr>
	<tr><td align="center" style="width: 13%;"><span class="bspan">문의내용</span></td>
		<td style="width: 21%;"><div class="bselect"><select name="category" required>
				<option value="상품문의">상품문의</option>
				<option value="배송문의">배송문의</option>
				<option value="환불문의">환불문의</option>
				<option value="교환반품문의">교환반품문의</option>
				<option value="결제문의">결제문의</option>
				<option value="회원문의">회원문의</option>
				<option value="기타문의">기타문의</option>
										</select></div></td>
		<td align="center" style="width: 16%;"><span class="bspan">아이디</span></td>
		<td style="width: 20%;"></td>
		<td colspan="2"></td></tr>
	<tr><td align="center"><span class="bspan">제목</span></td>
		<td colspan="5" align="left" ><input type="text" class="btitle" name="title" placeholder="제목" style="width: 80%;" required></td></tr>
	<tr><td></td>
		<td colspan="5" align="left" ><textarea class="bcontents" name="contents" placeholder="내용을 입력해주세요" style="width: 95%; height:160px;" required></textarea></td></tr>
	<tr><td colspan="2" align="center"><div class="imagediv"><input class="imagename" value="" disabled="disabled"><label for="qwupimage1">IMAGE1</label><input type="file" id="qwupimage1" class="bupimage" name="upimage1"  accept="image/*" multiple></div></td>
		<td colspan="2" align="center"><div class="imagediv"><input class="imagename" value="" disabled="disabled"><label for="qwupimage2">IMAGE2</label><input type="file" id="qwupimage2" class="bupimage" name="upimage2"  accept="image/*" multiple></div></td>
		<td colspan="2" align="center"><div class="imagediv"><input class="imagename" value="" disabled="disabled"><label for="qwupimage3">IMAGE3</label><input type="file" id="qwupimage3" class="bupimage" name="upimage3"  accept="image/*" multiple></div></td></tr>
	<tr><td colspan="3" align="center" ><input type="submit" class="bsubmitbtn" value="등록" style="width: 90%;"></td>
		<td colspan="3" align="center"><input type="button" class="bcanclebtn" value="취소" onclick="modalclose()" style="width: 90%;"></td></tr>
</table>
</form>
</div>

</body>
</html>