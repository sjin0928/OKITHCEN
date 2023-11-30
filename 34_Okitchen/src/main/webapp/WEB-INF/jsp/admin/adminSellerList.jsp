<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link href="../css/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../css/cssStyle/sb-admin-2.min.css" rel="stylesheet">
    <link href="../css/cssStyle/seller.css" rel="stylesheet">
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for ID"
                                aria-label="Search" aria-describedby="basic-addon2" name="">
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

                <!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Content Row -->
					<div class="row">

						<!-- 판매자 회원 리스트 -->
						<div class="card shadow col-lg-12">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary">파트너 리스트</h6>
							</div>
							<div class="card-body">
								<table class="table">
									<thead class="thead">
										<tr class="m-0 font-weight-bold text-primary" style="text-align: center;">
											<th>ID</th>
											<th>상호명</th>
											<th>사업자등록번호</th>
											<th>대표자명</th>
											<th>사업자 유형</th>
											<th>이메일</th>
											<th>대표 연락처</th>
											<th>회원 상태</th>
											<th>가입일</th>
											<th>탈퇴일</th>
										</tr>
									</thead>
									<tbody style="text-align: center;" id="ajaxtable">
									<c:choose>
									<c:when test="${empty list }">
										<tr class="card-body" >
											<td colspan="10">
											<h4>현재 등록된 파트너가 없습니다.</h4>
											</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach var="vo" items="${list }">
											<tr class="card-body" >
												<td>${vo.sellerId }</td>
												<td>${vo.companyName }</td>
												<td>${vo.registrationNum }</td>
												<td>${vo.representative }</td>
												<td>${vo.sellerType }</td>
												<td>${vo.customerEmail }</td>
												<td>${vo.customerCenter }</td>
												<td>${vo.sellerStatus }</td>
												<td>${vo.sellerRegdate }</td>
												<td>${vo.sellerChangeDate }</td>
											</tr>
										</c:forEach>
										</c:otherwise>
									</c:choose>
									</tbody>
								</table>
								<div class="container" id="pageNumContainer">
									<%--[이전으로]에 대한 사용여부 처리 --%>
						
									<c:if test="${pvo.beginPage == 1 }">
										<button class="btn btn-link" disabled>
											<i class="fa fa-angle-left" style="font-size:24px"></i>
										</button>
									</c:if>
									<c:if test="${pvo.beginPage != 1 }">
											<button class="btn btn-link" onclick="pageGo(${pvo.beginPage - 1 })">
											<i class="fa fa-angle-left" style="font-size:24px"></i>
											</button>
									</c:if>	
									<c:forEach var="pageNo" begin="${pvo.beginPage }" end="${pvo.endPage }">
										
										<c:if test="${pageNo == pvo.nowPage }">
											<button class="now btn btn-link" onclick="pageGo(${pageNo })">${pageNo }</button>
										</c:if>	
										<c:if test="${pageNo != pvo.nowPage }">
											<button class="btn btn-link pageGo" onclick="pageGo(${pageNo })">${pageNo }</button>
										</c:if>		
											
									</c:forEach>
									<%--[다음으로]에 대한 사용여부 처리 --%>
									<c:if test="${pvo.endPage >= pvo.totalPage }">
										<button class="btn btn-link" disabled>
											<i class="fa fa-angle-right" style="font-size:24px"></i>
										</button>
									</c:if>
									<c:if test="${pvo.endPage < pvo.totalPage }">
										
										<button class="btn btn-link" onclick="pageGo(${pvo.endPage + 1 })">
											<i class="fa fa-angle-right" style="font-size:24px"></i>
										</button>
									</c:if>	
								</div>
							</div>
						</div>

					</div>
					
				</div>

			</div>
            <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->


    <!-- Bootstrap core JavaScript-->
    <script src="../css/vendor/jquery/jquery.min.js"></script>
    <script src="../css/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    
    <!-- Core plugin JavaScript-->
    <script src="../css/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../css/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../css/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../css/js/demo/chart-area-demo.js"></script>
    <script src="../css/js/demo/chart-pie-demo.js"></script>
    <script>
   
        // '페이지 이동' 버튼에 클릭 이벤트 리스너 등록
		function pageGo(pageNum){
			$.ajax ({
				url: "adminSellerList.do",
				type: "POST",
				data: {pageNum : pageNum},
				dataType: "json", 
				success: function(response){
					if(response != null){
						console.log(response.list[0].sellerId);
						let dispTag = "";
						
						for(let i = 0; i < response.list.length; i++ ){
							vo = response.list[i];
							console.log(vo);
							dispTag += "<tr class='card-body' >";
							dispTag += "<td>" + vo.sellerId + "</td>"
							dispTag += "<td>" + vo.companyName + "</td>"
							dispTag += "<td>" + vo.registrationNum + "</td>"
							dispTag += "<td>" + vo.representative + "</td>"
							dispTag += "<td>" + vo.sellerType + "</td>"
							dispTag += "<td>" + vo.customerEmail + "</td>"
							dispTag += "<td>" + vo.customerCenter + "</td>"
							dispTag += "<td>" + vo.sellerStatus + "</td>"
							dispTag += "<td>" + vo.sellerRegdate + "</td>"
							dispTag += "<td>" + vo.sellerChangeDate + "</td>";
							dispTag += "<tr>";
							
						}
						$("#ajaxtable").html(dispTag);
						console.log(response.pvo);
						console.log(response.pvo.beginPage);
						console.log(response.pvo.beginPage);
						console.log(response.pvo.endPage);
						
						
						let pageDispTag = "";
						
						<%--[이전으로]에 대한 사용여부 처리 --%>
						if(response.pvo.beginPage == 1){
							pageDispTag += "<button class='btn btn-link' disabled>";
							pageDispTag += "<i class='fa fa-angle-left' style='font-size:24px'></i></button>";
						}
						if(response.pvo.beginPage != 1){
							pageDispTag += "<button class='btn btn-link' onclick=\"pageGo(" + (response.pvo.beginPage - 1) + ")\">";
							pageDispTag += "<i class='fa fa-angle-left' style='font-size:24px'></i></button>";
						}
						<%-- 숫자버튼 나열 --%>
						for(let i = response.pvo.beginPage; i <= response.pvo.endPage; i++ ){
							if(i == response.pvo.nowPage){
								pageDispTag += "<button class='now btn btn-link' onclick=\"pageGo(" + i + ")\">" + i + "</button>"
							}
							if(i != response.pvo.nowPage){
								pageDispTag += "<button class='btn btn-link'  onclick=\"pageGo(" + i + ")\">" + i + "</button>"
							}
						}
						
						<%--[다음으로]에 대한 사용여부 처리 --%>
						if(response.pvo.endPage >= response.pvo.totalPage){
							pageDispTag += "<button class='btn btn-link' disabled>";
							pageDispTag += "<i class='fa fa-angle-right' style='font-size:24px'></i></button>";
						}
						if(response.pvo.endPage < response.pvo.totalPage){
							pageDispTag += "<button class='btn btn-link' onclick=\"pageGo(" + (response.pvo.endPage + 1) + ")\">";
							pageDispTag += "<i class='fa fa-angle-right' style='font-size:24px'></i></button>";
						}
						
						$("#pageNumContainer").empty().append(pageDispTag);		
					}
								
				},
				error: function(xhr, status, error) {
				    console.error("오류 발생:", error);
					alert("서버 오류 : 담당자에게 문의하세요.");
				}
				
			});
			
		}
</script>

</body>

</html>