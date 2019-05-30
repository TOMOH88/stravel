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
<div class="container">
<div class="row">
<!-- table 영역 시작 -->
<div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h3 class="title">${owner.owner_name } 사업자 상세 정보</h3>
                                <p class="category"></p>
                            </div>
                            <hr>
							<div> 사업자 등록번호 : <input type="text" value="${owner.owner_license_no }" /></div><hr>
							<div> 업체명 : <input type="text" value="${owner.owner_companyName }" /></div><hr>
							<div> 대표 전화번호 : <input type="text" value="${owner.owner_telephone }" /></div><hr>
							<div> 전화번호 : <input type="text" value="${owner.owner_phone }" /></div><hr>
							<div> 계좌번호 : <input type="text" value="${owner.owner_account }" /></div><hr>
							<div> 주소 : <input type="text" value="${owner.owner_address }" /></div><hr>
							<div> 숙박 종류 : <input type="text" value="${owner.owner_category }" /></div><hr>
							<form action="ownerApprove.do" method="post">
							<div> 승인 여부 :
							<c:if test="${owner.owner_approve eq '승인' }">
							<select name="owner_approve">
								<option name="owner_approve" value="승인" selected="selected">승인</option>
								<option name="owner_approve" value="비승인">비승인</option>
							</select>
							</c:if>
							<c:if test="${owner.owner_approve eq '비승인' }">
							<select name="owner_approve">
								<option name="owner_approve" value="승인" >승인</option>
								<option name="owner_approve" value="비승인"selected="selected">비승인</option>
							</select>
							</c:if>
							<input type="hidden" name="owner_no" value="${owner.owner_no }">
							<input type="submit" value="등급 변경"></div></form><hr>				
</div>
</div>
</div>
</div>
</div>

<c:import url="../common/afooter.jsp" />
</body>
</html>