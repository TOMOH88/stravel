<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js">
</script>

<meta charset="UTF-8"> 
<title>stravel</title>
</head>
<body>
 <c:import url="../common/header.jsp" />
 <hr>
 <br><br><br>
<h2 align="center">동행 찾기 ${companion.companion_no } 번 글 상세보기</h2>
<br><br>

<div style="width:1032px;   border:1px solid #bcbcbc;margin:0px auto; padding:50px;"><!-- 전체 -->
	
		<div style="width:100%; height:90px; background:yellow;" ><!-- 헤더 -->
			<div>
				<div style="padding:10px; display:table-cell; width:125px;">제 목</div>
				<div style="padding:10px; display:table-cell; width:800px;">${companion.companion_title }</div>
				<div style="padding:10px; display:table-cell; width:100px;">작성일</div>
				<div style="padding:10px; display:table-cell; width:200px;">${companion.companion_date }</div>
			</div>
			<div style="padding:10px; display:table-cell; width:100px;">작성자</div>
			<div style="padding:10px; display:table-cell; width:200px;">${companion.user_email }</div>
		</div><!-- 헤더 -->
		<div style="width:100%; height:400px; background:green;"><!-- 바디 -->
			<div><!-- 내용만 -->
			<div style="padding:10px;">${companion.companion_content }</div>
			</div>

		</div><!-- 바디 -->
		<div style="width:100%; "><!-- 풋터-->
			<div class="container">
				<form action="compreplyinsert.do?companion_no=${companion.companion_no }" name="companionReply" method="post">
				<br><br>
			<input type="hidden" id="companion_no" name="companion_no" value="${companion.companion_no }"/>
			<input type="hidden" id="companion_reply_ref" name="companion_reply_ref" value="0">
			<input type="hidden" id="companion_reply_lev" name="companion_reply_lev" value="0">
			<input type="text" id="user_email" name="user_email" />
			<div>
				<span><strong>댓글</strong></span>
			</div>
			<div>
			<table class="table">
				<tr>
					<td>
						<textarea style="width:800px;" rows="3" cols="30" id="companion_reply_content" name="companion_reply_content" placeholer="댓글을 입력하세요"></textarea>
						<br>
						<div>
							<input type="submit" value="등록" />
						</div>
					</td>
				</tr>
			</table>
		</div>	
	
	
	</form>
</div>			
		
		<c:forEach items="${companionReply }" var="c" varStatus="status">
		<div style="border: 1px solid #bcbcbc; width: 800px; padding: 5px; margin-top: 5px;
				margin-left:<c:out value="${20 * c.companion_reply_lev }"/>px; display:inline-block;"><!-- 댓글리스트 -->
		 	<div  style="padding: 5px; width:500px; display:table-cell;">${c.companion_reply_content }</div>
		 	<div  style="padding: 5px; width:200px; display:table-cell;">${c.user_email }</div>
		 	<div  style="padding: 5px; width:100px; display:table-cell;">${c.companion_reply_date }</div>
		 	<div align="right">
		 	<div id="re_reply${status.count }" style="display:table-cell; padding: 5px;"><button>댓글</button></div>
		 	<div style="display:table-cell; padding: 5px;"><button>수정</button></div>
		 	<div style="display:table-cell; padding: 5px;"><button>삭제</button></div>
		 	<div id="replyform${status.count }" style="display:none; width:99%;">

		 		<form name="replyform${status.count }" action="compRereplyinsert.do" method="post" >
		 	<script>
				$(function(){
					$('#re_reply${status.count}').on('click', function (event) {
						$('#replyform${status.count}').css('display', 'block');
					});
				});

			</script>
		 			<input type="hidden" id="companion_no" name="companion_no" value="${c.companion_no }">
		 			<input type="hidden" id="companion_reply_ref" name="companion_reply_ref" value="${c.companion_reply_ref}">
		 			<a>${c.companion_reply_ref }</a>
		 			<input type="text" id="user_email" name="user_email" size="20" maxlength="30"><br>
		 			<textarea id="companion_reply_content" name="companion_reply_content" rows="1" cols="100" maxlength="400"></textarea>
		 			<input type="submit" value="등록" />
		 		</form>
		 	</div>
		 	</div>
		</div>
		 </c:forEach>
		
		
		</div><!-- 풋터 -->
	
		
	
	
	
</div> <!-- 전체 -->










<br><hr><br>

<div><c:import url="../common/footer.jsp" /></div>

</body>

</html>