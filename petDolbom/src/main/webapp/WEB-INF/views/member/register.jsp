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
</head>

<body class="index-page sidebar-collapse">
  
  
  <div class="main main-raised-login">
    
    <!--         end carousel -->
    <!-- <div class="section">
      <div class="container text-center" style="padding: 50px -30px;">
        <div class="row">
          <div class="mx-auto text-center">
            <h2 style="font-family: godik;">애완동물 돌봄 서비스</h2>
          </div>
        </div>
      </div>
    </div> -->
    <div class="section section-signup page-header" style="margin: 0 0 0 0; background-image: url('${cp}/resources/assets/img/pets4.jpg');">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-6 mx-auto">
            <div class="card card-login">
              <form class="form" action="${cp}/member/login" method="get">
                <div class="card-header card-header-primary text-center">
                  <h4 class="card-title" style="font-family: godik;">애완동물 돌봄 서비스</h4>
                </div>
                <div class="card-body">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons">perm_identity</i>
                      </span>
                    </div>
                    <input type="text" name="id" id="identifier" class="form-control" required style="font-family: godik;" placeholder="아이디" minlength="4">
                  </div>
                  <div class="alert-text-danger" id="id-min"><span>ID 최소 4자</span>
                  </div>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons">lock_outline</i>
                      </span>
                    </div>
                    <input type="password" name="password" id="password" class="form-control"  required  style="font-family: godik;" placeholder="비밀번호" autocomplete="" minlength="8">
                  </div>
                  <div class="alert-text-danger" id="pw-min"><span>비밀번호 최소 8자</span>
                  </div>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons">lock_outline</i>
                      </span>
                    </div>
                    <input type="password" name="passwordCheck" id="passwordCheck" class="form-control" required style="font-family: godik;" placeholder="비밀번호 확인" autocomplete=""  minlength="8">
                  </div>
                  <div class="alert-text-danger" id="pw-check"><span>비밀번호가 다릅니다.</span>
                  </div>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons">face</i>
                      </span>
                    </div>
                    <input type="text" name="name" class="form-control" required style="font-family: godik;" placeholder="이름" autocomplete="">
                  </div>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons">phone</i>
                      </span>
                    </div>
                    <input type="text" name="phone" class="form-control" required style="font-family: godik;" placeholder="휴대폰번호" autocomplete="">
                  </div>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons">home</i>
                      </span>
                    </div>
                    <input type="text" name="address" class="form-control" required style="font-family: godik;" placeholder="주소" autocomplete="">
                  </div>
                </div>
                <!-- <div class="footer text-center">
                  <a href="javascript:;" class="btn btn-primary btn-link btn-wd btn-lg">Get Started</a>
                </div> -->
                <div class="footer text-center" style="margin-top: 40px; margin-bottom: 40px;">
                <button class="btn btn-primary" id="submit" type="submit" style="font-family: godik; margin-right:20px;">가입</button>
           		<a href="${cp}/member/login"><button class="btn btn-primary" type=button style="font-family: godik; margin-left:20px;">취소</button></a>
                
                </div>
                
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>  
  <footer class="footer" data-background-color="black">
    <div class="container">
      <nav class="float-left">
        <ul>
          <li>
            <a href="#">
              	관리자 로그인
            </a>
          </li>
        </ul>
      </nav>
      <div class="copyright float-right">
        &copy;
        <script>
          document.write(new Date().getFullYear())
        </script>, made with <i class="material-icons">favorite</i> by
        <a href="https://www.creative-tim.com/" target="_blank">Creative Tim</a> for a better web.
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