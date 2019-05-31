<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
</head>
<body>
<
<div class="container">
	<form action="companionReplyForm" name="companionReplyForm" method="post">
	<br><br>
	<div>
		<div>
			<span><strong>댓글</strong></span><span id="companionReplyCnt"></span>
		</div>
		<div>
			<table class="table">
				<tr>
					<td>
						<textarea style="width:800px;" rows="3" cols="30" id="companionReply" placeholer="댓글을 입력하세요"></textarea>
						<br>
						<div>
							<a href="#" onClick="fn_companionReply('${result.code}')" class="btn pull-right btn-success">등록</a>
						</div>
					</td>
				</tr>
			</table>
		</div>	
	</div>
	<input type="hidden" id="companion_no" name="companion_no" value="${result.code }"/>
	</form>
</div>
<div class="container">
	<form id="companionReplyListform" name="companionReplyListform" method="post">
	<div id="companionReplyListform">
	</div>
</div>
<script type="text/javascript">
function fn_companionReplyList(){
	$.ajax({
		type:'GET',
		url:"<c:url value='companionReplyList.do'/>",
		dataType:"json",
		data:$("#companionReplyForm").serialize(),
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data){
			var html = "";
			var companionReplyCnt = data.length;
			
			if(data.lenth > 0){
				for(i=0; i<data.length; i++){
					html += "<div>";
					html += "<div><table class='table'><h6><strong>"+data[i].user_email+"</strong></h6>";
					html += data[i].companion_reply_content + "<tr><td></td></tr>";
					html += "</table></div>";
					html += "</div>";
					
				}
				
			}else{
				html += "<div>";
                html += "<div><table class='table'><h6><strong>등록된 댓글이 없습니다.</strong></h6>";
                html += "</table></div>";
                html += "</div>";
	
			}
			
			$("#companionReplyCnt").html(companionReplyCnt);
			$("#companionReplyList").html(html);
				
			},
			error:function(request, status, error){	
			}
	});
}

</script>
</body>
</html>