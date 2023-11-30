<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
function likedList() {
	//alert("찜한상품으로 가기 ");
    location.href = '/biz/user/userLikedListPage.do';
}
</script>    
	<div calss="css-2b29tl">
	<div class="css-1jgbowa">
	<div class="css-1oynwoh">
	
	<div class="css-1nmq3i1">
	
	<div class="css-zjik7">
	</div>
	<!-- 회원 이름 -->
	<div class="css-38n0u7">
	<strong class="css-1ssqp0h">${loginUser.userName }님</strong>
	</div>
	
	</div>
	<!-- 이름 옆에 3개 -->
	<div class="css-1jemrvf">
	<div class="css-1lomzjv">
	<!-- 누르면 주문내역으로 이동처리 -->
	<button class="css-1bm0yf4">
	<div class="css-157zkrj">배송중
	<span class="css-14phxgn"></span>
	</div>
	<!-- 배송 중인 상품 개수 -->
	<div class="css-1omzzwx">0 개
	<span class="css-mmvz9h"></span>
	</div>
	</button>
	</div>
	<div class="css-1lomzjv">
<!-- 	<a href="userLikedListPage.do"> -->
	<button class="css-1bm0yf4" onclick="likedList()">
	<div class="css-157zkrj">찜한 상품
	<span class="css-14phxgn"></span>
<!-- 	</a> -->
	</div>
	<!-- 찜한 상품 개수 -->
	<div class="css-1omzzwx">${pickedListCount }
	<span class="css-mmvz9h" style="font-weight: bold;">개
	</span>
	</div>
	</button>
	</div>
	<div class="css-1lomzjv">
	<!-- 커뮤니티 글쓰기 페이지로 이동 -->
	<button class="css-1bm0yf4">
	<div class="css-157zkrj">나의 추천 레시피
	<span class="css-14phxgn"></span>
	</div>
	<div class="css-1omzzwx">등록하기</div>
	</button>
	</div>
	</div>
	
	</div>
	</div>
	
	
	<div class="css-luwwab">
	
	<!-- 주문내역,찜한상품,상품후기,상품문의,개인정보수정 -->
	<!-- 마이페이지 메뉴바(왼쪽 메뉴바) 시작 -->
	<div class="css-833hqy">
	<div class="css-1v4whg">마이키친</div>
	<ul class="css-1x9bshx">
	<!-- 주문내역 -->
	<li>
	<a href="/biz/orders/getMyOrders.do" class="css-g4g0eu">주문내역
	<svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24"><defs><path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
	</defs>
	<g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)"><use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg>
	</a>
	</li>
	<!-- 찜한 상품 -->
	<li>
	<a class=" css-g4g0eu" href="/biz/user/userLikedListPage.do">찜한상품
	<svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24"><defs><path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
	</defs>
	<g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)"><use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg>
	</a>
	</li>
	<!-- 상품후기 -->
	<li>
	<a class=" css-g4g0eu" href="/biz/product/goMyReview.do">상품후기
	<svg xmlns="http://www.w3.org/2000/svg href="/biz/product/goMyReview.do"" width="19" height="19" viewBox="0 0 24 24"><defs><path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
	</defs>
	<g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)"><use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg>
	</a>
	</li>
	<!-- 상품문의 -->
	<li>
	<a class=" css-g4g0eu" href="/biz/product/goMyInquiry.do">상품 문의
	<svg xmlns="http://www.w3.org/2000/svg href="/biz/product/goMyInquiry.do"" width="19" height="19" viewBox="0 0 24 24"><defs><path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
	</defs>
	<g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)"><use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg>
	</a>
	</li>
	<!-- 홈스토랑 -->
	<li>
	<a class=" css-g4g0eu" href="/biz/community/myCommunityList.do">홈스토랑
	<svg xmlns="http://www.w3.org/2000/svg  " width="19" height="19" viewBox="0 0 24 24"><defs><path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
	</defs>
	<g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)"><use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg>
	</a>
	</li>
	<!-- 개인정보수정 -->
	<li>
	<a class=" css-g4g0eu" href="/biz/user/modifyConfirm.do">개인 정보 수정
	<svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24"><defs><path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
	</defs>
	<g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)"><use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use></g></g></g></g></g></svg>
	</a>
	</li>
	</ul>
	</div>
	
	<!-- 마이페이지 메뉴바(왼쪽 메뉴바) 끝 -->