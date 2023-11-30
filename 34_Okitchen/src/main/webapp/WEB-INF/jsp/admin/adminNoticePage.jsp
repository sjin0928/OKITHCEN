<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>관리자페이지</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/css/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/css/cssStyle/sb-admin-2.min.css" rel="stylesheet">
    <link href="../css/cssStyle/sb-admin-2.min.css" rel="stylesheet">
    <link href="../css/cssStyle/seller.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>   

<!-- 공지사항을 등록하고 돌아왔을때 성공여부 -->
<c:if test="${not empty successInsert}">
    <script>
        alert('공지사항이 성공적으로 등록되었습니다.');
    </script>
</c:if>
<script>

$.ajax("getAdminNoticeList.do", {
    type: "get",
    dataType: "json",
    success: function (data) {
        console.log(data);

        let dispTag = "<div>";
        
   /*      dispTag += "<h3>공지사항 리스트</h3>"; */
        dispTag += "<a class='noticeInsert' href='goInsertNoticePage.do'>등록</a>";
        dispTag += "<table class='table'>";
        dispTag += "<thead>";
        dispTag += "<tr>";
        dispTag += "<th scope='col'>번호</th>";
        dispTag += "<th scope='col'>제목</th>";
        dispTag += "<th scope='col'>작성자</th>";
        dispTag += "<th class ='noticeWriteDate' scope='col'>작성일</th>";
        dispTag += "<tr>";
        dispTag += "</thead>";
        dispTag += "<tbody class='table-group-divider'>";

        for (notice of data) {
            // notice.cPage를 숫자로 변환
            notice.cPage = parseInt(notice.cPage);

            dispTag += "<tr>";
            dispTag += "<th class='noticeNumber' scope='row'>" + notice.noticeId + "</th>";
            dispTag += "<td><a href='adminNoticeDetail.do?noticeId=" + notice.noticeId + "'>" + notice.noticeTitle + "</a></td>";
            dispTag += "<td div class='writer'>오키친</td>";
            dispTag += "<td class ='noticeWriteDate'>" + new Date(notice.noticeDate).toLocaleDateString('ko-KR', { year: 'numeric', month: '2-digit', day: '2-digit' }).replace(/\.$/, '') + "</td>";

            dispTag += "</tr>";
        }
        dispTag += "</tbody>";
        dispTag += "</table></div>";
        
        //페이징
            if (notice.cPage == 0 && notice.totPage == 0) {
                dispTag += "<button class='disAble1' disabled>back</button><button class='disAble' disabled>next</button>";
            } else if (notice.cPage == 0) {
               notice.cPage = 1;
                dispTag += "<button class='disAble1' disabled>back</button><button class='next' onclick='handleNextPage(" + notice.noticeId + ", " + (notice.cPage + 1) + ")'>next</button>";
            } else if (Number(notice.totPage) <= Number(notice.cPage)) {
                dispTag += "<button class='back' onclick='handleBeforePage(" + notice.noticeId + ", " + (notice.cPage - 1) + ")'>back</button><button class='disAble' disabled>next</button>";
            } else {
                dispTag += "<button class='back' onclick='handleBeforePage(" + notice.noticeId + ", " + (notice.cPage - 1) + ")'>back</button><button class='next' onclick='handleNextPage(" + notice.noticeId + ", " + (notice.cPage + 1) + ")'>next</button>";
            }

        $("#listDisp").html(dispTag);
    },
    error: function () {
    }
});
   
   //이전 페이지에 대한 데이터 호출ajax
   function handleBeforePage(noticeId, cPage) {
         // cPage를 숫자로 변환
       cPage = parseInt(cPage);

       $.ajax("getAdminNoticeList.do", {
           type: "get",
           data: { noticeId: noticeId, cPage: cPage },
           dataType: "json",
           success: function (data) {
               console.log(data);

               let dispTag = "<div>";
            
               if (data.length > 0) {
                   // 공지사항이 있는 경우
                   dispTag += "<table class='table'>";
                   dispTag += "<thead>";
                   dispTag += "<tr>";
                   dispTag += "<th scope='col'>번호</th>";
                   dispTag += "<th scope='col'>제목</th>";
                   dispTag += "<th scope='col'>작성자</th>";
                   dispTag += "<th class ='noticeWriteDate' scope='col'>작성일</th>";
                   dispTag += "<tr>";
                   dispTag += "</thead>";
                   dispTag += "<tbody class='table-group-divider'>";

                   for (notice of data) {
                       // notice.cPage를 숫자로 변환
                       notice.cPage = parseInt(notice.cPage);

                       dispTag += "<tr>";
                       dispTag += "<th class='noticeNumber' scope='row'>" + notice.noticeId + "</th>";
                       dispTag += "<td><a href='adminNoticeDetail.do?noticeId=" + notice.noticeId + "'>" + notice.noticeTitle + "</a></td>";
                       dispTag += "<td div class='writer'>오키친</td>";
                       dispTag += "<td class ='noticeWriteDate'>" + new Date(notice.noticeDate).toLocaleDateString('ko-KR', { year: 'numeric', month: '2-digit', day: '2-digit' }).replace(/\.$/, '') + "</td>";

                       dispTag += "</tr>";
                   }
                   dispTag += "</tbody>";
                   dispTag += "</table>";
                   
                   //페이징
                   if (notice.cPage == 0 && notice.totPage == 0) {
                       dispTag += "<button class='disAble1' disabled>back</button><button class='disAble' disabled>next</button>";
                   } else if (notice.cPage == 0) {
                       notice.cPage = 1;
                       dispTag += "<button class='disAble1' disabled>back</button><button class='next' onclick='handleNextPage(" + notice.noticeId + ", " + (notice.cPage + 1) + ")'>next</button>";
                   } else if (Number(notice.totPage) <= Number(notice.cPage)) {
                       dispTag += "<button class='back' onclick='handleBeforePage(" + notice.noticeId + ", " + (notice.cPage - 1) + ")'>back</button><button class='disAble' disabled>next</button>";
                   } else {
                       dispTag += "<button class='back' onclick='handleBeforePage(" + notice.noticeId + ", " + (notice.cPage - 1) + ")'>back</button><button class='next' onclick='handleNextPage(" + notice.noticeId + ", " + (notice.cPage + 1) + ")'>next</button>";
                   }
               } 

               dispTag += "</div>";
               $("#listDisp").html(dispTag);
           },
           error: function () {
           }
       });

   } 
   
   //다음 페이지에 대한 데이터 호출ajax
   function handleNextPage(noticeId, cPage) {
         // cPage를 숫자로 변환
       cPage = parseInt(cPage);

       handleBeforePage(noticeId, cPage);

   } 
