<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    	    $("#qnaAnswerForm").submit();
    	});
});
</script>
</head>
<body>
<c:import url="../../common/adminHeader.jsp" />
<div class="content">
<div class="container-fluid">
<div class="row">
<!-- table 영역 시작 -->
<div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">${qna.qna_no}번 글</h4>
                                <p class="category">상세보기</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <tr>
                                    <th class="success">제목</th><td>${qna.qna_title}</td>
                                    <th class="success">작성자</th><td>${qna.qna_writer}</td>
                                    <th class="success">작성날짜</th><td>${qna.qna_date}</td>
                                    </tr>
                                    <tr>
                                    <th class="success">내용</th><td colspan="5">${qna.qna_content}</td>
                                    </tr>
                                    <!-- 답변 -->
                                    <c:if test="${qna.qna_status eq 'N' }">
                                    <tr>
                                    <th class="success">답변</th>
                                    <td colspan="5">
                                    <form name="qnaAnswerForm" action="insertQnaAnswer.do" method="post">
                                    <input type="hidden" name="qna_answerwriter" value="admin01">
                                    <input type="hidden" name="qna_no" value="${qna.qna_no }">
                                    <textarea class="form-control" rows="5" id="con1" name="qna_answer"></textarea>
                                    <div style="text-align:center;">
                                    <button class="btn btn-default btn-sm"  id="save">답변하기</button>
                                   
                                    <!-- <input type="reset" value="작성취소" class="btn btn-default btn-sm"> -->
                                    </div>
                                    </form>
                                    </td>
                                    </tr>
                                    </c:if>
                                    <c:if test="${qna.qna_status eq 'Y' }">
                                    <tr>
                                    <th class="success">답변</th>
                                    <td colspan="5">
                                   	${qna.qna_answer }
                                    </td>
                                    </tr>
                                    </c:if>
                                    <!-- 답변끝 -->
                                </table>
                                <div style="text-align:center;">
                                <button class="btn btn-default" onclick="location.href='adminqna.do'">목록</button>
                                </div>
                               </div>
                             </div>
                            </div>
                       <!-- table 끝 -->       
</div>
</div>
</div>
<c:import url="../../common/afooter.jsp"/>
</body>
</html>