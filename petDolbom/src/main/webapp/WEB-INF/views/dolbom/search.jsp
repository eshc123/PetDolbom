<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
=========================================================
Material Kit - v2.0.7
=========================================================

Product Page: https://www.creative-tim.com/product/material-kit
Copyright 2020 Creative Tim (https://www.creative-tim.com/)

Coded by Creative Tim

=========================================================

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. -->
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="${cp}/resources/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${cp}/resources/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    애완동물 돌봄 서비스
  </title>
  <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="${cp}/resources/assets/css/material-kit.css?v=2.0.7" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="${cp}/resources/assets/demo/demo.css" rel="stylesheet" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<style>
  .btn-width{
    width: 90px;
  }
  .btn-width-long{
    width: 180px;
  }
</style>
</head>
 <body class="profile-page sidebar-collapse">
  <nav class="navbar navbar-transparent navbar-color-on-scroll fixed-top navbar-expand-lg" color-on-scroll="100" id="sectionsNav">
    <div class="container">
      <div class="navbar-translate">
        <a class="navbar-brand" href="${cp}/member/login" style="font-family: godik; font-size:30px;">
          애완동물 돌봄 서비스 </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon"></span>
            <span class="navbar-toggler-icon"></span>
            <span class="navbar-toggler-icon"></span>
        </button>
      </div>

      <div class="collapse navbar-collapse">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a href="${cp}/dolbom/search" class="nav-link" style="font-family: godik;">
                  <i class="material-icons">pets</i> 돌봄서비스 신청
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link" style="font-family: godik;">
                  <i class="material-icons">home</i> 우리동네돌봄센터
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link" style="font-family: godik;">
                  <i class="material-icons">child_friendly</i> 돌보미신청
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link" style="font-family: godik;">
                  <i class="material-icons">person</i> 마이페이지
              </a>
            </li>
            <li class="nav-item">
              <a href="${cp}/member/login" class="nav-link" style="font-family: godik;">
                  <i class="material-icons">arrow_back</i> 로그아웃
              </a>
            </li>
          </ul>
      </div>
  </div>
  </nav>
  <div class="page-header header-filter" data-parallax="true" style="background-image: url('${cp}/resources/assets/img/dogcat.jpg');"></div>
  <div class="main main-raised">
    <div class="profile-content">
      <div class="container">
        <div class="row">
         <p class="font-gd" style="font-size: 40px; margin-top: 20px;">돌봄 서비스 </p>
          <div class="col-md-12 ml-auto mr-auto">
            <div class="card card-nav-tabs">
              <div class="card-body ">
                  <div class="col-md-11 ml-auto mr-auto">
                    <input type="checkbox" class="btn-check" id="check_all" autocomplete="off">
                    <label class="btn btn-outline-success btn-width" for="check_all">전체</label>
                    <input type="checkbox" class="btn-check" id="check_gwanak" autocomplete="off">
                    <label class="btn btn-outline-success btn-width" for="check_gwanak" >관악구</label>
                    <input type="checkbox" class="btn-check" id="check_seodaemoon" autocomplete="off">
                    <label class="btn btn-outline-success btn-width" for="check_seodaemoon" >서대문구</label>
                    <input type="checkbox" class="btn-check" id="check_gwanak" autocomplete="off">
                    <label class="btn btn-outline-success btn-width" for="check_gwanak" >관악구</label>
                    <input type="checkbox" class="btn-check" id="check_gwanak" autocomplete="off">
                    <label class="btn btn-outline-success btn-width" for="check_gwanak" >관악구</label>
                    <input type="checkbox" class="btn-check" id="check_gwanak" autocomplete="off">
                    <label class="btn btn-outline-success btn-width" for="check_gwanak" >관악구</label>
                    <input type="checkbox" class="btn-check" id="check_gwanak" autocomplete="off">
                    <label class="btn btn-outline-success btn-width" for="check_gwanak" >관악구</label>
                    <input type="checkbox" class="btn-check" id="check_gwanak" autocomplete="off">
                    <label class="btn btn-outline-success btn-width" for="check_gwanak" >관악구</label>
                    <input type="checkbox" class="btn-check" id="check_gwanak" autocomplete="off">
                    <label class="btn btn-outline-success btn-width" for="check_gwanak" >관악구</label>
                    <input type="checkbox" class="btn-check" id="check_gwanak" autocomplete="off">
                    <label class="btn btn-outline-success btn-width" for="check_gwanak" >관악구</label>
                    <input type="checkbox" class="btn-check" id="check_gwanak" autocomplete="off">
                    <label class="btn btn-outline-success btn-width" for="check_gwanak" >관악구</label>
                    <input type="checkbox" class="btn-check" id="check_gwanak" autocomplete="off">
                    <label class="btn btn-outline-success btn-width" for="check_gwanak" >관악구</label>
                    <input type="checkbox" class="btn-check" id="check_gwanak" autocomplete="off">
                    <label class="btn btn-outline-success btn-width" for="check_gwanak" >관악구</label>
                    <hr>
                    <input type="checkbox" class="btn-check" id="check_all_day" autocomplete="off">
                    <label class="btn btn-outline-success btn-width-long" for="check_all_day" >종일 돌봄 서비스</label>
                    <input type="checkbox" class="btn-check" id="check_part_time" autocomplete="off">
                    <label class="btn btn-outline-success btn-width-long" for="check_part_time" >시간제 돌봄 서비스</label>
                  </div>
                  <div class="col-md-11 ml-auto mr-auto text-center" style="margin-top: 40px;">
                    <button class="btn btn-secondary btn-width">검색</button>
                  </div>
                      
  
                </div>
              </div>
            </div>
            <div class="col-lg-3 ml-auto mr-auto">
              <div class="card">
                <div class="card-body"> 
                  <p class="font-gd" style="font-size: 20px">이름 : </p>
                  <p class="font-gd" style="font-size: 20px">지역 : </p>
                  <div>                  
                    <button class="btn btn-outline-success btn-fab btn-round btn-lg font-gd disabled" style="font-size: 13px;">
                   강아지
                  </button>
                  <button class="btn btn-outline-success btn-fab btn-round btn-lg font-gd disabled" style="font-size: 13px;">
                    고양이
                   </button>
                   <button class="btn btn-outline-success btn-fab btn-round btn-lg font-gd disabled" style="font-size: 13px;">
                    새
                   </button>
                  </div>
                  <div>                  
                    <button class="btn btn-outline-success btn-fab btn-round btn-lg font-gd disabled" style="font-size: 13px;">
                   종일
                  </button>
                  <button class="btn btn-outline-success btn-fab btn-round btn-lg font-gd disabled" style="font-size: 13px;">
                    시간제
                   </button>

                  </div>
                  <div class="col-md-11 ml-auto mr-auto" style="margin-top: 10px;">
                    <a href="#"><button class="btn btn-secondary btn-width font-gd">예약현황</button></a>
                    <a href="#"><button class="btn btn-secondary btn-width font-gd">신청</button></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 ml-auto mr-auto">
              <div class="card">
                <div class="card-body">
                  <p>asd</p>
                </div>
              </div>
            </div>
            <div class="col-lg-3 ml-auto mr-auto">
              <div class="card">
                <div class="card-body">
                  <p>asd</p>
                </div>
              </div>
            </div>
            <div class="col-lg-3 ml-auto mr-auto">
              <div class="card">
                <div class="card-body">
                  <p>asd</p>
                </div>
              </div>
            </div>
          </div>
        </div>
       
        </div>
        
        
        </div>
<footer class="footer footer-default" >
  <div class="container">
    <nav class="float-left">
      <ul>
        <li>
          <a href="https://www.creative-tim.com/">
              Creative Tim
          </a>
        </li>
      </ul>
    </nav>
    <div class="copyright float-right">
        &copy;
        <script>
            document.write(new Date().getFullYear())
        </script>, made with <i class="material-icons">favorite</i> by
        <a href="https://www.creative-tim.com/" target="blank">Creative Tim</a> for a better web.
    </div>
  </div>
</footer>
  <!--   Core JS Files   -->
  <script src="<c:url value="/resources/assets/js/core/jquery.min.js" />" type="text/javascript"></script>
  <script src="<c:url value="/resources/assets/js/core/popper.min.js" />"  type="text/javascript"></script>
  <script src="<c:url value="/resources/assets/js/core/bootstrap-material-design.min.js" />"  type="text/javascript"></script>
  <script src="<c:url value="/resources/assets/js/plugins/moment.min.js" />" ></script>
  <!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
  <script src="<c:url value="/resources/assets/js/plugins/bootstrap-datetimepicker.js" />"  type="text/javascript"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="<c:url value="/resources/assets/js/plugins/nouislider.min.js" />"  type="text/javascript"></script>
  <!--  Google Maps Plugin    -->
  <!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
  <script src="<c:url value="/resources/assets/js/material-kit.js?v=2.0.7" />"  type="text/javascript"></script>
  <script>
    $(document).ready(function() {
      //init DateTimePickers
      materialKit.initFormExtendedDatetimepickers();

      // Sliders Init
      materialKit.initSliders();
    });


    function scrollToDownload() {
      if ($('.section-download').length != 0) {
        $("html, body").animate({
          scrollTop: $('.section-download').offset().top
        }, 1000);
      }
    }
  </script>
</body>

</html>