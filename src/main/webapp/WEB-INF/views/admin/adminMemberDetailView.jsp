 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<style type="text/css">

</style>
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
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <th>회원 번호 ${member.user_no }번 정보</th>
                                    </thead>
                                    <tbody>	
                                    	<tr>
                                        	<td>사용자 아이디 : <input type="text" value="${member.user_email }" name="user_email" class="form-control"></td>
                                        	</tr>
                                        	<tr>
                                        	<td>사용자 이름 : <input type="text" value="${member.user_name }" name="user_email" class="form-control"></td>
                                        	</tr>
                                        	<td>사용자 전화번호 : <input type="text" value="${member.user_phone }" name="user_phone" class="form-control"></td>
                                        	<tr>
                                        	<td>사용자 성별 : <c:if test="${member.gender eq 'M' }">남</c:if> <c:if test="${member.gender eq 'F' }">여</c:if></td>
                                        	</tr>
                                        	<tr>
                                        	<td><c:if test="${!empty member.user_picture  }">
                                        	</tr>
                                        	<tr>
                            <img alt="${member.user_picture }" src="${ pageContext.request.contextPath }/resources/files/memberProfile/${member.user_picture }" width="200" height="200">
                            </c:if></td>
                                        </tr>                                   
                                    </tbody>
                                </table>
                                <div class="row">
                                	<div class="col-xl-12" align="center"><button onclick="location.href='memberManager.do'" class="btn btn-default btn-sm">목록가기</button></div>
                                </div>
							</div>
</div>
</div>
</div>
</div>
</div>
<c:import url="../common/afooter.jsp" />
</body>
</html>