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
  <div class="main main-raised"  style="padding-bottom:40px;">
    <div class="profile-content" >
      <div class="container" >
        <div class="row" >
        
          <h2 class="font-gd" style="margin-top: 20px;">돌보미</h2>
          <div class="col-md-12 ml-auto mr-auto">
            <div class="card card-nav-tabs" >
              <div class="card-body">
              	<h4>돌보미란?</h4>
                  <div class="col-md-11 ml-auto mr-auto">
                    <p class="font-gd" style="font-size: 20px">애완동물 관리 자격증이 요구되며 종일 혹은 시간제 형식으로 애완동물 돌봄 봉사를 합니다 .</p>
                  	
                  </div>
                </div>
                
              </div> 
              <div class="card card-nav-tabs" >  
              <div class="card-body ">
              	<h4>돌보미 신청하기</h4>
                  <div class="col-md-11 ml-auto mr-auto">
                  <form action="${cp}/dolbom/dolbomi" method="post">
                  <div class="row" style="margin-top:20px;">
                  <div class="col-2">
                  <h5 class="font-gd">서비스 분류</h5>
                  </div>
                  	<div class="col-1" style="margin-left:20px;">
							<input class="form-check-input" type="radio" name="radio" id="fullTime" value="fullTime">
			                  	종일
						</div>
                  		<div class="col-2" style="margin-right:-20px; ">
							<input class="form-check-input" type="radio" name="radio" id="partTime" value="partTime">
			                  	시간제
						</div>
                  	</div>
                  	<div class="row" style="margin-top:10px;">
                  		<div class="col-2">
		                  <h5 class="font-gd">서비스 시간</h5>
		                  </div>
                  		<div class="col-3">
							<select class="form-select" name="startTime" aria-label="Default select example" style="font-family: godik; font-size:15px;" >
							  <option selected>시작 시간</option>
							  <option value="09:00">09:00</option>
							  <option value="10:00">10:00</option>
							  <option value="11:00">11:00</option>
							  <option value="12:00">12:00</option>
							  <option value="13:00">13:00</option>
							  <option value="14:00">14:00</option>
							  <option value="15:00">15:00</option>
							  <option value="16:00">16:00</option>
							  <option value="17:00">17:00</option>

							</select>                    		</div>
                  		<div class="col-3">
							<select class="form-select" name="endTime" aria-label="Default select example" style="font-family: godik; font-size:15px;">
							   <option selected>종료 시간</option>
							  <option value="10:00">10:00</option>
							  <option value="11:00">11:00</option>
							  <option value="12:00">12:00</option>
							  <option value="13:00">13:00</option>
							  <option value="14:00">14:00</option>
							  <option value="15:00">15:00</option>
							  <option value="16:00">16:00</option>
							  <option value="17:00">17:00</option>
							  <option value="18:00">18:00</option>
							</select>                  		
						</div>
						<div class="col-3">
							<p></p>              		
						</div>
                  	</div>
                  	<div class="row" style="margin-top:10px;">
                  	<div class="col-2">
		                  <h5 class="font-gd">돌봄 애완동물</h5>
		                  </div>
                  		<div class="col-1" style="margin-left:20px;">
		                  	 <input class="form-check-input" type="checkbox" name="caredPet" value="강아지">강아지
		                  	
						</div>
						<div class="col-1">
		                  	 <input class="form-check-input" type="checkbox" name="caredPet" value="고양이">고양이
		                  	
						</div>
						<div class="col-1">
		                  	 <input class="form-check-input" type="checkbox" name="caredPet" value="새">새
		                  	
						</div>
						<div class="col-1">
		                  	 <input class="form-check-input" type="checkbox" name="caredPet" value="햄스터">햄스터
		                  	
						</div>
						<div class="col-1">
		                  	 <input class="form-check-input" type="checkbox" name="caredPet" value="파충류">파충류
		                  	
						</div>
						<div class="col-1">
		                  	 <input class="form-check-input" type="checkbox" name="caredPet" value="토끼">토끼
		                  	
						</div>
						<div class="col-1">
		                  	 <input class="form-check-input" type="checkbox" name="caredPet" value="기니피그">기니피그
		                  	
						</div>
						<div class="col-1">
		                  	 <input class="form-check-input" type="checkbox" name="caredPet" value="고슴도치">고슴도치
		                  	
						</div>
					</div>
					<div class="row" style="margin-top:10px;">
					<div class="col-2">
	                  <h5 class="font-gd">자격증</h5>
	                  </div>
                  		<div class="col-3">   
					   <input type="text" name="licenseNumber" id="licenseNumber" class="form-control" required style="font-family: godik;" placeholder="자격증 이름">
						</div>
						<div class="col-3">
						   <input type="text" name="licenseName" id="licenseName" class="form-control" required style="font-family: godik;" placeholder="자격증 번호">
						</div>
					</div>
					<div class="col-md-11 ml-auto mr-auto text-center" style="margin-top:20px;" >
                  <button class="btn btn-secondary btn-width" type="submit" >신청</button>
                   <!--  <button class="btn btn-secondary btn-width" type="submit" onclick="value_check()">검색</button> -->
                  </div>
					</form>
                  </div>
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
    
    $(function(){ 
    	//$("#pw-check").hide(); 
    	$("input:radio[name=radio]").click(function(){ 
    		if($("input[name=radio]:checked").val() == "fullTime"){
                $("select[name=startTime]").attr("disabled",true);
                $("select[name=endTime]").attr("disabled",true);

                // radio 버튼의 value 값이 1이라면 활성화
     
            }else if($("input[name=radio]:checked").val() == "partTime"){
                $("select[name=startTime]").attr("disabled",false);
                $("select[name=endTime]").attr("disabled",false);
                // radio 버튼의 value 값이 0이라면 비활성화
            } 
    		}); 
    	});
  </script>
</body>

</html>