<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, 
maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/flat-icon/font/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<!-- 별점 부트스트랩 링크-->
    <!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> 
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"> -->  
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/star-rating.css" media="all" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/theme-krajee-fa.css" media="all" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/theme-krajee-svg.css" media="all" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/theme-krajee-uni.css" media="all" type="text/css"/>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">

	$(document).on('ready',function() {
		//암호와 암호확인의 기록값이 일치하는지 확인
		$("input#userpwd2").blur(function() {
			//포커스가 없어졌을 때
			//console.log("focus 없어짐....");
			var pwd1 = $("#userpwd").val();
			var pwd2 = $("#userpwd2").val();
			if (pwd1 != pwd2) {
				alert("암호와 암호확인이 일치하지 않습니다.\n" + "다시 입력하십시요.");
				$("#userpwd").select();
			}
		});
	});
	function checkValidate() {
		var useremail = $("#useremail").val();
		var userpwd = $("#userpwd").val();
		//이메일과 암호의 글자갯수 확인
		if (!(useremail.length >= 6 && useremail.length <= 40)) {
			alert("이메일의 글자갯수는 6글자이상 40글자이하여야 합니다.");
			$("#useremail").select();
			return false; //submit 실행 안됨.
		}
		if (!(userpwd.length >= 6 && userpwd.length <= 12)) {
			alert("암호의 글자갯수는 6글자이상 12글자이하여야 합니다.");
			$("#userpwd").select();
			return false; //submit 실행 안됨.
		}
		//이메일와 암호의 요구한 글자만 포함 확인
		//영어소문자, 대문자, 숫자, 기호문자(@,_)만 허용
		//정규표현식을 주로 사용함
		for ( var i in useremail) {
			var ch = useremail.charAt(i);
			if (!((ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z')
					|| (ch >= '0' && ch <= '9') || (ch == '@' || ch == '_'))) {
				alert("이메일은 영어소문자와 영어대문자, " + "숫자, 기호문자(@,_)만 사용할 수 있습니다.");
				$("#useremail").select();
				return false;
			}
		}
		for ( var i in userpwd) {
			var ch = userpwd.charAt(i);
			if (!((ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z')
					|| (ch >= '0' && ch <= '9') || (ch == '#' || ch == '_'
					|| ch == '!' || ch == '*'))) {
				alert("암호는 영어소문자와 영어대문자, " + "숫자, 기호문자(#,_,!,*)만 사용할 수 있습니다.");
				$("#userpwd").select();
				return false;
			}
		}
		return true; //submit 실행함.
	}
/* 	//네이버 아이디로 로그인 처리
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "{YOUR_CLIENT_ID}",
			callbackUrl: "{YOUR_REDIRECT_URL}",
		}
	); */
	//정규표현식 사용한 값 검사와 유효성 체크 처리
	function checkValidate2() {
		/*
			정규표현식 작성, 사용방법
			1. var 변수명 = /정규표현식/플래그;
			2. var 변수명 = new RegExp("정규표현식");
			
			if(변수명.test(검사할값)){ 
				정규식을 만족했을 때 처리내용
			}
			
			예 : 입력값이 숫자로만 구성 확인
			var re = /^[0-9]+$/;
			예 : 입력값이 영어소문자와 숫자로만 구성 확인
			    첫글자는 반드시 영어소문자로 시작
			    글자갯수가 4글자이상 12글자이하로 작성
			    \d == [0-9]
				{4, 12} : 4글자이상 12글자이하
			var re = /^[a-z][a-z\d]{4,12}$/;
			예 : 한글로만 2글자 이상
			var re = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힝]{2,}$/;
			
			\w == [a-zA-Z0-9]
			\w-\.
			\.[\w-]{1,3} : .뒤에 영어,숫자가 조합된 글자가 
					1번에서 3번까지 사용 가능함
		 */
		var useremail = $("#useremail").val();
		var userpwd = $("#userpwd").val();
		var re = /^[a-zA-Z][\w\_\#\!\*]{6,12}$/;
		if (!re.test(useremail)) {
			alert("아이디는 영어소문자와 영어대문자, " + "숫자, 기호문자(#,_,!,*)만 사용할 수 있습니다.");
			$("#useremail").select();
			return false;empty
		}
		if (!re.test(userpwd)) {
			alert("암호는 영어소문자와 영어대문자, " + "숫자, 기호문자(#,_,!,*)만 사용할 수 있습니다.");
			$("#userpwd").select();
			return false;
		}
		return true;
	}
	function checkId() {
		//자바스크립트에서 서블릿으로 서비스요청은 할 수 있음
		//서블릿이 전송하는 결과값을 받을 수 없음
		//서블릿은 처리하고 나서 성공/실패에 대한 뷰를 
		//선택해서 내보내는 방법만 사용 가능함
		/* location.href = "/first/idchk?useremail=" + 
				document.getElementById("useremail").value; */
		//서비스를 요청한 페이지가 바뀌지 않게 하면서
		//네트워크 입출력 방식으로 서블릿이 처리한 결과를
		//자바스크립트가 받아서 사용하려면, ajax 를 사용해야 함
		//ajax 는 자바스크립트를 사용해도 되고(코드가 복잡함), 
		//jQuery 를 사용해도 됨(코드가 간단함).
		//jQuery.ajax() 사용
		//웹서버 컨트롤러와 아이디 중복 체크 확인용 통신 처리
		$.ajax({
			url : "idchk.do",
			type : "post",
			data : {
				useremail : $("#useremail").val()
			},
			success : function(data) {
				console.log("success : " + data);
				if (data == "ok") {
					alert("사용 가능한 아이디입니다.");
					$("#username").focus();
				} else {
					alert("이미 존재하는 아이디입니다.\n" + "다시 입력하십시요.");
					$("#useremail").select();
				}
			},
			error : function(jqXHR, textstatus, errorthrown) {
				console.log("error : " + jqXHR + ", " + textstatus + ", "
						+ errorthrown);
			}
		});
		return false; //submit 못하게 함
	}
	
	function moveLogin(){
		alert("로그인을 해주세요");
	}
	
</script>
    
<title>header</title>
<style>
/*  div{ 
	border:1px solid black;
}  */
/* #map {
	height: 400px;
	width: 100%;
} */
</style>
</head>
<body>
<!--================ Header Menu Area start =================-->
<header class="header_area">
    <div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container box_1620">
          <a class="navbar-brand logo_h" href="main.do"><img src="${pageContext.request.contextPath }/resources/img/logo.png" alt=""></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
            <ul class="nav navbar-nav menu_nav justify-content-end">
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">고객센터</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="notice.do">공지사항</a></li>
                  <li class="nav-item"><a class="nav-link" href="faqlist.do">FAQ</a></li>
                  <li class="nav-item"><a class="nav-link" href="qnalist.do">1:1문의</a></li>
               	</ul>
							</li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">커뮤니티</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="comp.do">동행찾기</a></li>
                  <li class="nav-item"><a class="nav-link" href="pay1.do">결제뷰</a></li>
                </ul>
							</li>			
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">정보</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="roomList.do">숙박</a></li>
                  <li class="nav-item"><a class="nav-link" href="touristspot.do">관광지</a></li>
                  <li class="nav-item"><a class="nav-link" href="restaurantlist.do">식당</a></li>
                </ul>
                <c:if test="${!empty loginMember }">
                <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">마이페이지</a>
                <ul class="dropdown-menu">
                <c:if test="${!empty loginMember }">
                  <li class="nav-item"><a class="nav-link" href="myinfo.do?uno=${loginMember.user_no }">개인정보수정</a></li>
                  </c:if>
                  <c:if test="${empty loginMember }">
                  <li class="nav-item"><a class="nav-link" onclick="moveLogin();">개인정보수정</a></li>
                  </c:if>
                </ul>
				</li>
				</c:if>
              <li class="nav-item">
								<c:if test="${empty loginMember and empty loginOwner}">
									<button type="button" class="btn btn-info" data-toggle="modal"
										data-target="#modal">
										<b>회원가입</b>
									</button>
									<button type="button" class="btn btn-info" data-toggle="modal"
										data-target="#login">
										<b>로그인</b>
									</button>
								</c:if>
								<c:if test="${!empty loginMember }">
									<button type="button" class="btn btn-info" data-toggle="modal"
										data-target="#modal">
										${loginMember.user_name }님 &nbsp;
										<a href="logout.do">로그아웃</a>
									</button>								
								</c:if>
								<c:if test="${!empty loginOwner }">
									<button type="button" class="btn btn-info" data-toggle="modal"
										data-target="#modal">
										${loginOwner.owner_name }님 &nbsp;
										<a href="logout.do">로그아웃</a>
									</button>								
								</c:if>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<br>
	
<!--  회원가입 시작 -->
<div class="modal fade" id="modal" role="dialog" style="display:none;">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="text-primary">S.travel 회원가입</h3>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<ul class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" href="#enroll">사용자 회원가입</a></li>
						<li class="active"><a data-toggle="tab" href="#business">사업자 회원가입</a></li>
					</ul>
					<div class="tab-content">
				<div id="enroll" class="tab-pane in active">
					<article class="card-body">
						<!-- 여기에 회원가입 코드작성 -->
						<!-- <p>
							<a href="" class="btn btn-block btn-twitter"> 
								<i class="fab fa-twitter"></i>&nbsp;&nbsp;&nbsp;트위터 계정으로 로그인
							</a> 
							<a href="" class="btn btn-block btn-facebook"> 
								<i class="fab fa-facebook-f"></i>&nbsp;&nbsp;&nbsp;페이스북 계정으로 로그인
							</a>
						</p> -->
				<form action="minsert.do" method="post">
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> 
							 <i class="fa fa-envelope"></i>
							</span>
						</div>
						<input name="user_email" id="useremail" class="form-control"	placeholder="이메일을 입력하세요" type="email" required>
					</div>
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> 
									<i class="fa fa-lock"></i>
								</span>
							</div>
							<input class="form-control" name="user_password" id="userpwd"	placeholder="비밀번호를 입력하세요" type="password" required>
						</div>
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> 
									<i class="fa fa-lock"></i>
								</span>
							</div>
							<input class="form-control" id="userpwd2" placeholder="비밀번호를 다시입력하세요" type="password" required>
						</div>
							<div class="form-group input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"> <i class="fa fa-user"></i>
									</span>
								</div>
								<input name="user_name" id="username" class="form-control" placeholder="이름을 입력하세요" type="text" required>
							</div>
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> 
									<i class="fa fa-phone"></i>
								</span>
							</div>
								<input name="user_phone" id="phone" class="form-control"	placeholder="연락처를 입력하세요" type="text">
						</div>
							<div class="form-group input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"> 
										<i class="fa fa-birthday-cake"></i>
									</span>
								</div>
								<input name="age" id="age" min="16" max="99" class="form-control" placeholder="나이를 입력하세요" type="number" required>
							</div>
						<div class="form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> 
									<i class="fa fa-male"></i>
									<i class="fa fa-female"></i>
								</span>
							</div>
							<label class="form-check form-check-inline"> 
								<input class="form-check-input" type="radio" name="gender" value="M">
								<span class="form-check-label"> 남성 </span>
							</label> 
							<label class="form-check form-check-inline"> 
							 <input class="form-check-input" type="radio" name="gender" value="F">
								<span class="form-check-label"> 여성</span>
							</label>
						</div>
							<div class="form-group"><br>
								<button type="submit" class="btn btn-primary btn-block">계정 생성</button>
							</div><br>
						<p class="text-center"> 계정이 있으신가요? 
							<a href="#login">로그인</a>
						</p>
						</form>
						</article>
					</div>
					<div id="business" class="tab-pane fade" style="display:none;">
					<article class="card-body">
							<!-- Login Form Code Here -->
							<form action="binsert.do" method="post">
						  <div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> 
							 <i class="fa fa-envelope"></i>
							</span>
						</div>
						<input type="number" name="owner_license_no" class="form-control"	placeholder="아이디(사업자번호) 입력하세요" required>
					</div>
					<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> 
									<i class="fa fa-lock"></i>
								</span>
							</div>
							<input class="form-control" name="owner_password" id="owner_password"	placeholder="비밀번호를 입력하세요" type="password" required>
						</div>
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> 
									<i class="fa fa-lock"></i>
								</span>
							</div>
							<input class="form-control" id="owner_password1" placeholder="비밀번호를 다시입력하세요" type="password" required>
						</div>
						<div class="form-group input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"> <i class="fa fa-user"></i>
									</span>
								</div>
								<input name="owner_name" class="form-control" placeholder="대표자명을 입력하세요" type="text" required>
							</div>
							<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> 
									<i class="fa fa-phone"></i>
								</span>
							</div>
								<input name="owner_companyName" class="form-control"	placeholder="호텔(숙박) 명을 입력하세요" type="text">
						</div>
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> 
									<i class="fa fa-phone"></i>
								</span>
							</div>
								<input name="owner_telephone" class="form-control"	placeholder="휴대전화를 입력하세요" type="text">
						</div>
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> 
									<i class="fa fa-phone"></i>
								</span>
							</div>
								<input name="owner_phone" class="form-control"	placeholder="대표번호를 입력하세요" type="text">
						</div>
						  <div style="text-align:center;">
						  <br>
						    <input type="submit" value="사업자 회원가입" class="btn btn-info btn-sm">
						    </div>
						    </form>
						  </article>
						 </div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- <div class="modal-footer"></div> -->


	<!-- 로그인 코드작성 -->
	<div class="modal fade" id="login" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="text-primary">S.Travel 로그인</h3>
					<button type="button" class="close" data-dismiss="login">&times;</button>					
				</div>
				<div class="modal-body">
					<ul class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" href="#home">사용자 로그인</a></li>
						<li><a data-toggle="tab" href="#login1">사업자 로그인</a></li>
					</ul>
					<div class="tab-content">
						<div id="home" class="tab-pane in active">

							<article class="card-body">
								
								<form action="login.do" method="post">
									<div class="form-group">
										<!-- <input name="useremail" class="form-control"
											placeholder="이메일을 입력하세요" type="email"> -->
										<input type="text" name="user_email" placeholder="이메일을 입력하세요"
											class="form-control">
									</div>
									<div class="form-group">
										<!-- <input name="userpwd" class="form-control"
											placeholder="비밀번호를 입력하세요" type="password"> -->
										<input type="password" name="user_password" placeholder="비밀번호를 입력하세요"
											class="form-control">
									</div>
									<div class="row">
										<div>
											<div class="form-group"><br>
												<button type="submit" value="로그인" class="btn btn-primary btn-block">로그인</button>
											</div>
										</div>

									</div>
								</form>
							</article>
						</div>
						<div id="login1" class="tab-pane fade" style="display:none;">
							 <form action="ologin.do" method="post">
							<!-- Login Form Code Here -->
						  <div class="form-group">
						    <input type="text" placeholder="사업자 등록번호를 입력하십시요" name="owner_license_no" />
						    <input type="password" placeholder="비밀번호를 입력하십시요" name="owner_password" />
						    <button type="submit" class="btn btn-primary btn-block"> 사업자 로그인</button>
						  </div>
						  </form>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

						<div id="login1" class="tab-pane fade" style="display:none;">
							<!-- Login Form Code Here -->
						  <form action="ologin.do" method="post">
									<div class="form-group">
										<input type="text" placeholder="사업자 등록번호를 입력하세요?"
											class="form-control" name="owner_license_no">
									</div><br>
									<div class="form-group">
										<!-- <input name="userpwd" class="form-control"
											placeholder="비밀번호를 입력하세요" type="password"> -->
										<input type="password" placeholder="비밀번호를 입력하세요"
											class="form-control" name="owner_password">
									</div>
										<div>
											<div class="form-group"><br>
												<button type="submit" value="로그인" class="btn btn-primary btn-block">로그인</button>
											</div>
										</div>
								</form>
						</div>
					


	<!--================Header Menu Area =================-->
<script src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.ajaxchimp.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/mail-script.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/skrollr.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery-1.11.0.min.js"></script>
</body>
</html>