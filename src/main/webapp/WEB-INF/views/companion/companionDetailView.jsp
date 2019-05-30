<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js">
</script>

<style>
div{
	 border-bottom: 1px solid rgba(67, 67, 67, 0.8);
}
table tr td {
   border-bottom: 1px solid rgba(67, 67, 67, 0.8);
   "
}

table tr:nth-child(2n) {
   background-color: white;
}

table tr:nth-child(2n+1) {
   background-color: #edf7f8;
}

table tr:nth-child(1) {
   background-color: rgba(67, 67, 67);
}
table tr td div{
	padding:5px;
}
</style>
<meta charset="UTF-8"> 
<title>stravel</title>
</head>
<body>
 <c:import url="../common/header.jsp" />
 <hr>
 <br><br><br>
<h2 align="center">동행 찾기 ${companion.companion_no } 번 글 상세보기</h2>
<br><br>

<div style="width:1032px; margin:0px auto; padding:50px;"><!-- 전체 -->
	
		<div style="width:100%; height:90px;" ><!-- 헤더 -->
			<div>
				<div style="padding:10px; display:table-cell; width:125px;">제 목</div>
				<div style="padding:10px; display:table-cell; width:800px;">${companion.companion_title }</div>
				<div style="padding:10px; display:table-cell; width:100px;">작성일</div>
				<div style="padding:10px; display:table-cell; width:200px;">${companion.companion_date }</div>
			</div>
			<div style="padding:10px; display:table-cell; width:100px;">작성자</div>
			<div style="padding:10px; display:table-cell; width:800px;">${companion.companion_writer }</div>
			<div style="padding:10px; display:table-cell; width:150px;">진행 상황</div>
			<c:if test="${loginMember.user_email eq companion.companion_writer }">
			<div style="padding:10px; display:table-cell; width:200px;">
			<c:if test="${companion.companion_progress eq '1'}">
			<a href="upprogress.do?companion_no=${companion.companion_no }"><button style="background-color:#bcbcbc; color:blue; border:0; width:80px; height:25px; border-radius:5px;">진행중</button></a>
			</c:if>
			</div>
			</c:if>
			<c:if test="${loginMember.user_email != companion.companion_writer }">
			<div style="padding:10px; display:table-cell; width:200px;">
			<c:if test="${companion.companion_progress eq '1'}">
			<button style="background-color:#bcbcbc; color:blue; border:0; width:80px; height:25px; border-radius:5px;">진행중</button>
			</c:if>
			<c:if test="${companion.companion_progress eq '2'}">
			<button style="background-color:#bcbcbc; color:red; border:0; width:80px; height:25px; border-radius:5px;">진행완료</button>
			</c:if>
			</div>	
			</c:if>
		</div><!-- 헤더 -->
		<div style="width:100%; height:400px;"><!-- 바디 -->
		
			${companion.companion_content }
			

		</div><!-- 바디 -->
		<div style="width:100%; "><!-- 풋터-->
		<c:if test="${!empty loginMember and loginMember.user_email eq companion.companion_writer}">
		<div style="padding:10px; display:table-cell;"><a href="compupview.do?companion_no=${companion.companion_no }">수정</a></div>
		<div style="padding:10px; display:table-cell;"><a href="compdelete.do?companion_no=${companion.companion_no }">삭제</a></div>
		</c:if>
		<c:if test="${empty loginMember and loginMember.user_email != companion.companion_writer}">
		<div style="padding:10px; display:table-cell;"><a href="#">수정</a></div>
		<div style="padding:10px; display:table-cell;"><a href="#">삭제</a></div>
		</c:if>	
		<c:if test="${!empty loginMember }">
			<div class="container">
				<form action="compreplyinsert.do?companion_no=${companion.companion_no }" name="companionReply" method="post">
				<br><br>
			<input type="hidden" id="companion_no" name="companion_no" value="${companion.companion_no }"/>
			<input type="hidden" id="companion_reply_writer" name="companion_reply_writer"  value="${loginMember.user_email }"/>
			<div>
				<span><strong>댓글</strong></span>
			</div>
			<div>
			<table class="table">
				<tr>
					<td>
						<textarea style="width:800px;" rows="3" cols="30" id="companion_reply_content" name="companion_reply_content" placeholer="댓글을 입력하세요"></textarea>
						<br>
						<div><input type="submit" value="등록" /></div>
					</td>
				</tr>
			</table>
			</div>
			</form>
		</div>			
		</c:if>		
		<c:forEach items="${companionReply }" var="c" varStatus="status">
		<div style="width: 800px; padding: 5px; margin-top: 5px;
				display:inline-block;"><!-- 댓글리스트 -->
		 	<div  style="padding: 5px; width:500px; display:table-cell;">${c.companion_reply_content }</div>
		 	<div  style="padding: 5px; width:200px; display:table-cell;">${c.companion_reply_writer }</div>
		 	<div  style="padding: 5px; width:100px; display:table-cell;">${c.companion_reply_date }</div>
		 	<div align="right">
		 	<c:if test="${!empty loginMember and loginMember.user_email eq c.companion_reply_writer }">
		 	<div id="update_reply${status.count }" style="display:table-cell; padding: 5px;"><a>수정</a></div>
		 	<div style="display:table-cell; padding: 5px;"><a href="compreplydelete.do?companion_reply_no=${c.companion_reply_no }&companion_no=${c.companion_no}">삭제</a></div>
		 	<div id="updateform${status.count }" style="display:none; width:99%;">
		 	
		 		<form name="replyform${status.count }" action="compreplyupdate.do" method="post" >
		 	<script>
				$(function(){
					$('#update_reply${status.count}').on('click', function (event) {
						$('#updateform${status.count}').css('display', 'block');
					});
				});

			</script>
					<input type="hidden" id="companion_reply_no" name="companion_reply_no" value="${c.companion_reply_no }">
		 			<input type="hidden" id="companion_no" name="companion_no" value="${c.companion_no }">
		 			<textarea id="companion_reply_content" name="companion_reply_content" rows="1" cols="100" maxlength="400"></textarea>
		 			<input type="submit" value="수정" />
		 		</form>
		 	</c:if>	
		 	</div>
		 	</div>
		
		 </c:forEach>
		
		
		</div><!-- 풋터 -->
	
		
	
	
	
</div> <!-- 전체 -->










<br><hr><br>

<div><c:import url="../common/footer.jsp" /></div>

</body>

</html>