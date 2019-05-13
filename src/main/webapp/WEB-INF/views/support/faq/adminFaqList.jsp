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
<c:import url="../../common/adminHeader.jsp" />
<div class="content">
<div class="container-fluid">
<div class="row">
<div class="col-md-2" style="text-align:center;">
<div>
<button class="btn btn-info btn-sm">결제</button>
</div>
<div>
<button class="btn btn-info btn-sm">상품</button>
</div>
<div>
<button class="btn btn-info btn-sm">계정</button>
</div>
</div>
<div class="col-md-10">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">FAQ</h4>
                                <p class="category">Here is a subtitle for this table</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <th>No</th>
                                    	<th>TITLE</th>
                                    	<th>WRITER</th>
                                    	<th>DATE</th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                        	<td>1</td>
                                        	<td><a href="adminfaqView.do">Dakota Rice</a></td>
                                        	<td>$36,738</td>
                                        	<td>Niger</td>
                                        </tr>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                        <div style="text-align:center;">
                        <button class="btn btn-default btn-sm" onclick="location.href='faqinsert.do'">글쓰기</button>
                        </div>
                    </div>
</div>
</div>
</div>
<c:import url="../../common/afooter.jsp" />
</body>
</html>