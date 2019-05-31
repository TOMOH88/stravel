<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/flat-icon/font/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">

<style type="text/css">
	h7 {
		display:inline;
	}
	
 table, tr, th, td {
        border: 1px solid #bcbcbc;
    }
    
</style>
<title>stravel</title>
</head>
<body>
<div><c:import url="../common/header.jsp" /></div>
<div style="width:1200px; height: 1200px; margin:0px auto; background:yellow;"><!-- 전체 -->
<br>
	<div align="center"><!-- 헤더 -->
	<h7 style="color:#bcbcbc;"> 이용 규칙 및 상세 내용</h7>
	<h7>  >  </h7>
	<h7 style="color:#blue;"> 확인 및 결제</h7>
	</div>
<hr>
	<div style="width:760px; display:table-cell; background:blue;"><!-- 메인 -->
		<div style="width:740px; margin:0px auto; background:white;">
			<div style="height:300px; padding:30px;"><h2>확인 및 결제하기</h2></div>
			<div style="height:200px; padding:30px;">입력</div>
			<div style="height:200px; padding:30px;">입력</div>
			<div style="height:200px; padding:30px;">
				<table class="table" border="1" >
					<tr>
  						 <th align="left" height="50">결제 방법</th>
					</tr>
					<tr>
   						<th id="ptypetable" align="left">
      						<input type="button" id="card" value="카드">&nbsp;
      						<input type="button" id="trans" value="실시간계좌이체">&nbsp;
      						<input type="button" id="vbank" value="가상계좌">&nbsp;
      						<input type="hidden" id="ptype" name="ptype">
   						</th>
					</tr>
				</table>
			</div>
			<div style="height:100px; padding:30px;">
				<label for="agree">
					<input type="checkbox" id="agree" > 주문하실 상품 및 결제, 주문정보 확인하였으며 이에 동의합니다.(필수) 
				</label>
			</div>
			<div style="height:100px; padding:30px;">
				<button id="order" style="background-color:#bcbcbc; color:blue; border:0; width:120px; height:30px; border-radius:5px;" onclick="pay()">확인 및 결제</button>
			</div>
		</div>
	</div><!-- 메인 -->
	<div style="width:460px; display:table-cell; background:green;"><!-- 사이드 -->
		<div style="width:440px; margin:0px auto; background:white; position:sticky; top:100px;">
			<div style="height:100px;">제목</div><!-- 제목/사진 -->
			<div style="height:100px;">인원</div><!-- 인원 -->
			<div style="height:100px;">날짜</div><!-- 날짜 -->
			<div style="height:100px;">가격</div><!-- 가격 -->
			<div style="height:100px;">총금액</div><!-- 총가격 -->
		</div>	
	</div><!-- 사이드 -->
	

</div><!-- 전체 -->

<script>
function pay(){

   IMP.init('imp99225181');
   
   IMP.request_pay({
       pg : 'html5_inicis',
       pay_method : $("#ptype").val(),
       merchant_uid : 'merchant_' + new Date().getTime(),
       name : '주문명:결제테스트',
       amount : 14000,
       buyer_email : 'iamport@siot.do',
       buyer_name : '구매자이름',
       buyer_tel : '010-1234-5678',
       buyer_addr : '서울특별시 강남구 삼성동',
       buyer_postcode : '123-456'
   }, function(rsp) {
       if ( rsp.success ) {
           var msg = '결제가 완료되었습니다.';
           msg += '고유ID : ' + rsp.imp_uid;
           msg += '상점 거래ID : ' + rsp.merchant_uid;
           msg += '결제 금액 : ' + rsp.paid_amount;
           msg += '카드 승인번호 : ' + rsp.apply_num;
       } else {
           var msg = '결제에 실패하였습니다.';
           msg += '에러내용 : ' + rsp.error_msg;
       }

       alert(msg);
   });
 }
//결제방법 선택

$("#ptype").val($("#card").attr("id"));

$("#card").click(function(){
   $("#ptype").val($("#card").attr("id"));

   $("#card").css("background", "white");
   $("#trans").css("background", "#bcbcbc");
   $("#vbank").css("background", "#bcbcbc");
});

$("#trans").click(function(){
   $("#ptype").val($("#trans").attr("id"));
   
   $("#card").css("background", "#4ddbff");
   $("#trans").css("background", "white");
   $("#vbank").css("background", "#4ddbff");
});

$("#vbank").click(function(){
   $("#ptype").val($("#vbank").attr("id"));
   
   $("#card").css("background", "#4ddbff");
   $("#trans").css("background", "#4ddbff");
   $("#vbank").css("background", "white");
});

//필수체크방식 체크 될 시 버튼 활성화
$("#order").attr("disabled", true);
$("#order").css("background", "white");

$("#agree").change(function(){
	if($("#agree").is(":checked") == true ){
		$("#order").attr("disabled", false);
		$("#order").css("background", "#bcbcbc");
	}else{
		$("#order").attr("disabled", true);
		$("#order").css("background", "white");
	}		
});	

 </script>


<script src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/jquery.ajaxchimp.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/mail-script.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/skrollr.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
<div><c:import url="../common/footer.jsp" /></div>
</body>
</html>