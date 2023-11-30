<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>관리자페이지 - 전체회원조회</title>

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
<style>
#ibb table {
      width: 100%;
      margin: 0 auto;
      border-collapse: collapse;
      font-size: 14px;
}
   
#ibb th, #bbs td{
      border: 1px solid black;
      padding: 4px 10px;
      text-align: center;
}

#ibb .title { background-color: lightgray; }
/* 페이지 표시 영역 스타일(시작) */
   .paging { list-style: none; }
   .paging li {
      float: left;
      margin-right: 8px;
   }
   .paging li a {
      text-decoration: none;
      display: block;
      padding: 3px 7px;
      border: 1px solid rgb(78,115,223);
      font-weight: bold;
      color: black;
   }
   
   .paging .disable {
      border: 1px solid silver;
      padding: 3px 7px;
      color: silver;
   }
   
   .paging .now {
      border: 1px solid rgb(78,115,223);
      padding: 3px 7px;
      background-color:  rgb(78,115,223);
   }
   /* 페이지 표시 영역 스타일(끝) */
   .custom-container{
      max-width: 1400px;
        margin-right: auto;
        margin-left: auto;
        padding-right: 15px;
        padding-left: 15px;
   }
</style>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">
    
    

   
   <%@ include file="../../../css/headerFooter/adminSidebar.jsp" %>
   <!-- 본문 내용 -->
<%--  ${userList } --%>
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
                        <h6 class="m-0 font-weight-bold text-primary">일반회원 리스트</h6>
                     </div>
                     
                     <div class="card-body">
                        <div id="listDisp">
                           <c:if test="${empty userList}">
                              <p class='emptyNotice'>등록된 회원이 없습니다.</p>
                                 </c:if>
                                 
                                 
  <!--  <h3>일반회원 리스트</h3> -->
   <table class="table">
        <thead>
          <tr class="m-0 font-weight-bold text-primary">
           <th scope="col" style="width: 8%;">아이디</th>
                <th scope="col" style="width: 8%;">이름</th>
                <th scope="col" style="width: 15%;">이메일</th>
                <th scope="col" style="width: 13%;">생년월일</th>
                <th scope="col" style="width: 10%;">탈퇴여부</th>
                <th scope="col" style="width: 12%;">가입일</th>
                <th scope="col" style="width: 7%;">성별</th>
                <th scope="col" style="width: 25%;">주소</th>
                <th scope="col" style="width: 10%;">핸드폰번호</th>
          </tr>
        </thead>
     <tbody class="table-group-divider">
     <c:choose>
      <c:when test="${empty userListPaging }">
         <tr>
            <td colspan="5">
               <h2>현재 등록된 게시글이 없습니다</h2>
            </td>
         </tr>
      </c:when>
      <c:otherwise>
         <c:forEach var="vo" items="${userListPaging }">
            <tr>
               <th>${vo.userId }</th>
               <th>${vo.userName }</th>
               <th>${vo.userEmail }</th>
               <th>${vo.userBirth }</th>
               <th>
                  <c:choose>
                            <c:when test="${vo.userStatus eq 'Y'}">
                                일반회원
                         </c:when>
                         <c:when test="${vo.userStatus eq 'N'}">
                                탈퇴회원
                         </c:when>
                         </c:choose>
               </th>
               <th>${vo.userDate }</th>
               <th>${vo.userGender }</th>
               <th>${vo.userAddress }</th>
               <th>${vo.userPhonenum }</th>
            </tr>
         </c:forEach>
         </c:otherwise>
      
      </c:choose>
     
       
     </tbody>
   <tfoot>
         <tr>
            <td colspan="4">
               <ol class="paging">
               
               <c:if test="${pvo.beginPage == 1 }">
                  <li class="disable">이전으로</li> 
               </c:if>
               <c:if test="${pvo.beginPage != 1 }">
                  <li>
                     <a href="userList.do?nowPage=${pvo.beginPage - 1 }">이전으로</a>
                  </li>
               </c:if>
               
               
               <c:forEach var="pageNo" begin="${pvo.beginPage }" end="${pvo.endPage }">
               <c:if test="${pageNo == pvo.nowPage }">   
                  <li class="now">${pageNo }</li>
               </c:if>
               <c:if test="${pageNo != pvo.nowPage }">
                  <li>
                     <a href="userList.do?nowPage=${pageNo }">${pageNo }</a>
                  </li>
               </c:if>
               
               </c:forEach>
                              
               
                <c:if test="${pvo.endPage >= pvo.totalPage }">
                  <li class="disable">다음으로<li> 
               </c:if>
               <c:if test="${pvo.endPage < pvo.totalPage }">
                  <li>
                     <a href="userList.do?nowPage=${pvo.endPage + 1 }">다음으로</a>
                  </li>
               </c:if>
               </ol>
               
            </td>

         </tr>
      </tfoot>
      </table>                              
                                 
                                 
                                 
                                 
                                 
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

</body>

</html>