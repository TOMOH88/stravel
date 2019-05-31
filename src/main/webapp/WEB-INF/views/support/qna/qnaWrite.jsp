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
    	    $("#qnaForm").submit();
    	});
});
</script>
<title>Insert title here</title>
</head>
<body>
<c:import url="../../common/header.jsp" />
<div class="content">
<div class="container-fluid">
<div class="row">
<!-- table 영역 시작 -->
<div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">1:1 문의 작성</h4>
                                <p class="category"></p>
                            </div>
                            <div class="content table-responsive table-full-width">
                               <form name="qnaForm" action="insertUserQna.do" method="post">
                                <table class="table table-hover table-striped">
                                    <tr>
                                    <th class="success">제목</th><td><input type="text" name="qna_title"></td>
                                    <th class="success">작성자</th><td><input type="text" name="qna_writer" value="${loginMember.user_name }" readonly="readonly"></td>
                                    </tr>
                                    <tr>
                                    <th class="success">내용</th><td colspan="3" width="90%"><textarea id="con1" name="qna_content"></textarea></td>
                                    </tr>
									<tr>
									<th colspan="4">
									<button class="btn btn-default btn-sm" id="save">문의하기</button>
                                    <button class="btn btn-default btn-sm" onclick="location.href='qnalist.do'">목록</button>
                                    </th>
                                    </tr>
                                </table>
                                </form>
                               </div>
                             </div>
                            </div>
                       <!-- table 끝 -->       
</div>
</div>
</div>
<c:import url="../../common/footer.jsp"/>
</body>
</html>