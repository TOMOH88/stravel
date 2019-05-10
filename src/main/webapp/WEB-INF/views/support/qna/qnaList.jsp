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
<c:import url="../../common/header.jsp" />
<section class="section-margin">
<div class="container">
<!-- table �역 �작 -->
<div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">1:1문의</h4>
                                <p class="category"></p>
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
                                        	<td><a href="qnalistView.do">1:1문의</a></td>
                                        	<td>하종은</td>
                                        	<td>2019-05-09</td>
                                        	<td>N</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div>
                            <br>
                        <ul class="pagination justify-content-center">
						<li class="page-item"><a class="page-link" href="#">Prev</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
					</div>
                        </div>
                    </div>
                    <!-- table -->
</div> 
</section>
<c:import url="../../common/footer.jsp" />
</body>
</html>