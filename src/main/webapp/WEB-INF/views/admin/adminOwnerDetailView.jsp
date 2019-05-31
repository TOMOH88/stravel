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
                                        	<td>사업자 등록번호 : <input type="text" value="${owner.owner_license_no }" class="form-control"></td>
                                        	</tr>
                                        	<tr>
                                        	<td>업체명 : <input type="text" value="${owner.owner_companyName }" class="form-control"></td>
                                        	</tr>
                                        	<td>대표 전화번호 : <input type="text" value="${owner.owner_telephone }" class="form-control"></td>
                                        	<tr>
                                        	<td>전화번호 : <input type="text" value="${owner.owner_phone }" class="form-control"></td>
                                        	</tr>
                                        	<tr>
                                        	<td>계좌번호 : <input type="text" value="${owner.owner_account }" class="form-control"></td>
                                        	</tr>
                                        	<tr>
                            				<td>
                            				주소 : <input type="text" value="${owner.owner_address }" class="form-control">
                            				</td>
                                        </tr>
                                        <tr>
                                        <td>숙박 종류 : <input type="text" value="${owner.owner_category }" class="form-control"></td>
                                        </tr>
                                        <form action="ownerApprove.do" method="post">
                                        <tr>
                                        <td>
                                          	승인 여부 :
							<c:if test="${owner.owner_approve eq '승인' }">
							<select name="owner_approve" class="form-control" style="width:100px;">
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
							<input type="submit" value="등급 변경" class="btn btn-default btn-sm">
							</td>
                                        </tr>
                                        </form>                          
                                    </tbody>
                                </table>
                                <div class="row">
                                	<div class="col-xl-12" align="center"><button onclick="location.href='ownerManager.do'" class="btn btn-default btn-sm">목록가기</button></div>
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