</script>
<style>

   a.noticeInsert{
      float: right;
       margin-bottom: 10px;
       color: #4e73dfb8;
       font-weight: 600;
           margin-right: 60px;
   }
   a {
   text-decoration: none !important;
   color: #858796;
   }
   a:hover{
   color: #000000;
   }
   .noticeWriteDate {
      width: 207px;
      text-align: center;
   }
   th {
      text-align: center;
      
   }
   .table thead th{
      border-top: 1.5px solid !important;
   }
   .writer{
      text-align: center;
   }
   .noticeNumber{
      width: 130px;
   }
   .back {
      color: #4e73df;
       margin-left: 447px;
       background-color: white;
       border-radius: 5px;
       border-top-color: #00000040;
       border-left-color: #00000040;
       border-color: #4e73df;
      }
      .next {
      color: #4e73df;
       margin-left: 22px;
       border-color: #4e73df;
       background-color: white;
       border-radius: 5px;
       border-top-color: #00000040;
       border-left-color: #00000040;
       border-color: #4e73df;
      }
      a:hover {
        text-decoration: none !important;
   }
	.disAble1{
	      color: #00000040;
	       font-weight: bold;
	       background-color: white;
	       border-radius: 5px;
	       border-color: #00000040;
	       margin-left: 600px; /*버튼 중앙에 오게하는 부분*/
	   }
   .disAble{
      color: #00000040;
      background-color: white;
       border-radius: 5px;
       border-color: #00000040;
       margin-left: 22px;
   }
   a.noticeInsert2{
      margin-left: 461px;
       color: #4e73df;
       font-weight: 600;
   }
   p.emptyNotice{
      margin-left: 424px;
   }
