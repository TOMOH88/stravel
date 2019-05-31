<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>stravel</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
</script>
</head>
<style>
/* div{
	border:1px solid black;
} */

#cardimg{
	background-image:url(https://mdbootstrap.com/img/Photos/Horizontal/Work/4-col/img%20%2814%29.jpg);
}

.accordion.md-accordion.accordion-5 .card .card-header {
    background-color: white;
    -webkit-transition: .3s;
    -o-transition: .3s;
    transition: .3s;
}

.accordion.md-accordion.accordion-5 .card {
    background-color: transparent;
}

.rgba-black-strong, .rgba-black-strong:after {
    background-color: rgba(0,0,0,.7);
}

.justify-content-center {
    -ms-flex-pack: center!important;
    justify-content: center!important;
}

.md-accordion .card .card-header a {
    -webkit-transition: ease-in-out .3s;
    -o-transition: ease-in-out .3s;
    transition: ease-in-out .3s;
}

.collapse:not(.show) {
    display: none;
}

.card {
    -webkit-box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);
    box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);
    border: 0;
    font-weight: 400;
}

.accordion.md-accordion.accordion-1 .card .card-header, .accordion.md-accordion.accordion-2 .card .card-header, .accordion.md-accordion.accordion-4 .card .card-header, .accordion.md-accordion.accordion-5 .card .card-header {
    border: 0;
}

</style>
<body>
<c:import url="../../common/header.jsp" />
<section class="section-margin">
<!-- <div class="card card-image" id="cardimg"> -->
  <!-- Content -->
<!--   <div class="rgba-black-strong py-5 px-4"> -->
    <div class="row d-flex justify-content-center">
    <div class="col-md-2">
	<div class="blog_right_sidebar">
	<aside class="single_sidebar_widget post_category_widget">
                        <h4 class="widget_title"><a href="faqlist.do">FAQ</a></h4>
                        <ul class="list cat-list">
                            <li>
                                <a href="faqListCategory.do?cate=C001" class="d-flex">
                                    <p>결제</p>
                                </a>
                            </li>
                            <li>
                                <a href="faqListCategory.do?cate=C002" class="d-flex">
                                    <p>상품</p>
                                </a>
                            </li>
                            <li>
                                <a href="faqListCategory.do?cate=C003" class="d-flex">
                                    <p>계정</p>
                                </a>
                            </li>
                        </ul>
                      </aside>
	</div>
</div>
      <div class="col-md-10 col-xl-8">
      <h3>결제</h3>
      <br>
      <table>
      <c:forEach items="${pay}" var="pay">
      <tr><td><p><h4><a href="faqView.do?faq_no=${pay.faq_no }">${pay.faq_title }</a></h4></td></tr>
      </c:forEach>
      </table>
      <hr>
      <h3>상품</h3>
      <br>
      <table>
      <c:forEach items="${item}" var="item">
      <tr><td><p><h4><a href="faqView.do?faq_no=${item.faq_no }">${item.faq_title }</a></h4></td></tr>
      </c:forEach>
      </table>
      <hr>
      <h3>계정</h3>
      <br>
      <table>
      <c:forEach items="${user}" var="user">
      <tr><td><p><h4><a href="faqView.do?faq_no=${user.faq_no }">${user.faq_title }</a></h4></td></tr>
      </c:forEach>
      </table>
      <br>
      </div>
    </div>
<!--   </div> -->
  <!-- Content -->
<!-- </div> -->
<!-- Card -->
</section>
<c:import url="../../common/footer.jsp" />
</body>
</html>