<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지(찜한상품)</title>
<!-- 메뉴바 외 코드 -->
<link href="${pageContext.request.contextPath}/css/cssStyle/style.css" rel="stylesheet" />
<!-- 마이페이지 css -->
<link href="${pageContext.request.contextPath}/css/cssStyle/userMyPageStyle.css" rel="stylesheet" />
<!-- 메뉴바 부트스트랩 템플릿 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
<!-- jQuery import 스크립트  -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
	//로그인 풀리면 로그인 페이지로 이동 
	window.onload = function () {
		if("${loginUser}" == ""){
			alert("로그인하셔야 본 서비스를 이용하실 수 있습니다.");
			location.href="/biz/user/goUserLoginPage.do";
		}
	}
	//장바구니 담기
	function handleToAddCart(productId){
		if("${loginUser}" === ""){
			alert('로그인 후 상품을 담을 수 있습니다.');
			location.href="/biz/user/goUserLoginPage.do";
		} else {
			//location.href="/biz/cart/getProductId.do?productId=" + productId;
			window.open ("/biz/cart/getProductId.do?productId=" + productId, 'popUp', 'width=500, height=300, resizable=yes, scrollbars=yes')
		}
	}
</script>
</head>
<body>
	<!-- header -->
	<%@ include file="../../../css/headerFooter/shopHeader.jsp"%>
	<!-- ------------------------------------------------------------------------ -->
	<%@ include file="../../../css/headerFooter/shopMyPage.jsp"%>
	<!-- 챗봇 -->
	<%@ include file="../chatBot/kitchenChat.jsp" %>
	<%-- ${pickedProductList } --%>
	
	<!-- 여기 사이에 마이페이지 본문내역 들어가야 함 -->
	<div class="css-171zbec">
		<div class="css-xa5js9">
			<!-- N : 찜한 상품 총 개수  -->
			<h2 class="css-y83uep">찜한 상품(${pickedListCount })</h2>
			<!-- <span class="css-a3vgo2">찜한 상품은 최대 200개까지 저장됩니다.</span> -->
		</div>
		<div class="css-a3z6ut" style="position: relative;">
			<div style="overflow: visible; width: 0px;">
				<div>
					<div aria-label="grid" aria-readonly="true"
						class="ReactVirtualized__Grid ReactVirtualized__List" role="grid"
						tabindex="0"
						style="box-sizing: border-box; direction: ltr; height: auto; position: relative; width: 780px; will-change: transform; overflow: hidden;">
						<div class="ReactVirtualized__Grid__innerScrollContainer"
							role="rowgroup"
							style="width: auto; max-width: 780px; overflow: hidden; position: relative;">
							
							<!-- 찜한 상품이 없을 떄 -->
							<c:if test="${empty pickedProductList}">
							    <br><br>
							    <p style="text-align: center;">찜한 상품이 없습니다.</p>
							</c:if>
							<!-- 찜한 상품 리스트  -->
							<c:forEach var="productVO" items="${pickedProductList }">
							<!-- 상품 1개 div(시작) -->
							<div class="css-1pj4itr">
								<!-- href : 상품 상세페이지 연걸  -->
								<a href="${pageContext.request.contextPath }/product/prodDetail.do?productId=${productVO.productId}" class="css-zw1kn5">
								<span width="60" height="78" class="css-6out1y">
									<span style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;">
										<!-- 상품 썸네일 -->
										<img alt="썸네일" sizes="100vw"
											src="${pageContext.request.contextPath}/productImage/title/${productVO.image}"
											decoding="async" data-nimg="fill" class="css-0" style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
											</span>
											</span>
											</a>
								<div class="css-14z46lg">
									<div class="css-a3z6ut">
										<div class="css-v2aaoi">
										<!-- href : 상품 상세페이지 연걸  -->
										<!-- 상품 이름 -->
												<a href="${pageContext.request.contextPath }/product/prodDetail.do?productId=${productVO.productId}"
													class="css-4ejps8">[${productVO.brand }]
													${productVO.title }</a>
											</div>
										<div class="css-1d6cvj1">
											<!-- 상품 가격 -->
											<span class="css-153tu4t">
											<c:choose>
												<c:when test="${productVO.discountRate != 0 }">
													<fmt:formatNumber value="${productVO.price - (productVO.price * (productVO.discountRate/100))}" type="number"
	                                               	 pattern="#,###" />원
													<span style="text-decoration:line-through; color:rgb(201,201,201)"><fmt:formatNumber value="${productVO.price }" type="number"
		                                               	 pattern="#,###" />원</span>
												</c:when>
												<c:otherwise>
												<fmt:formatNumber value="${productVO.price }" type="number"
	                                               	 pattern="#,###" />원
												</c:otherwise>
											</c:choose>
											</span>
										</div>
									</div>
									<div class="css-jx12wb">
										<!-- 삭제 버튼 -->
										<a href="deletePickedInList.do?productId=${productVO.productId}">
										<button class="css-17giheb" id="likeDeleteBtn" type="button" width="104" height="36" radius="4">
											<span class="css-nytqmg" style="font-weight: 700; color: rgb(51, 51, 51);">삭제</span>
										</button>
										</a>
										<!-- 장바구니 담기 버튼 -->
										<button class="css-x0zbdy" id="addCartBtn" type="button" width="104"
											height="36" radius="4" onclick="handleToAddCart('${productVO.productId}')">
											<span class="css-nytqmg" style="font-weight: 700; color: rgb(231, 129, 17);">
 											<img src="${pageContext.request.contextPath}/css/img/cart.png" alt="카트" class="css-1m3kac1">
												담기</span>
										</button>
									</div>
								</div>
							</div>
							<!-- 상품 1개 div(끝) -->
							</c:forEach>
							
							<!-- 상품 1개 div(시작) -->
 							<%-- <div class="css-1pj4itr">
								<!-- href : 상품 상세페이지 연걸  -->
								<a href="#" class="css-zw1kn5">
								<span width="60" height="78" class="css-6out1y">
									<span style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;">
										<!-- 상품 썸네일 -->
										<img alt="썸네일" sizes="100vw"
											src="https://img-cf.kurly.com/cdn-cgi/image/width=120,height=156,fit=crop,quality=85/shop/data/goods/1653036991865l0.jpeg"
											decoding="async" data-nimg="fill" class="css-0" style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
											</span>
											</span>
											</a>
								<div class="css-14z46lg">
									<div class="css-a3z6ut">
										<div class="css-v2aaoi">
										<!-- href : 상품 상세페이지 연걸  -->
										<!-- 상품 이름 -->
											<a href="/goods/5052922" class="css-4ejps8">[Kurly's]R15 통밀 식빵</a>
										</div>
										<div class="css-1d6cvj1">
											<!-- 상품 가격 -->
											<span class="css-153tu4t">3,900원</span>
										</div>
									</div>
									<div class="css-jx12wb">
										<!-- 삭제 버튼 -->
										<button class="css-17giheb" id="likeDeleteBtn" type="button" width="104" height="36" radius="4">
											<span class="css-nytqmg" style="font-weight: 700; color: rgb(51, 51, 51);">삭제</span>
										</button>
										<!-- 장바구니 담기 버튼 -->
										<button class="css-x0zbdy" id="addCartBtn" type="button" width="104"
											height="36" radius="4">
											<span class="css-nytqmg" style="font-weight: 700; color: rgb(231, 129, 17);">
 											<img src="${pageContext.request.contextPath}/css/img/cart.png" alt="카트" class="css-1m3kac1">
												담기</span>
										</button>
									</div>
								</div>
							</div> --%>
							<!-- 상품 1개 div(끝) -->
							
						</div>
					</div>
				</div>
			</div>
			<div class="resize-triggers">
				<div class="expand-trigger">
					<div style="width: 821px;"></div>
				</div>
				<div class="contract-trigger"></div>
			</div>
		</div>
	</div>





	<!-- 여기 사이에 마이페이지 본문내역 들어가야 함 -->


	</div>
	</div>




	<!-- ------------------------------------------------------------------------ -->
	<!-- footer -->
	<%@ include file="/css/headerFooter/shopFooter.jsp"%>
	<!-- ------------------------------------------------------------------------ -->

	<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>