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
  <nav class="navbar navbar-color-on-scroll navbar-transparent fixed-top navbar-expand-lg"  color-on-scroll="100">
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
        <div class="col-2" style="margin-top: 20px;">
         <h2 class="font-gd" >마이페이지</h2>
         </div>
         <div class="col-3" style="margin-top: 15px; margin-left: -20px;">
         <ul class="navbar-nav ml-auto">
          <li class="dropdown nav-item">
            <a href="#" class="dropdown-toggle nav-link font-gd" data-toggle="dropdown" style="font-size:20px; color:#000000;font-weight: bold;">
              	회원정보
            </a>
            <div class="dropdown-menu dropdown-with-icons">
              <a href="${cp}/member/pet" class="dropdown-item font-gd">
                	애완동물 관리
              </a>
              <a href="${cp}/center/longPeriod" class="dropdown-item font-gd">
                   돌보미 관리
              </a>
               <a href="${cp}/center/longPeriod" class="dropdown-item font-gd">
                   서비스 신청 현황 조회
              </a>

            </div>
          </li>
          </ul>
</div>
</div>
         <div class="col-lg-4 col-md-6 mx-auto ">
            <div class="card card-login">
              <form class="form" action="${cp}/member/register" method="post">
               
                <div class="card-body">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons">perm_identity</i>
                      </span>
                    </div>
                    <input type="text" name="id" id="identifier" class="form-control" required style="font-family: godik;" placeholder="아이디" minlength="4" value="${member.id}" disabled>
                  </div>
                  <div class="alert-text-danger" id="id-min"><span>ID 최소 4자</span>
                  </div>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons">lock_outline</i>
                      </span>
                    </div>
                    <input type="password" name="password" id="password" class="form-control"  required  style="font-family: godik;" placeholder="비밀번호" autocomplete="" minlength="8" value="${member.password}">
                  </div>
                  <div class="alert-text-danger" id="pw-min"><span>비밀번호 최소 8자</span>
                  </div>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons">lock_outline</i>
                      </span>
                    </div>
                    <input type="password" name="passwordCheck" id="passwordCheck" class="form-control" required style="font-family: godik;" placeholder="비밀번호 확인" autocomplete=""  minlength="8" value="${member.password}">
                  </div>
                  <div class="alert-text-danger" id="pw-check"><span>비밀번호가 다릅니다.</span>
                  </div>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons">face</i>
                      </span>
                    </div>
                    <input type="text" name="name" class="form-control" required style="font-family: godik;" placeholder="이름" autocomplete="" value="${member.name}">
                  </div>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons">phone</i>
                      </span>
                    </div>
                    <input type="text" name="phone_num" class="form-control" required style="font-family: godik;" placeholder="휴대폰번호" autocomplete="" value="${member.phone_num}">
                  </div>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons">home</i>
                      </span>
                    </div>
                    <input type="text" name="address" class="form-control" required style="font-family: godik;" placeholder="주소" autocomplete="" value="${member.address}">
                  </div>
                </div>
                <!-- <div class="footer text-center">
                  <a href="javascript:;" class="btn btn-primary btn-link btn-wd btn-lg">Get Started</a>
                </div> -->
                <div class="footer text-center" style="margin-top: 40px; margin-bottom: 40px;">
                <button class="btn btn-primary" id="submit" type="submit" style="font-family: godik; margin-right:20px;">수정</button>
           		<a href="${cp}/member/login"><button class="btn btn-primary" type=button style="font-family: godik; margin-left:20px;">취소</button></a>
                
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
    	$("#pw-check").hide(); 
    	$("input").keyup(function(){ 
    		var pwd1=$("#password").val(); 
    		var pwd2=$("#passwordCheck").val(); 
    		if(pwd1 != "" && pwd2 != ""){ 
    			if(pwd1 == pwd2){ 
    				$("#pw-check").hide(); 
    				$("#submit").removeAttr("disabled"); 
    				}
    			else{ 
    				$("#pw-check").show(); 
    				$("#submit").attr("disabled", "disabled");
    				} 
    			} 
    		}); 
    	});
    $(function(){ 
    	$("#id-min").hide(); 
    	$("input").keyup(function(){ 
    		var id=$("#identifier").val();
    		if(id != ""){
	    		if(id.length < 4){
	    			$("#id-min").show();
	    		}
	    		else{
	    			$("#id-min").hide();
	    		}
    		}
    		}); 
    	});
    $(function(){ 
    	$("#pw-min").hide(); 
    	$("input").keyup(function(){ 
    		var id=$("#password").val();
    		if(id != ""){
	    		if(id.length < 8){
	    			$("#pw-min").show();
	    		}
	    		else{
	    			$("#pw-min").hide();
	    		}
    		}
    		}); 
    	});
  </script>
</body>

</html>