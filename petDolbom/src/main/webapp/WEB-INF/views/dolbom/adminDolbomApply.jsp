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
<link href='${cp}/resources/assets/lib/main.css' rel='stylesheet' />
<script src='${cp}/resources/assets/lib/main.js'></script>
<script src='${cp}/resources/assets/lib/locales-all.js'></script>
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
                  <i class="material-icons">pets</i> 돌봄 서비스 관리
              </a>
            </li>
            <li class="nav-item">
              <a href="${cp}/center/info" class="nav-link" style="font-family: godik;">
                  <i class="material-icons">home</i> 돌봄 센터 관리
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
 <div class="page-header header-filter" data-parallax="true" style="background-image: url('${cp}/resources/assets/img/dogcat.jpg');"></div>
  <div class="main main-raised"  style="padding-bottom:40px;">
    <div class="profile-content" >
      <div class="container" >
      
       <div class="row" >
       
        <div class="col-3" style="margin-top: 20px;">
         <h2 class="font-gd" >돌봄 서비스 관리</h2>
         </div>
         <div class="col-3" style="margin-top: 15px; margin-left: -20px;">
         <ul class="navbar-nav ml-auto">
          <li class="dropdown nav-item">
            <a href="#" class="dropdown-toggle nav-link font-gd" data-toggle="dropdown" style="font-size:20px; color:#000000;font-weight: bold;">
              	돌보미 신규 신청
            </a>
            <div class="dropdown-menu dropdown-with-icons">
              <a href="${cp}/dolbom/adminDolbomSearch" class="dropdown-item font-gd">
                 돌보미 조회
              </a>
            <a href="${cp}/dolbom/dolbomiFinished" class="dropdown-item font-gd">
                 돌보미 추가
              </a>
            </div>
          </li>
          </ul>
		</div>
		</div>
		<div class="row" style="margin-top:20px;">
		<div class="col-md-11 ml-auto mr-auto">
		<table class="table">
		 <thead>
		    <tr>
		      <th scope="col">이름</th>
		      <th scope="col">지역</th>
		      <th scope="col">분류</th>
		      <th scope="col">애완동물</th>
		      <th scope="col">자격증</th>
		      <th scope="col">승인</th>
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach items="${dolbomiFullList}" var="dolbomiList">
		    <tr>
		      <td style="vertical-align:middle;">${dolbomiList.name}</td>
		      <td style="vertical-align:middle">${dolbomiList.address}</td>
		      <td style="vertical-align:middle">종일</td>
		      <td style="vertical-align:middle">${dolbomiList.cared_pet}</td>
		      <td style="vertical-align:middle">${dolbomiList.license}</td>
		      <td>
		      <a href="${cp}/dolbom/adminDolbomAccept?id=${dolbomiList.id}"><button class="btn btn-success">승인</button></a> 
		      <a href="${cp}/dolbom/adminDolbomCancel?id=${dolbomiList.id}"><button class="btn btn-danger">취소</button></a>
		      </td>
		    </tr>
		    </c:forEach>
		    <c:forEach items="${dolbomiPartList}" var="dolbomiList">
		    <tr>
		      <td style="vertical-align:middle">${dolbomiList.name}</td>
		      <td style="vertical-align:middle">${dolbomiList.address}</td>
		      <td style="vertical-align:middle">시간제</td>
		      <td style="vertical-align:middle">${dolbomiList.cared_pet}</td>
		      <td style="vertical-align:middle">${dolbomiList.license}</td>
		      <td>
		      <a href="${cp}/dolbom/adminDolbomAccept?id=${dolbomiList.id}"><button class="btn btn-success">승인</button></a> 
		      <a href="${cp}/dolbom/adminDolbomCancel?id=${dolbomiList.id}"><button class="btn btn-danger">취소</button></a>
		      </td>
		    </tr>
		    </c:forEach>
		  </tbody>
		</table>

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
    function value_check() {
        var select_obj = '';
 
        $('input[type="checkbox"]:checked').each(function (index) {
            if (index != 0) {
                select_obj += ', ';
            }
            select_obj += $(this).val();
        });
          /* $.ajax({
				url:'region?address='+select_obj,
				type:'get',
				success:function(data){
					 alert(select_obj);
					
				}
			}) */	  
        alert(select_obj);
    }
    $(document).ready(function(){
        //최상단 체크박스 클릭
        $("#check_all").click(function(){
            //클릭되었으면
            if($("#check_all").prop("checked")){
                //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
                $("input[name=region]").prop("checked",false);
                //클릭이 안되있으면
            }
            /* else{
                //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
                $("input[name=region]").prop("checked",false);
            } */
        })
    })
$(document).ready(function(){
        //최상단 체크박스 클릭
        $("input[name=region]").click(function(){
            //클릭되었으면
            if($("#check_all").prop("checked")){
                //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
                $("#check_all").prop("checked",false);
                //클릭이 안되있으면
            }
            /* else{
                //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
                $("input[name=region]").prop("checked",false);
            } */
        })
    })
    
    
    
  document.addEventListener('DOMContentLoaded', function() {

    /* initialize the external events
    -----------------------------------------------------------------*/

    var containerEl = document.getElementById('external-events-list');
    new FullCalendar.Draggable(containerEl, {
      itemSelector: '.fc-event',
      eventData: function(eventEl) {
        return {
          title: eventEl.innerText.trim()
        }
      }
    });

    //// the individual way to do it
    // var containerEl = document.getElementById('external-events-list');
    // var eventEls = Array.prototype.slice.call(
    //   containerEl.querySelectorAll('.fc-event')
    // );
    // eventEls.forEach(function(eventEl) {
    //   new FullCalendar.Draggable(eventEl, {
    //     eventData: {
    //       title: eventEl.innerText.trim(),
    //     }
    //   });
    // });

    /* initialize the calendar
    -----------------------------------------------------------------*/

    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
      },
      editable: true,
      droppable: true, // this allows things to be dropped onto the calendar
      drop: function(arg) {
        // is the "remove after drop" checkbox checked?
        if (document.getElementById('drop-remove').checked) {
          // if so, remove the element from the "Draggable Events" list
          arg.draggedEl.parentNode.removeChild(arg.draggedEl);
        }
      }
    });
    calendar.render();

  });

    
  </script>
</body>

</html>