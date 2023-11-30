<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 		<!-- ### Sidebar ### -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - 로고와 네임 클릭시 메인페이지로 이동 -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${pageContext.request.contextPath}/adminIndex.do">
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
                        <a class="collapse-item" href="${pageContext.request.contextPath}/admin/allProdList.do">전체상품조회</a>
                        <a class="collapse-item" href="${pageContext.request.contextPath}/admin/confirmProd.do">승인대기관리</a>
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
                        
                        <!-- 전체회원조회 -->
                        <a class="collapse-item" href="/biz/admin/userList.do">전체회원조회</a>
                    </div>
                </div>
            </li>
			
			<!-- Divider -->
            <hr class="sidebar-divider">
            
            <!-- Nav Item - 판매자관리 Menu -->
            <li class="nav-item">
			<!-- 상위메뉴 클릭시 이동하는 경우 href 수정해야됨 -->
                <a class="nav-link collapsed" href="${pageContext.request.contextPath}/seller/adminSellerGo.do" >
                    <span>파트너관리</span>
                </a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">
			
            
            <!-- Nav Item - 주문관리 Menu -->
            <li class="nav-item">
<!-- 상위메뉴 클릭시 이동하는 경우 href 수정해야됨 -->            
                <a class="nav-link collapsed" href="${pageContext.request.contextPath}/adminOrdersList/goAdminOrderHistory.do" >
                    <span>주문/배송관리</span>
                </a>
            </li>
            
            <!-- Divider -->
            <hr class="sidebar-divider">
            
            <!-- Nav Item - 게시판관리 Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="${pageContext.request.contextPath}/admin/goAdminNotice.do">
                    <span>공지사항 관리</span>
                </a>
            </li>
            
            <!-- Divider -->
            <hr class="sidebar-divider">
            
            <!-- Nav Item - 커뮤니티관리 Menu -->
            <li class="nav-item">
<!-- 상위메뉴 클릭시 이동하는 경우 href 수정해야됨 -->        
                <a class="nav-link collapsed"  data-toggle="collapse-false" data-target="#collapseCommunity-false"
                    aria-expanded="true" aria-controls="collapseCommunity" href="${pageContext.request.contextPath}/adminOrdersList/getCommunityListByAdmin.do">
                    <span>커뮤니티관리</span>
                </a>
            </li>
            
            <!-- Divider -->
            <hr class="sidebar-divider">
        </ul>
	<!-- #### End of Sidebar #### -->
