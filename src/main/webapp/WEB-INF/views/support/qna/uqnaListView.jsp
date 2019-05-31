<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
</head>
<body>
<c:import url="../../common/header.jsp"/>
<section class="section-margin">
<div class="container">
<!-- table 영역 시작 -->
<div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">${qna.qna_no }번글</h4>
                                <p class="category">상세보기</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-bordered">
                                    <tr>
                                    <th style="background:pink;">제목</th><td>${qna.qna_title }</td>
                                    <th style="background:pink;">작성자</th><td>${qna.qna_writer }</td>
                                    <th style="background:pink;">작성날짜</th><td>${qna.qna_date }</td>
                                    </tr>
                                    <tr>
                                    <th style="background:pink;">내용</th><td colspan="5">${qna.qna_content }</td>
                                    </tr>
                                    <c:if test="${ qna.qna_status eq 'Y' }">
                                    <tr>
                                    <th style="background:pink;">답변</th>
                                    <td colspan="5">${qna.qna_answer }
                                    </td>
                                    </tr>
                                    </c:if>
                                </table>
                                <div style="text-align:center;">
                                <button class="btn btn-default" onclick="location.href='qnalist.do'">목록</button>
                                </div>
                               </div>
                             </div>
                            </div>
                       <!-- table 끝 -->       
</div>
</section>
<c:import url="../../common/footer.jsp"/>
</body>
</html>