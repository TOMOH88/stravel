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
/* var oEditors = [];
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
    	    $("#noticeForm").submit();
    	});
});

 */
</script>
<title>stravel</title>
</head>
<body>
<c:import url="../../common/adminHeader.jsp"/>
<div class="content">
<div class="container-fluid">
<div class="row">
<div class="card">
                            <div class="header">
                                <h4 class="title">공지사항</h4>
                                <p class="category">글쓰기</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <tr>
                                    <th class="success">TITLE</th>
                                     <td>
                                    ${notice.notice_title }
                                    <input type="hidden" name="notice_writer" value="amdin01"/> 
                                    </td>
                                    </tr>
                                    <tr>
                                    <th class="success">CONTENT</th>
                                    <td>
                                    ${notice.notice_content }
                                    </td>
                                    </tr>
                                    <c:if test="${!empty notice.originalname_nfilename }">
                                    <tr>
                                    <th class="success">FILE</th>
                                    <td>
									<a href="fdown.do?filename=${notice.rename_nfilename }">${notice.originalname_nfilename }</a>
                                    </td>
                                    </tr>
                                    </c:if>
                                </table>
                                <div style="text-align:center;">
                                <button class="btn btn-default btn-sm"  onclick="location.href='anoticeUpdate.do?notice_no=${notice.notice_no}'">글 수정</button>
                                <button class="btn btn-default btn-sm"  onclick="location.href='noticeDelete.do?notice_no=${notice.notice_no}'">글 삭제</button>
                        		<button class="btn btn-default btn-sm" onclick="location.href='adminnotice.do'">목록으로</button>
                        </div>

                            </div>
                        </div>
                    </div>
</div>
</div>
<c:import url="../../common/afooter.jsp"/>
</body>
</html>
