<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/smartEditor/js/service/HuskyEZCreator.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript"> 
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "Content",  //textarea ID
    sSkinURI: "${pageContext.request.contextPath }/resources/smartEditor/SmartEditor2Skin.html",
    fCreator: "createSEditor2",
});

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
                                <h4 class="title">몇번글</h4>
                                <p class="category">상세보기</p>
                            </div>
                            <div class="content table-responsive table-full-width">
              				<form>
                                <table class="table table-hover table-striped">
                                    <tr>
                                    <th class="success">TITLE</th>
                                    <td>
                                    <input type="text">
                                    </td>
                                    </tr>
                                    <tr>
                                    <th class="success">CONTENT</th>
                                    <td>
                                    <textarea id="Content" name="Content" style="width:100px; height:100px;"></textarea>
                                    </td>
                                    </tr>
                                    <tr>
                                    <th class="success">FILE</th>
                                    <td>
                                    <input type="file">
                                    </td>
                                    </tr>
                                </table>
                                <div style="text-align:center;">
                        <button class="btn btn-default btn-sm" onclick="location.href='faqinsert.do'">글쓰기</button>
                        </div>
                                </form>
                            </div>
                        </div>
                    </div>
</div>
</div>
<c:import url="../../common/afooter.jsp"/>
</body>
</html>