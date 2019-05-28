<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="utf-8">
<style>
p{
	text-align:left;
}
</style>
<title>stravel</title>
<style>
	#drow{
		background-image: url("${pageContext.request.contextPath }/resources/img/maldives-1993704_1920.jpg");
	}
</style>
</head>
<body>
<c:import url="common/header.jsp" />
 <!--================Search Package section Start =================-->
  <section class="section-margin">
    <div class="container">
      <div class="row" id="drow">
        <div class="col-lg-6 col-xl-5 align-self-center mb-5 mb-lg-0">
          <div class="search-content">
            <h2>Search suitable <br class="d-none d-xl-block"> and affordable plan <br class="d-none d-xl-block"> for your tour</h2>
            <p>Make she'd moved divided air. Whose tree that replenish tone hath own upon them it multiply was blessed is lights make gathering so day dominion so creeping</p>
          </div>
        </div>
        <div class="col-lg-6 col-xl-6 offset-xl-1">
          <div class="search-wrapper">
            <h3>STRAVEL</h3>
            <form class="search-form" action="searchlodgment.do" method="post">
              <div class="form-group">
                <div class="input-group">
                  <input type="text" name="owner_address" class="form-control" placeholder="목적지/위치" required>
                  <div class="input-group-append">
                    <span class="input-group-text"><i class="ti-search"></i></span>
                  </div>
                </div>
              </div>
              <div class="row">
              <div class="col-md-6"><p>체크인</p></div>
              <div class="col-md-6"><p>체크아웃</p></div>
              </div>
              <div class="form-group">
              <div class="row">
              <div class="col-md-6">
                <div class="input-group">
                  <input type="date" class="form-control" name="check_in">
                  <div class="input-group-append">
                    <span class="input-group-text"><i class="ti-notepad"></i></span>
                  </div>
                </div>
                </div>
                <div class="col-md-6">
                <div class="input-group">
                  <input type="date" class="form-control" name="check_out">
                  <div class="input-group-append">
                    <span class="input-group-text"><i class="ti-notepad"></i></span>
                  </div>
                </div>
                </div>
                </div>
              </div>
              <div class="row">
              <div class="col-md-6"><p>성인</p></div>
              <div class="col-md-6"><p>어린이</p></div>
              </div>
              <div class="form-group">
              <div class="row">
              <div class="col-md-6">
                <select name="min_no" id="min_no">
                  <option value="disabled" disabled selected>최소</option>
                  <option value="1">1명</option>
                  <option value="2">2명</option>
                  <option value="3">3명</option>
                  <option value="4">4명</option>
                </select>
                </div>
                <div class="col-md-6">
                <select name="max_no" id="max_no">
                  <option value="disabled" disabled selected>최대</option>
                  <option value="1">1명</option>
                  <option value="2">2명</option>
                  <option value="3">3명</option>
                  <option value="4">4명</option>
                </select>
                </div>
                </div>
              </div>
              <div class="form-group">
                <button class="button border-0 mt-3" type="submit">Search</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--================Search Package section End =================-->
<c:import url="common/footer.jsp" />
</body>
</html>
