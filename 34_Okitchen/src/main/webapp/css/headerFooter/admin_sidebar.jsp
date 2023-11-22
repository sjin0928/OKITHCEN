<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 		<!-- ### Sidebar ### -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - 로고와 네임 클릭시 메인페이지로 이동 -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="adminIndex.jsp">
                <div class="sidebar-brand-icon rotate-n-15">
	            	<!-- 오늘의 식탁 로고 이미지로 수정해야됨 -->
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">오늘의 식탁</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">
            <hr class="sidebar-divider">
			
			<!-- Nav Item - 상품관리 Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseProduct"
                    aria-expanded="true" aria-controls="collapseProduct">
                    <span>상품관리</span>
                </a>
                <div id="collapseProduct" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!-- <h6 class="collapse-header">Custom Components:</h6> -->
                        <a class="collapse-item" href="#">전체상품조회</a>
                        <a class="collapse-item" href="#">승인대기관리</a>
                    </div>
                </div>
            </li>
            
            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Nav Item - 회원관리 Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseMember"
                    aria-expanded="true" aria-controls="collapseMember">
                    <span>회원관리</span>
                </a>
                <div id="collapseMember" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!-- <h6 class="collapse-header">Custom Components:</h6> -->
                        <a class="collapse-item" href="#">전체회원조회</a>
                        <a class="collapse-item" href="#">회원리뷰조회</a>
                    </div>
                </div>
            </li>
			
			<!-- Divider -->
            <hr class="sidebar-divider">
            
            <!-- Nav Item - 판매자관리 Menu -->
            <li class="nav-item">
			<!-- 상위메뉴 클릭시 이동하는 경우 href 수정해야됨 -->
                <a class="nav-link collapsed" href="seller/adminSellerGo.do" >
                    <span>판매자관리</span>
                </a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">
			
            
            <!-- Nav Item - 주문관리 Menu -->
            <li class="nav-item">
<!-- 상위메뉴 클릭시 이동하는 경우 href 수정해야됨 -->            
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseOrder"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <span>주문/배송관리</span>
                </a>
            </li>
            
            <!-- Divider -->
            <hr class="sidebar-divider">
            
            <!-- Nav Item - 매출관리 Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSales"
                    aria-expanded="true" aria-controls="collapseSales">
                    <!-- <i class="fas fa-fw fa-cog"></i> -->
                    <span>매출관리</span>
                </a>
                <div id="collapseSales" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!-- <h6 class="collapse-header">Custom Components:</h6> -->
                        <a class="collapse-item" href="#">기간별 총 매출 조회</a>
                        <a class="collapse-item" href="#">업체별 매출 조회</a>
                    </div>
                </div>
            </li>
            
            <!-- Divider -->
            <hr class="sidebar-divider">
            
            <!-- Nav Item - 게시판관리 Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBoard"
                    aria-expanded="true" aria-controls="collapseBoard">
                    <span>게시판관리</span>
                </a>
                
                <div id="collapseBoard" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="#">공지사항등록</a>
                        <a class="collapse-item" href="#">1:1문의내역</a>
                    </div>
                </div> 
            </li>
            
            <!-- Divider -->
            <hr class="sidebar-divider">
            
            <!-- Nav Item - 커뮤니티관리 Menu -->
            <li class="nav-item">
<!-- 상위메뉴 클릭시 이동하는 경우 href 수정해야됨 -->        
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCommunity"
                    aria-expanded="true" aria-controls="collapseCommunity">
                    <span>커뮤니티관리</span>
                </a>
            </li>
            
            <!-- Divider -->
            <hr class="sidebar-divider">
        </ul>
	<!-- #### End of Sidebar #### -->
