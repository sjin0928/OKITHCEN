<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>관리자페이지_게시물 전체 목록 조회</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/css/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/css/cssStyle/sb-admin-2.min.css" rel="stylesheet">
    
<style>

</style>

<style>

* {
  box-sizing: border-box;
}

/* 맨위 */
.grand-all-area { 
  flex: 1;
  width: 100%;
}

/* 두번째 위 */
.large-all-area {
	position: relative;
}

/* 세번째 위 */
.medium-all-area {
	max-width: 1256px;
	margin: 0px auto;
	padding: 0px 60px;
}

/* 네번째 위 */
.small-all-area {
	position: relative;
    height: 3806px;
}
/* 다섯번째 위 */
.small2-all-area {
    width: 100%;
  	height: 100%;
  	position: absolute;
  	top: 0px;
}
/* 여섯번째 위 */
.small3-all-area {
	box-sizing: border-box;
    padding-top: 0px;
  	padding-bottom: 1891px;
  	margin-top: 0px;
}

/* 한 열 크게*/
.one-row {
	overflow-anchor: none;
}

/* 한 열 작게 */
.one-row-2 {
	/* width: 100%; */
  	display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

/* 한 열 작게 하위 모두 : 즉 한개의 컨텐츠가 한열에 4개 씩 오게*/
.one-row-2 > * {
	width: 25%;
}
/* pic에 맞게 사진 자동 조절 */
.pic {
    width: 100%;
    height: 100%;
    object-fit: cover; /* 이미지가 비율을 유지하며 부모 요소에 맞게 조절되도록 설정 */
    border-radius: 4px;
}

/* 한개 컨텐츠 테두리 */
.one-content {
	width: calc(25% - 20px); /* 각각의 간격을 조절하기 위해 여백을 뺀 크기로 설정 */
    margin-bottom: 40px; /* 각각의 간격을 조절하기 위해 하단 여백 추가 */
    box-sizing: border-box; /* 내부 여백과 테두리를 포함한 크기를 계산하도록 box-sizing 속성 설정 */
    
    background-color: #FBFBEF;
}

/* 사진 제목 큰 테두리 */
.pic-title {
	position: relative;
}

/* 사진 제목 작은 테두리 */
.pic-title-detail {
	aspect-ratio: 1 / 1;
 	margin-bottom: 10px;
}

/* 사진 */
.pic img{
  	object-fit: cover;
    width: 100%;
    height: 100%;
    border-radius: 4px;
}

/* 제목 */ 
.title {
    font-size: 20px;
    font-style: oblique;
    line-height: 18px;
    color: rgb(47, 52, 56);
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: pre-line;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    margin-bottom: 6px;
    word-break: break-all;
    font-weight: bold;
    
    
}


/* 작성자 조회수 */
.id-hit {
	
	display: flex;
    margin-top: 8px;
    -webkit-box-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    align-items: center;
}

/* 작성자 */
.id {
	font-size: 16px;
	display: flex;
    gap: 12px;
    -webkit-box-align: center;
    align-items: center;
    width: fit-content;
    max-width: 100%;
    font-weight: bold;
}

/* 아이콘 조회수 테두리  */
.hit {

}

/* 조회수아이콘 */
.hit-icon {
    display: inline-block;
    font-size: 24px;
    line-height: 1;
    color: rgb(33, 38, 41);
    margin-right: 4px;
    text-align: center;
}

/* 조회수표시 */
.hit-number {
	font-size: 24px;
    line-height: 20px;
    color: rgb(47, 52, 56);
}

/* 글쓰기 버튼 부모div */
.write-post {
	max-width: 1256px;
    margin: 0px auto;
    padding: 0px 60px;
    display: flex;
    justify-content: flex-end;
}

/* 이미지 호버 */
.pic img {
    transition: transform 0.3s ease-in-out;
}
.pic img:hover {
    transform: scale(1.2);
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

                        <!-- Nav Item - 관리자명(예시) -->
						<li class="nav-item no-arrow">
						    <span class="nav-link">
						        <span class="mr-2 d-none d-lg-inline text-gray-600 small">관리자명</span>
						    </span>
						</li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -------------------------------------------------------------------------------------------------------------------->
                
				<div class="container-fluid">
		<!-- ---------------------------------------------- 내 컨텐츠 영역-------------------------------------------------------------------------- -->			
					
	<!-- 마이페이지 커뮤니티 페이지 -->
	<c:if test="${empty communityListAdmin }">
		<br><br>
		<h3 style="text-align:center;"> 현재 작성된 글이 없습니다. </h3>
	</c:if>	
	
	<div class="grand-all-area" >
		<div class="large-all-area" >
			<div class="medium-all-area" >
				<div class="small-all-area" >
					<div class="small2-all-area" >
						<div class="small3-all-area">
							<div class="one-row">
								<div class="one-row-2">
									
									<c:forEach var="community" items="${communityListAdmin}">
									<span class="one-content">
										<div class="one-content-detail" >
											<div class="pic-title" >
												<div class="pic-title-detail">
													<div class="pic" >
														<a href="/biz/community/getCommunity.do?communityId=${community.communityId}"><img src="${pageContext.request.contextPath}/community/img/title/${community.commImage}"  alt="대표이미지" >
													</div>
													<div class="title" >
														<a href="/biz/community/getCommunity.do?communityId=${community.communityId}">${community.title}</a>
													</div>
												</div>
											</div>
											<div class="id-hit" >
												<div class="id" >${community.userId}</div>
												<div class="hit" >
													<span class="hit-icon" ><i class="bi bi-emoji-heart-eyes"></i></span>
													<span class="hit-number" >${community.commHit}</span>
												</div>
											</div>
										</div>
									</span>
									</c:forEach>
								
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	
					
					
					
            <!-- /.container-fluid ------------------------------------------------------------------------------------------------------------------->

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
    <script src="css/js/demo/chart-area-demo.js"></script>
    <script src="css/js/demo/chart-pie-demo.js"></script>

</body>

</html>