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
        <a class="navbar-brand" href="${cp}/member/main" style="font-family: godik; font-size:30px;">
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
              <a href="${cp}/center/info" class="nav-link" style="font-family: godik;">
                  <i class="material-icons">home</i> 우리동네돌봄센터
              </a>
            </li>
            <li class="nav-item">
              <a href="${cp}/dolbom/dolbomi" class="nav-link" style="font-family: godik;">
                  <i class="material-icons">child_friendly</i> 돌보미신청
              </a>
            </li>
            <li class="nav-item">
              <a href="${cp}/member/mypage" class="nav-link" style="font-family: godik;">
                  <i class="material-icons">person</i> 마이페이지
              </a>
            </li>
            <li class="nav-item">
              <a href="${cp}/member/logout" class="nav-link" style="font-family: godik;">
                  <i class="material-icons">arrow_back</i> 로그아웃
              </a>
            </li>
          </ul>
      </div>
  </div>
  </nav>
  <!-- main content  -->
  <div class="page-header header-filter" data-parallax="true" style="background-image: url('${cp}/resources/assets/img/dogcat.jpg');"></div>
  <div class="main main-raised">
    <div class="profile-content">
      <div class="container">
        <div class="row">
           <h2 class="font-gd" style="margin-top: 20px;">시간제 돌봄 서비스 신청서 작성</h2>
          <div class="col-md-12 ml-auto mr-auto">
          
          <form action="${cp}/dolbom/apply" method="post">
            <div class="card card-nav-tabs">
              <div class="card-body">
              	<h3 style="font-weight: bold; margin-top:10px; margin-bottom:20px; margin-left:10px;">봉사자 정보</h3>
                  <div class="col-md-11 ml-auto mr-auto">
                    <div class="row">
	                    <div class="col-2">
	                    <p class="font-gd" style="font-size: 20px; font-weight: bold;">이름 : </p>
	                  	</div>
	                  	<div class="col-4">
	                  	<input type = "text" name="dolbomiId" class="form-control" style="font-family: godik;" readOnly value="${dolbomiId}"/>
	                  	
	                  	
	                  	</div>
                  	</div>
                  	<div class="row">
	                    <div class="col-2">
	                    <p class="font-gd" style="font-size: 20px; font-weight: bold;">아이디 : </p>
	                  	</div>
	                  	<div class="col-4">
	                  	<p class="font-gd" style="font-size: 20px;">
	                  	${partTime.name}
	                  	</p>
	                  	</div>
                  	</div>
                  	<div class="row">
	                  	<div class="col-2">
	                  	<p class="font-gd" style="font-size: 20px; font-weight: bold;">지역 : </p>
	                  	</div>
	                  	<div class="col-4">
	                  	<p class="font-gd" style="font-size: 20px;">
	                  	${partTime.address}
	                  	</p>
	                  	</div>
	                  </div>
	                <div class="row">
	                  	<div class="col-2">
	                  	<p class="font-gd" style="font-size: 20px; font-weight: bold;">돌봄 애완동물 : </p>
	                  	</div>
	                  	<div class="col-4">
	                  	<p class="font-gd" style="font-size: 20px;">
	                  	${pets}
	                  	</p>
	                  	</div>
	                  </div>
	                <div class="row">
	                  	<div class="col-2">
	                  	<p class="font-gd" style="font-size: 20px; font-weight: bold;">시간 : </p>
	                  	</div>
	                  	<div class="col-4">
	                  	<p class="font-gd" style="font-size: 20px;">
	                  	${partTime.time}</p>
	                  	</div>
	                  </div>
                  </div>
                </div>
                
              
              </div>
              <div class="card card-nav-tabs">
              <div class="card-body ">
              
              <h3 style="font-weight: bold; margin-top:10px; margin-bottom:20px; margin-left:10px;">신청자 정보</h3>
                  <div class="col-md-11 ml-auto mr-auto">
                    <div class="row">
	                    <div class="col-2">
	                    <p class="font-gd" style="font-size: 20px; font-weight: bold;">이름 : </p>
	                  	</div>
	                  	<div class="col-4">
	                  	<p class="font-gd" style="font-size: 20px;">
	                  	${member.name}
	                  	<p>
	                  	</div>
                  	</div>
                  	<div class="row">
	                  	<div class="col-2">
	                  	<p class="font-gd" style="font-size: 20px; font-weight: bold;">전화번호 : </p>
	                  	</div>
	                  	<div class="col-4">
	                  	<p class="font-gd" style="font-size: 20px;">
	                  	${member.phone_num}
	                  	<p>
	                  	</div>
                  	</div>
                  	<div class="row">
	                  	<div class="col-2">
	                  	<p class="font-gd" style="font-size: 20px; font-weight: bold;">주소 : </p>
	                  	</div>
	                  	<div class="col-4">
	                  	<p class="font-gd" style="font-size: 20px;">
	                  	${member.address}
	                  	<p>
	                  	</div>
                  	</div>
                  	<div class="row">
	                  	<div class="col-2">
	                  	<p class="font-gd" style="font-size: 20px; font-weight: bold;">날짜 / 시간 선택 : </p>
	                  	</div>
	                  	<div class="col-4 has-success" >
                    		<input type="text" name="date" class="form-control datetimepicker" value="2021-02-03" />
	                  	</div>
	                  	
                  	</div>
                  	<div class="row">
                  	
                  		<div class="col-2">
	                  	<p class="font-gd" style="font-size: 20px; font-weight: bold;">애완동물 선택 : </p>
	                  	</div>
	                  	<div class="col-4">
	                  	<select class="form-select" name="myPet" aria-label="Default select example" style="font-family: godik; font-size:15px;">
						  <option selected>애완동물</option>
						  <c:forEach items="${myPets}" var="myPets">
						  <option value="${myPets.pet_idx} ">${myPets.pet_name}</option>
						  </c:forEach>
						</select> 
						</div>
                  	</div>
                  	
                  </div>
                  <div class="col-md-11 ml-auto mr-auto text-center" >
                  <button class="btn btn-secondary btn-width" type="submit" >신청</button>
                   <!--  <button class="btn btn-secondary btn-width" type="submit" onclick="value_check()">검색</button> -->
                  </div>
                  
                </div>
              </div>
            
            </form>
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
  <script src="<c:url value="/resources/assets/js/plugins/moment-with-locales.min.js" />" ></script>
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
      //materialKit.initFormExtendedDatetimepickers();

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
    var today = new Date();
    var todayDate = today.getFullYear()+"-"+(today.getMonth()+1)+"-"+today.getDate();
    var later = new Date();
    later.setDate(today.getDate()+30);
    var laterDate = later.getFullYear()+"-"+(later.getMonth()+1)+"-"+later.getDate();
    var disabledDate = []
    <c:forEach items="${disableDate}" var="disable">
    	disabledDate.push("${disable}")
	</c:forEach>
    	console.log(disabledDate)
    $('.datetimepicker').datetimepicker({
    	 icons: {
    	        time: "fa fa-clock-o",
    	        date: "fa fa-calendar",
    	        up: "fa fa-chevron-up",
    	        down: "fa fa-chevron-down",
    	        previous: 'fa fa-chevron-left',
    	        next: 'fa fa-chevron-right',
    	        today: 'fa fa-screenshot',
    	        clear: 'fa fa-trash',
    	        close: 'fa fa-remove'
    	      },
    	 format:'YYYY-MM-DD',
    	 locale:'ko',
    	 disabledDates: disabledDate,
    	 minDate: new Date(todayDate),
    	  maxDate: new Date(laterDate)
    });
  </script>
</body>

</html>