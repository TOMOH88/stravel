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
<c:import url="../common/header.jsp" />
<section class="section-margin">
<div class="card card-image" id="cardimg">
  <!-- Content -->
  <div class="rgba-black-strong py-5 px-4">
    <div class="row d-flex justify-content-center">
    <div class="col-md-2">
	<div class="blog_right_sidebar">
	<aside class="single_sidebar_widget post_category_widget">
                        <h4 class="widget_title">결제</h4>
                        <ul class="list cat-list">
                            <li>
                                <a href="#" class="d-flex">
                                    <p>결제</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="d-flex">
                                    <p>상품</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="d-flex">
                                    <p>계정</p>
                                </a>
                            </li>
                        </ul>
                      </aside>
	</div>
</div>
      <div class="col-md-10 col-xl-8">

        <!--Accordion wrapper-->
        <div class="accordion md-accordion accordion-5" id="accordionEx5" role="tablist"
          aria-multiselectable="true">

          <!-- Accordion card -->
          <div class="card mb-4">

            <!-- Card header -->
            <div class="card-header p-0 z-depth-1" role="tab" id="heading30">
              <a data-toggle="collapse" data-parent="#accordionEx5" href="#collapse30" aria-expanded="true"
                aria-controls="collapse30">
                <i class="fas fa-cloud fa-2x p-3 mr-4 float-left black-text" aria-hidden="true"></i>
                <h4 class="text-uppercase white-text mb-0 py-3 mt-1">
                  Item #1
                </h4>
              </a>
            </div>

            <!-- Card body -->
            <div id="collapse30" class="collapse" role="tabpanel" aria-labelledby="heading30"
              data-parent="#accordionEx5">
              <div class="card-body rgba-black-light white-text z-depth-1">
                <p class="p-md-4 mb-0">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus
                  terry richardson ad squid. 3 wolf moon officia aute,
                  non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch
                  3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda
                  shoreditch et.</p>
              </div>
            </div>
          </div>
          <!-- Accordion card -->

          <!-- Accordion card -->
          <div class="card mb-4">

            <!-- Card header -->
            <div class="card-header p-0 z-depth-1" role="tab" id="heading31">
              <a data-toggle="collapse" data-parent="#accordionEx5" href="#collapse31" aria-expanded="true"
                aria-controls="collapse31">
                <i class="fas fa-comment-alt fa-2x p-3 mr-4 float-left black-text" aria-hidden="true"></i>
                <h4 class="text-uppercase white-text mb-0 py-3 mt-1">
                  Item #2
                </h4>
              </a>
            </div>

            <!-- Card body -->
            <div id="collapse31" class="collapse" role="tabpanel" aria-labelledby="heading31"
              data-parent="#accordionEx5">
              <div class="card-body rgba-black-light white-text z-depth-1">
                <p class="p-md-4 mb-0">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus
                  terry richardson ad squid. 3 wolf moon officia aute,
                  non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch
                  3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda
                  shoreditch et.</p>
              </div>
            </div>
          </div>
          <!-- Accordion card -->

          <!-- Accordion card -->
          <div class="card mb-4">

            <!-- Card header -->
            <div class="card-header p-0 z-depth-1" role="tab" id="heading32">
              <a data-toggle="collapse" data-parent="#accordionEx5" href="#collapse32" aria-expanded="true"
                aria-controls="collapse32">
                <i class="fas fa-cogs fa-2x p-3 mr-4 float-left black-text" aria-hidden="true"></i>
                <h4 class="text-uppercase white-text mb-0 py-3 mt-1">
                  Item #3
                </h4>
              </a>
            </div>

            <!-- Card body -->
            <div id="collapse32" class="collapse" role="tabpanel" aria-labelledby="heading32"
              data-parent="#accordionEx5">
              <div class="card-body rgba-black-light white-text z-depth-1">
                <p class="p-md-4 mb-0">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus
                  terry richardson ad squid. 3 wolf moon officia aute,
                  non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch
                  3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda
                  shoreditch et.</p>
              </div>
            </div>
          </div>
          <!-- Accordion card -->
          
          <!-- Accordion card -->
          <div class="card mb-4">

            <!-- Card header -->
            <div class="card-header p-0 z-depth-1" role="tab" id="heading32">
              <a data-toggle="collapse" data-parent="#accordionEx5" href="#collapse33" aria-expanded="true"
                aria-controls="collapse33">
                <i class="fas fa-cogs fa-2x p-3 mr-4 float-left black-text" aria-hidden="true"></i>
                <h4 class="text-uppercase white-text mb-0 py-3 mt-1">
                  Item #4
                </h4>
              </a>
            </div>

            <!-- Card body -->
            <div id="collapse33" class="collapse" role="tabpanel" aria-labelledby="heading33"
              data-parent="#accordionEx5">
              <div class="card-body rgba-black-light white-text z-depth-1">
                <p class="p-md-4 mb-0">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus
                  terry richardson ad squid. 3 wolf moon officia aute,
                  non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch
                  3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda
                  shoreditch et.</p>
              </div>
            </div>
          </div>
          <!-- Accordion card -->
        </div>

        <!--/.Accordion wrapper-->

      </div>
    </div>
  </div>
  <!-- Content -->
</div>
<!-- Card -->
</section>
<c:import url="../common/footer.jsp" />
</body>
</html>