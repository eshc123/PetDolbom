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
  <div class="page-header header-filter" data-parallax="true" style="background-image: url('${cp}/resources/assets/img/dogcat.jpg');"></div>
  <div class="main main-raised">
    <div class="profile-content">
      <div class="container">
        <div class="row">
           <h2 class="font-gd" style="margin-top: 40px;">돌봄 서비스 </h2>
          <div class="col-md-12 ml-auto mr-auto">
            <div class="card card-nav-tabs">
              <div class="card-body ">
              <form action="${cp}/dolbom/search" method="post">
                  <div class="col-md-11 ml-auto mr-auto">
                    <input type="checkbox" name="all_region" class="btn-check" id="check_all" autocomplete="off" value="전체" checked>
                    <label class="btn btn-outline-success btn-width" for="check_all">전체</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_gangnam" autocomplete="off" value="강남구">
                    <label class="btn btn-outline-success btn-width" for="check_gangnam" >강남구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_gangdong" autocomplete="off" value="강동구">
                    <label class="btn btn-outline-success btn-width" for="check_gangdong" >강동구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_gangbuk" autocomplete="off" value="강북구">
                    <label class="btn btn-outline-success btn-width" for="check_gangbuk" >강북구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_gangseo" autocomplete="off" value="강서구">
                    <label class="btn btn-outline-success btn-width" for="check_gangseo" >강서구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_gwanak" autocomplete="off" value="관악구">
                    <label class="btn btn-outline-success btn-width" for="check_gwanak" >관악구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_gwangjin" autocomplete="off" value="광진구">
                    <label class="btn btn-outline-success btn-width" for="check_gwangjin" >광진구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_gooro" autocomplete="off" value="구로구">
                    <label class="btn btn-outline-success btn-width" for="check_gooro" >구로구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_geumcheon" autocomplete="off" value="금천구">
                    <label class="btn btn-outline-success btn-width" for="check_geumcheon" >금천구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_nowon" autocomplete="off" value="노원구">
                    <label class="btn btn-outline-success btn-width" for="check_nowon" >노원구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_dobong" autocomplete="off" value="도봉구">
                    <label class="btn btn-outline-success btn-width" for="check_dobong" >도봉구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_dongdaemoon" autocomplete="off" value="동대문구구">
                    <label class="btn btn-outline-success btn-width" for="check_dongdaemoon" >동대문구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_dongjak" autocomplete="off" value="동작구">
                    <label class="btn btn-outline-success btn-width" for="check_dongjak" >동작구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_mapo" autocomplete="off" value="마포구">
                    <label class="btn btn-outline-success btn-width" for="check_mapo">마포구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_seodaemoon" autocomplete="off" value="서대문구">
                    <label class="btn btn-outline-success btn-width" for="check_seodaemoon" >서대문구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_seocho" autocomplete="off" value="서초구">
                    <label class="btn btn-outline-success btn-width" for="check_seocho" >서초구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_seongdong" autocomplete="off" value="성동구">
                    <label class="btn btn-outline-success btn-width" for="check_seongdong" >성동구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_seongbuk" autocomplete="off" value="성북구">
                    <label class="btn btn-outline-success btn-width" for="check_seongbuk" >성북구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_songpa" autocomplete="off" value="송파구">
                    <label class="btn btn-outline-success btn-width" for="check_songpa" >송파구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_yangcheon" autocomplete="off" value="양천구">
                    <label class="btn btn-outline-success btn-width" for="check_yangcheon" >양천구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_yeongdeungpo" autocomplete="off" value="영등포구">
                    <label class="btn btn-outline-success btn-width" for="check_yeongdeungpo" >영등포구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_yongsan" autocomplete="off" value="용산구">
                    <label class="btn btn-outline-success btn-width" for="check_yongsan" >용산구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_eunpyeong" autocomplete="off" value="은평구">
                    <label class="btn btn-outline-success btn-width" for="check_eunpyeong" >은평구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_jongro" autocomplete="off" value="종로구">
                    <label class="btn btn-outline-success btn-width" for="check_jongro" >종로구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_joong" autocomplete="off" value="중구">
                    <label class="btn btn-outline-success btn-width" for="check_joong" >중구</label>
                    <input type="checkbox" name="region" class="btn-check" id="check_joongrang" autocomplete="off" value="중랑구">
                    <label class="btn btn-outline-success btn-width" for="check_joongrang" >중랑구</label>
                    <hr>
                    <input type="checkbox" class="btn-check" id="check_all_day" autocomplete="off" checked>
                    <label class="btn btn-outline-success btn-width-long" for="check_all_day" >종일 돌봄 서비스</label>
                    <input type="checkbox" class="btn-check" id="check_part_time" autocomplete="off" checked>
                    <label class="btn btn-outline-success btn-width-long" for="check_part_time" >시간제 돌봄 서비스</label>
                  </div>
                  <div class="col-md-11 ml-auto mr-auto text-center" >
                  <button class="btn btn-secondary btn-width" type="submit" >검색</button>
                   <!--  <button class="btn btn-secondary btn-width" type="submit" onclick="value_check()">검색</button> -->
                  </div>
                 </form>
  
                </div>
              </div>
            </div>
          
            <c:forEach items="${dolbomServiceList}" var="dolbomService">
           
            <div class="col-md-3" id="init">
            
              <div class="card">
                <div class="card-body"> 
                  <p class="font-gd" style="font-size: 20px">이름 : ${dolbomService.name}</p>
                  <p class="font-gd" style="font-size: 20px">지역 : ${dolbomService.address}</p>
                  <p class="font-gd" style="font-size: 20px">${dolbomService.dolbomTimeStatus}(${dolbomService.time})</p>
                  <div>
                  <c:forEach items="${dolbomService.dolbomTimeCaredPet}" var="fs">                  
                    <button class="btn btn-outline-success btn-fab btn-round btn-lg font-gd disabled" style="font-size: 13px;">
                   ${fs}
                  </button>
                  </c:forEach>
                  </div>
                  <div>                  
                    <%-- <button class="btn btn-outline-success btn-fab btn-round btn-lg font-gd disabled" style="font-size: 13px;">
                  	${dolbomService.dolbomTimeStatus}
                  </button>
                  <p class="font-gd" style="font-size: 16px">${dolbomService.time}</p> --%>
                  </div>
                  <div class="col-md-11 ml-auto mr-auto" style="margin-top: 10px;">
                   <button class="btn btn-secondary btn-width font-gd" data-toggle="modal" data-target="#myModal">예약현황</button>
                    <a href="${cp}/dolbom/apply?id=${dolbomService.memId}&status=${dolbomService.dolbomTimeStatus}"><button class="btn btn-secondary btn-width font-gd">신청</button></a>
                  </div>
                </div>
              </div>

            </div>
            
           </c:forEach>
           
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
<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Modal title</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i class="material-icons">clear</i>
          </button>
        </div>
        <div class="modal-body">
         <div id='wrap'>

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
		  
		  </tbody>
		</table>


        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-link">Nice Button</button>
          <button type="button" class="btn btn-danger btn-link" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  </div>
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
    
    
 /*    
  document.addEventListener('DOMContentLoaded', function() {

    /* initialize the external events
    -----------------------------------------------------------------*/

    /* var containerEl = document.getElementById('external-events-list');
    new FullCalendar.Draggable(containerEl, {
      itemSelector: '.fc-event',
      eventData: function(eventEl) {
        return {
          title: eventEl.innerText.trim()
        }
      }
    });  */

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

/*     var calendarEl = document.getElementById('calendar');
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

  }); */

    
  </script>
</body>

</html>