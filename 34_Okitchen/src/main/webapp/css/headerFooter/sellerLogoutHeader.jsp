<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<div class="container" style="height: 50px;">
		<br>
		<div class="css-t79vuj e15sbxqa2" style="height: 50px;">
		<!-- 로그아웃 부분 start -->
			<div class="css-fexq9b eo7pjfk4">
				<div class="css-1qgm48u eo7pjfk0"></div>
				<a class="css-oyffzd eo7pjfk2" href="${pageContext.request.contextPath}/seller/sellerLogout.do">로그아웃</a>
				<div class="css-1qgm48u eo7pjfk0"></div>
				<div class="css-1qolcqm eo7pjfk3"></div>
			</div>
		</div>
		<!-- 로그아웃 부분 end -->
	</div>
	<!-- 로고 -->
	<div class="css-r7wmjj e15sbxqa3" style="display: block; height: 200px;">
		<div class="css-boc80u ekdqe1a2" style= "height: 150px; background-color: rgb(231, 129, 17); color: white; font-size: 60px; text-align: center; justify-content: center;">
			<p style="text-align: center;">O Kitchen Partner</p>
		</div>	
	</div>

    <div class="container" style="display: block;">
	<nav class="navbar navbar-expand-lg  border-0" data-bs-theme="light" id="navBar_container">
  <div>
    <div class="collapse navbar-collapse d-flex justify-content-center" id="navbarColor03">
      <ul class="navbar-nav">
      	<li class="nav-item dropdown" style="margin-right: 50px;">
          <a class="nav-link dropdown-toggle" style="font-size: 14px; width: auto;" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">상품관리</a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="${pageContext.request.contextPath}/product/productList.do">상품목록</a>
            <a class="dropdown-item" href="${pageContext.request.contextPath}/product/registerProduct.do">상품등록</a>
          </div>
        </li>
        <li class="nav-item dropdown" style="margin-right: 50px;">
          <a class="nav-link dropdown-toggle" style="font-size: 14px; width: auto;" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">문의관리</a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="/biz/seller/Sellerinquirypage.do">나의 문의 조회</a>
            <a class="dropdown-item" href="/biz/seller/SellerinquiryAnsPage.do">답변완료 문의 조회</a>
          </div>
        </li>
              	<li class="nav-item dropdown" style="margin-right: 50px;">
          <a class="nav-link dropdown-toggle" style="font-size: 14px; width: auto;" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">마이페이지</a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="${pageContext.request.contextPath}/seller/sellerUpPwCheck.do">회원 정보 수정</a>
            <a class="dropdown-item" href="${pageContext.request.contextPath}/seller/sellerWithdrawal.do">회원 탈퇴</a>
          </div>
        </li>
      </ul>
    </div>
  </div>
</nav>
</div>
