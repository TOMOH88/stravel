<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import url="../common/adminHeader.jsp" />
<div class="content">
<div class="container-fluid">
<div class="row">
<!-- table 영역 시작 -->
<div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">몇번글</h4>
                                <p class="category">상세보기</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <tr>
                                    <th class="success">제목</th><td>1:1문의</td>
                                    <th class="success">작성자</th><td>하종은</td>
                                    <th class="success">작성날짜</th><td>2019-05-09</td>
                                    </tr>
                                    <tr>
                                    <th class="success">내용</th><td colspan="5">문의 테스트</td>
                                    </tr>
                                    <tr>
                                    <th class="success">답변</th>
                                    <td colspan="5">
                                    <form>
                                    <textarea class="form-control col-sm-12" rows="5"></textarea>
                                    <div style="text-align:center;">
                                    <input type="submit" value="답변하기" class="btn btn-default btn-sm">
                                    <input type="reset" value="작성취소" class="btn btn-default btn-sm">
                                    </div>
                                    </form>
                                    </td>
                                    </tr>
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
<c:import url="../common/afooter.jsp"/>
</body>
</html>