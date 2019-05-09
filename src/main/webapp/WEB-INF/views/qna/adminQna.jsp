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
                                <h4 class="title">1:1문의</h4>
                                <p class="category">
                                <br>
                                <button class="btn btn-info btn-sm">사용자</button>
                                <button class="btn btn-info btn-sm">사업자</button>
                                </p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <th>No</th>
                                    	<th>TITLE</th>
                                    	<th>WRITER</th>
                                    	<th>DATE</th>
                                    	<th>ANWERS</th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                        	<td>1</td>
                                        	<td><a href="adminqnaView.do">1:1문의</a></td>
                                        	<td>하종은</td>
                                        	<td>2019-05-09</td>
                                        	<td>N</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <!-- Pagination 시작 ( 페이징 )-->
							<div style="text-align:center;">
							<ul class="pagination">
							<li><a href="#">맨처음</a></li>
  							<li><a href="#">1</a></li>
  							<li class="active"><a href="#">2</a></li>
  							<li><a href="#">3</a></li>
  							<li><a href="#">4</a></li>
  							<li><a href="#">5</a></li>
  							<li><a href="#">맨끝</a></li>
							</ul>
							</div>
							<!-- Pagination 끝 -->
                            </div>
                        </div>
                    </div>
                    <!-- table 끝 -->
</div>
</div>
</div>
<c:import url="../common/afooter.jsp" />
</body>
</html>