<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@media (max-width:992px){
	#mdiv{
		width:900px;
		margin:150px auto;
	}
	#rlistimg{
	 	width:243px;
	 	height:243px;
}
	#rlisttext{
		width:243px;
		height:81px;
	}
	#rlist{
		FLOAT:LEFT;
		width:33.3%;
	}
}
@media (max-width:730px){
	#mdiv{
		width:650px;
		margin:150px auto;
	}
	#rlist{
		FLOAT:LEFT;
		width:50%;
	}
}
@media (min-width:992px){
	#mdiv{
		width:1110px; 
		margin:0px auto;
	}
	#rlistimg{
	 	width:300px;
	 	height:300px;
}
	#rlisttext{
		width:300px;
		height:100px;
	}
	#rlist{
		FLOAT:LEFT;
		width:33.3%;
	}
}

	
	#rlist > div {
	 margin:0 auto;
	}
</style>
</head>
<body>
<section class="section-margin">
	<c:import url="../common/header.jsp" />
</section>
<div> <!-- maindiv -->	
	<div id="mdiv"  style="border:1px solid black; ">
		<form action="">
		<div id="sdiv" style="width:100%; height:50px;padding:5px; border:1px solid black;"><!-- 검색 필터링 공간 -->
			<input type="text" name="sname">
		</div>
		</form>
		<div id="rlist" style="margin-top:20px;">
			<div style="border:1px solid black;" id="rlistimg"><img src=""></div>
			<div style="border: 1px solid black;padding:10px;"id="rlisttext">
				<div style="font-size: x-small;">숙소종류</div>
				<div style="font-size: small; font-weight: bold;">숙소명</div>
				<div style="font-size: x-small;">가격</div>
				<div style="font-size: x-small;">평점</div>
			</div>
			</div>
		<div  id="rlist" style="margin-top:20px;">
			<div style="border:1px solid black;" id="rlistimg"><img src=""></div>
			<div style="border: 1px solid black;padding:10px;"id="rlisttext">
				<div style="font-size: x-small;">숙소종류</div>
				<div style="font-size: small; font-weight: bold;">숙소명</div>
				<div style="font-size: x-small;">가격</div>
				<div style="font-size: x-small;">평점</div>
			</div>
		</div>
		<div id="rlist" style="margin-top:20px;">
			<div style="border:1px solid black;" id="rlistimg"><img src=""></div>
			<div style="border: 1px solid black;padding:10px;"id="rlisttext">
				<div style="font-size: x-small;">숙소종류</div>
				<div style="font-size: small; font-weight: bold;">숙소명</div>
				<div style="font-size: x-small;">가격</div>
				<div style="font-size: x-small;">평점</div>
			</div>
		</div>
		<div id="rlist" style="margin-top:20px;">
			<div style="border:1px solid black;" id="rlistimg"><img src=""></div>
			<div style="border: 1px solid black;padding:10px;"id="rlisttext">
				<div style="font-size: x-small;">숙소종류</div>
				<div style="font-size: small; font-weight: bold;">숙소명</div>
				<div style="font-size: x-small;">가격</div>
				<div style="font-size: x-small;">평점</div>
			</div>
		</div>
		<div id="rlist" style="margin-top:20px;">
			<div style="border:1px solid black;" id="rlistimg"><img src=""></div>
			<div style="border: 1px solid black;padding:10px;"id="rlisttext">
				<div style="font-size: x-small;">숙소종류</div>
				<div style="font-size: small; font-weight: bold;">숙소명</div>
				<div style="font-size: x-small;">가격</div>
				<div style="font-size: x-small;">평점</div>
			</div>
		</div>
		<div id="rlist" style="margin-top:20px;">
			<div style="border:1px solid black;" id="rlistimg"><img src=""></div>
			<div style="border: 1px solid black;padding:10px;"id="rlisttext">
				<div style="font-size: x-small;">숙소종류</div>
				<div style="font-size: small; font-weight: bold;">숙소명</div>
				<div style="font-size: x-small;">가격</div>
				<div style="font-size: x-small;">평점</div>
			</div>
		</div>
	</div>
	<div><!-- 페이징처리공간 -->
	</div>
</div>

</body>
</html>