</style>

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">


	<%@ include file="../../../css/headerFooter/adminSidebar.jsp" %>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
		
			<!-- Main Content -->
			<div id="content">

			    <!-- Topbar -->
			    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

			        <!-- Sidebar Toggle (Topbar) 창크기 줄였을 때 클릭시 사이드바 생성됨 -->
			        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
			            <i class="fa fa-bars"></i>
			        </button>

			        <!-- Topbar Search 검색창 (멋을 위해 남김 ..) -->
			        <form
			            class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
			            <div class="input-group">
			                <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
			                    aria-label="Search" aria-describedby="basic-addon2">
			                <div class="input-group-append">
			                    <button class="btn btn-primary" type="button">
			                        <i class="fas fa-search fa-sm"></i>
			                    </button>
			                </div>
			            </div>
			        </form>
               
	                 <!-- Topbar Navbar 우측 상단 알림, 메세지, 관리자명 (기능X) -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts (멋으로 남길게요..)-->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 12, 2019</div>
                                        <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-success">
                                            <i class="fas fa-donate text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 7, 2019</div>
                                        $290.29 has been deposited into your account!
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-warning">
                                            <i class="fas fa-exclamation-triangle text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 2, 2019</div>
                                        Spending Alert: We've noticed unusually high spending for your account.
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                            </div>
                        </li>
                        
                        <!-- Nav Item - Messages (멋내기로 남길게요 ..)-->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="css/img/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                            problem I've been having.</div>
                                        <div class="small text-gray-500">Emily Fowler · 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="css/img/undraw_profile_2.svg"
                                            alt="...">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">I have the photos that you ordered last month, how
                                            would you like them sent to you?</div>
                                        <div class="small text-gray-500">Jae Chun · 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="css/img/undraw_profile_3.svg"
                                            alt="...">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Last month's report looks great, I am very happy with
                                            the progress so far, keep up the good work!</div>
                                        <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Am I a good boy? The reason I ask is because someone
                                            told me that people say this to all dogs, even if they aren't good...</div>
                                        <div class="small text-gray-500">Chicken the Dog · 2w</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - 관리자모드(예시) -->
						<li class="nav-item no-arrow">
						    <span class="nav-link">
						        <span class="mr-2 d-none d-lg-inline text-gray-600 small">관리자모드</span>
						    </span>
						</li>
                    </ul>
                </nav>
                <div class="container-fluid">

					<!-- Content Row -->
					<div class="row">

						<!-- 판매자 회원 리스트 -->
						<div class="card shadow col-lg-12">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">공지사항 리스트</h6>
							</div>
							
							<div class="card-body">
								<div id="listDisp">
									<c:if test="${empty data}">
										<p class='emptyNotice'>등록된 공지사항이 없습니다.</p>
										<a class='noticeInsert2' href='goInsertNoticePage.do'>공지사항 등록하기</a>
			                        </c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
               
        <!-- End of Main Content -->

    </div>
    <!-- End of Content Wrapper -->

</div>
 <!-- End of Page Wrapper -->



</body>
    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/css/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/css/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/css/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/css/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="${pageContext.request.contextPath}/css/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath}/css/js/demo/chart-area-demo.js"></script>
    <script src="${pageContext.request.contextPath}/css/js/demo/chart-pie-demo.js"></script>
</html>