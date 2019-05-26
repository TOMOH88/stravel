<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/SE2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript"> 
var oEditors = [];
$(function(){
      nhn.husky.EZCreator.createInIFrame({
          oAppRef: oEditors,
          elPlaceHolder: "con1", //textarea에서 지정한 id와 일치해야 합니다. 
          //SmartEditor2Skin.html 파일이 존재하는 경로
          sSkinURI: "${pageContext.request.contextPath }/resources/SE2/SmartEditor2Skin.html",  
          htParams : {
              // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
              bUseToolbar : true,             
              // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
              bUseVerticalResizer : true,     
              // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
              bUseModeChanger : true,      
              bSkipXssFilter : true,
              fOnBeforeUnload : function(){
                   
              }
          }, 
          fOnAppLoad : function(){
              //기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
              oEditors.getById["con1"].exec("PASTE_HTML",[""]);
          },
          fCreator: "createSEditor2"
      });
      
      $("#save").click(function(){
    	    oEditors.getById["con1"].exec("UPDATE_CONTENTS_FIELD", []);
    	    $("#faqForm").submit();
    	});
});


</script>
<title>stravel</title>
</head>
<body>
<c:import url="../../common/adminHeader.jsp"/>
<div class="content">
<div class="container-fluid">
<div class="row">
<form name="faqForm" action="faqinsert.do" method="post" enctype="multipart/form-data" accept-charset="utf-8">
<div class="card">
<div class="header">
<h4 class="title">공지사항 작성</h4>
<p class="category"></p>
</div>
<div class="content table-responsive">
<table class="table table-striped">
<tbody>
<tr>
<th>선택</th>
<td><select name="faq_categorycode" class="form-control">
<option value="">카테고리선택</option>
<c:forEach items="${faqCategory }" var="fc">
<option value="${fc.faq_categorycode}">${fc.faq_categoryname }</option>
</c:forEach>
</select></td>
</tr>
<tr>
<th>제목</th>
<td>
	<input type="text" name="faq_title" class="form-control">
	<input type="hidden" name="faq_writer" value="admin01"/>
</td>
</tr>
<tr>
<th>내용</th>
<td><textarea id="con1" name="faq_content" rows="20" cols="50" class="form-control"></textarea></td>
</tr>
<tr>
<th>파일첨부</th>
<td><input type="file" name="upfile" class="form-control"></td>
</tr>
</tbody>
</table>
<div style="text-align:center;">
<button class="btn btn-default btn-sm"  id="save">글작성</button>
<button class="btn btn-default btn-sm" onclick="location.href='adminfaq.do'">목록가기</button>
</div>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
<c:import url="../../common/afooter.jsp"/>
</body>
</html>