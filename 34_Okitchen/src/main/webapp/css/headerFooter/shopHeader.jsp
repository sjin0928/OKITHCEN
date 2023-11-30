<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
   .navbar{padding: 0.9rem 1rem;}
</style>
<script>
function validateKeyword(event) {
    var keywordValue = document.getElementById('gnb_search').value;
    if (keywordValue.trim() === "") { // 검색어가 공백인 경우
        alert('검색어를 입력해주세요.');
        event.preventDefault();
    }
    // 검색어가 있을 때, 폼은 기본적으로 submit 버튼에 의해 처리됩니다.
}

function likedListBtnClicked() {
    //alert("상단 하트 클릭");
    if("${loginUser}" === "") {
        alert("로그인하셔야 본 서비스를 이용하실 수 있습니다.");
        location.href = "/biz/user/goUserLoginPage.do";
    } else {
        location.href = "/biz/user/userLikedListPage.do";
    }
}

function goCart(){
	//alert("장바구니 클릭");
	if("${loginUser}" === ""){
		alert("로그인 후 장바구니 목록을 조회하실 수 있습니다.");
		location.href="/biz/user/goUserLoginPage.do";
	} else {
		var form = document.getElementById("getCartForm");
	    form.submit();
	}
}
</script>
<!-- Header -->   
   <div class="css-t79vuj">
   
   <!-- 로그인 시 회원가입,로그인 없어지고 마이페이지로 변경되어야 함 -->
   <!-- 로그인 부분 start -->
   <!-- 회원가입 -->
   <div class="css-fexq9b">
   <!-- 클릭 시 회원가입 페이지 이동 -->
   <c:choose>
   <c:when test="${empty loginUser}">
	   <a class="css-xygizb" href="/biz/user/goJoinPage.do">회원가입</a>
	   <div class="css-1qgm48u"></div>

	   <a class="css-oyffzd" href="/biz/user/goUserLoginPage.do">로그인</a>
	   <div class="css-1qgm48u"></div>
	   <div class="css-1qolcqm">
	   <a class="css-oyffzd"href="/biz/notice/goNotice.do">고객센터</a>
   </div>
   </c:when>

   <c:otherwise>
   		<a class="css-xygizb" href="/biz/orders/getMyOrders.do">마이페이지</a>
	   <div class="css-1qgm48u"></div>

	   <a class="css-oyffzd" href="/biz/user/userLogout.do">로그아웃</a>
	   <div class="css-1qgm48u"></div>
	   <div class="css-1qolcqm">
	   <a class="css-oyffzd" href="/biz/notice/goNotice.do">고객센터</a>
   </div>
   </c:otherwise>		
   </c:choose>
   </div>
   

   <!-- 로그인 부분 end -->
    <!-- 로고 -->
   <div class="css-r7wmjj e15sbxqa3">
   <div class="css-boc80u ekdqe1a2">
   <a href="${pageContext.request.contextPath}/index.do">
   <img src="${pageContext.request.contextPath}/css/img/logo.png" alt="오키친 로고" class="css-17mnrrx e1s3pt0j0">
   </a>
   </div>
   <!-- 서치바 -->
   <div class="css-pqw0uk">
   <div class="css-w444a2">
   <form action="${pageContext.request.contextPath }/collections/searchList.do" method="post">
   <input id="gnb_search" placeholder="검색어를 입력해주세요" name="keyword" class="css-11ntk83" style="transform: translate(-1px, -6px);">
   <button id="submit" type="submit" onclick="validateKeyword(event)" class="css-ywxmlw" style="transform: translate(34px, 3px);"></button>
   </form>
   </div>
   </div>
   <!-- 찜,장바구니 -->
   <div class="css-pqw0uk e15sbxqa1">
   <div class="css-c4pbxv e15sbxqa0">
	<button class="css-231fw3" onclick="likedListBtnClicked()" id="likedListBtn" aria-label="찜하기" type="button">
	</button>
	<div class="css-ff2aah e14oy6dx2">
	
 <form id="getCartForm" action="/biz/cart/getCart.do" method="post">
  <button type="button" class="css-g25h97 e14oy6dx1" aria-label="장바구니" onclick="goCart()"></button>
</form>
   </div>
   </div>
   </div>
   </div>
   </div>

      <div class="sticky-top">
   <nav class="navbar navbar-expand-lg bg-light border-0" data-bs-theme="light">
  <div class="container-fluid">
    <div class="collapse navbar-collapse d-flex justify-content-center"" id="navbarColor03">
      <ul class="navbar-nav ms-auto">
         <li class="nav-item dropdown" style="margin-right: 120px;">
          <a class="nav-link dropdown-toggle" style="font-size: 14px;" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">카테고리</a>
          <div class="dropdown-menu">
             <!-- 메뉴 카테고리 -->
            <a class="dropdown-item" href="${pageContext.request.contextPath }/collections/category.do?category=vege">
            	채소
            </a>
            <a class="dropdown-item" href="${pageContext.request.contextPath }/collections/category.do?category=fruit">
            	과일
           	</a>
            <a class="dropdown-item" href="${pageContext.request.contextPath }/collections/category.do?category=meat">
            	정육/계란
           	</a>
            <a class="dropdown-item" href="${pageContext.request.contextPath }/collections/category.do?category=seafood">
            	해산물
           	</a>
            <a class="dropdown-item" href="${pageContext.request.contextPath }/collections/category.do?category=snack">
            	간식/디저트
           	</a>
            <a class="dropdown-item" href="${pageContext.request.contextPath }/collections/category.do?category=bakery">
            	베이커리
           	</a>
            <a class="dropdown-item" href="${pageContext.request.contextPath }/collections/category.do?category=seasoning">
            	조미료
           	</a>
            <a class="dropdown-item" href="${pageContext.request.contextPath }/collections/category.do?category=drink">
            	생수/음료
           	</a>
            <a class="dropdown-item" href="${pageContext.request.contextPath }/collections/category.do?category=mealkit">
            	간편식/샐러드
           	</a>
          </div>
        </li>
        <li class="nav-item" style="margin-right: 150px;">
          <a class="nav-link active" href="${pageContext.request.contextPath }/collections/newProdList.do" style="font-size: 14px;">신상품
            <span class="visually-hidden"></span>
          </a>
        </li>
        <li class="nav-item" style="margin-right: 150px;">
          <a class="nav-link" href="${pageContext.request.contextPath }/collections/bestProdList.do" style="font-size: 14px; ">베스트</a>
        </li>
        <li class="nav-item" style="margin-right: 150px;">
          <a class="nav-link" href="${pageContext.request.contextPath }/collections/discProdList.do" style="font-size: 14px;">특가/할인</a>
        </li>
        <li class="nav-item" style="margin-right: 100px;">
          <a class="nav-link" href="/biz/community/getCommunityList.do" style="font-size: 14px;">추천 레시피</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
</div>