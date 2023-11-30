<%@page import="com.spring.biz.user.UsersVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
<!-- 메뉴바 외 코드 -->
<link href="${pageContext.request.contextPath}/css/cssStyle/style.css"
	rel="stylesheet" />
<!-- 회원가입 css -->
<link
	href="${pageContext.request.contextPath}/css/cssStyle/userJoinStyle.css"
	rel="stylesheet" />
<!-- 메뉴바 부트스트랩 템플릿 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css"
	integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG"
	crossorigin="anonymous">
<!-- 상품 css -->
<link
	href="${pageContext.request.contextPath}/css/cssStyle/indexProduct.css"
	rel="stylesheet" />
<script>
//챗봇
if ("${loginUser.userId}" != "") {
    var ht = null;
    var userId = "${loginUser.userId}";
    (function(id, scriptSrc, callback) {
        var d = document,
            tagName = 'script',
            $script = d.createElement(tagName),
            $element = d.getElementsByTagName(tagName)[0];

        $script.id = id;
        $script.async = true;
        $script.src = scriptSrc;

        if (callback) { $script.addEventListener('load', function (e) { callback(null, e); }, false); }
        $element.parentNode.insertBefore($script, $element);
    })('happytalkSDK', 'https://chat-static.happytalkio.com/sdk/happytalk.chat.v2.min.js', function() {
        ht = new Happytalk({
            siteId: '1000228017',
            siteName: '오키친',
            categoryId: '172847',
            divisionId: '172848',
            partnerId: '2',
            shopId: '1',
            params:'site_uid=' + userId
        });
    });
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
<%-- \${prodDiscList } : ${prodDiscList } <br> --%>

	<!-- header -->
	<%@ include file="../../../css/headerFooter/shopHeader.jsp"%>
	<!-- ------------------------------------------------------------------------ -->
	
	<main>
		<div class="css-59n5un e1ne12di0">
			<div class="SectionTitle undefined css-151twnq ej3ms6t0">
				<div class="css-1azakc e13967gz1" style="margin-bottom: 27px;">
					<a href="${pageContext.request.contextPath }/collections/newProdList.do"><img
						src="https://collection-image.kurly.com/cdn-cgi/image/width=1050,quality=85/product-collections/2451/QkPlHJ8n7HTCaEKUqsxXsr1CmPt5v5AneCEmEQhR.jpg"
						alt="배너 이미지" class="css-1217fb7 e13967gz0"></a>
				</div>
				<a
					href="${pageContext.request.contextPath }/collections/discProdList.do"
					class="css-70ngop e10b7g5l1" style="text-decoration: none;"> <span
					class="css-r6zrzr ej3ms6t2">🖤 역대급 블랙 특가 🖤</span> <span
					class="css-1m2dcd9 e10b7g5l0"> <img
						src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxwYXRoIGQ9Ik0wIDBoMzJ2MzJIMHoiLz4KICAgICAgICA8cGF0aCBkPSJtMTAuOTUyIDIzLjM4NCAyLjA5NiAyLjE0NiAxMC4wNTUtOS44MjUtOS43MDEtMTAuMjc4LTIuMTgyIDIuMDYgNy42NzcgOC4xMzN6IiBmaWxsPSIjMzMzIiBmaWxsLXJ1bGU9Im5vbnplcm8iLz4KICAgIDwvZz4KPC9zdmc+Cg=="
						alt="더보기 아이콘">
				</span>
				</a>
				<p class="css-149yh9z ej3ms6t1">장바구니 파격 세일부터 골라담기까지!</p>
			</div>

			<div class="css-ouzwxv eisyv963" style="margin-bottom: 50px;">
				<div
					class="swiper swiper-initialized swiper-horizontal swiper-pointer-events css-f095o0 eisyv964">
					<div class="swiper-wrapper"
						style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">

						<!-- 상품(시작)  -->
						<c:forEach items="${prodDiscList }" var="prod"  varStatus="loop">
							 <c:if test="${loop.index < 4}">
							<div class="swiper-slide swiper-slide-active"
								style="width: 249px; margin-right: 18px;">

								<div class="image-container css-1kyu7i9 e3um3060">
									<a href="${pageContext.request.contextPath }/product/prodDetail.do?productId=${prod.productId}"
											class="e1phasb50 e14udynn0 css-kjc0x1 e1cmg4vm6"
											style="text-decoration: none;"> <span style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;">
												<img alt="대표이미지" sizes="100vw" src="${pageContext.request.contextPath}/productImage/title/${prod.image}"
												decoding="async" data-nimg="fill" class="css-0"
												style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
										</span>
									</a>
								</div>

								<div class="button-wrapper">
									<button type="button" class="product-function css-13xu5fn e17x72af0" onclick="handleToAddCart('${prod.productId}')">
											<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
												xmlns="http://www.w3.org/2000/svg">
												<path d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
													stroke="#333333" stroke-linecap="square"
													stroke-linejoin="round"></path></svg>	
													담기
										</button>
								</div>
								<a href="${pageContext.request.contextPath }/product/prodDetail.do?productId=${prod.productId}"
										class="e1phasb50 e14udynn0 css-kjc0x1 e1cmg4vm6"
										style="text-decoration: none;">
										<div class="product-info css-1ud9i0q e1cmg4vm5">
											<h3 class="product-name">[${prod.brand }] ${prod.title }</h3>

											<div class="content-row css-1066lcq e1cmg4vm4">
												<div
													class="product-price discount-price css-1fttcpj ei5rudb2">
													<div>
														<span class="dimmed-price css-18tpqqq2 ei5rudb1">
															<fmt:formatNumber value="${prod.price}" type="number"
																pattern="#,###" /> <span class="won">원</span>
														</span>
													</div>
													<div class="discount">
														<c:if test="${prod.discountRate > 0}">
															<span class="discount-rate css-19lkxd2 ei5rudb0">${prod.discountRate}%</span>
															<span class="sales-price css-18tpqqq ei5rudb1" style="color: rgb(51, 51, 51); font-weight: bold;"> <fmt:formatNumber
																	value="${prod.discountedPrice}" type="number"
																	pattern="#,###" /> <span class="won">원</span>
															</span>
														</c:if>
													</div>
												</div>
											</div>
									</a>
								<div class="review-count css-10yu924 e1cmg4vm2">
										<div class="review-icon css-0 e1cmg4vm1">
											<svg width="100%" height="100%" viewBox="0 0 14 14"
												fill="none" xmlns="http://www.w3.org/2000/svg">
<mask id="path-1-inside-1_1513_17755" fill="white">
<path fill-rule="evenodd" clip-rule="evenodd"
													d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path>
</mask>
<path fill="#999"
													d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
													mask="url(#path-1-inside-1_1513_17755)"></path>
<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle>
</svg>
										</div>

										<c:if test="${not empty prod.reviewCnt}">
											<span class="review-number css-15onb60 e1cmg4vm0"
												style="transform: translateY(4px);">${prod.reviewCnt}</span>
										</c:if>

									</div>
								</div>
					</div>
					</c:if>
					</c:forEach>
					<!-- 상품 (끝) -->

				</div>
			</div>
		</div>

	<!-- ==================================== -->
		<div class="css-59n5un e1ne12di0">
			<div class="SectionTitle undefined css-151twnq ej3ms6t0">

				<!-- 카테고리별 전체보기로 연결해야됨 -->
				<a
					href="${pageContext.request.contextPath }/collections/newProdList.do"
					class="css-70ngop e10b7g5l1" style="text-decoration: none;"> <span
					class="css-r6zrzr ej3ms6t2">금주의 신상품</span> <span
					class="css-1m2dcd9 e10b7g5l0"> <img
						src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxwYXRoIGQ9Ik0wIDBoMzJ2MzJIMHoiLz4KICAgICAgICA8cGF0aCBkPSJtMTAuOTUyIDIzLjM4NCAyLjA5NiAyLjE0NiAxMC4wNTUtOS44MjUtOS43MDEtMTAuMjc4LTIuMTgyIDIuMDYgNy42NzcgOC4xMzN6IiBmaWxsPSIjMzMzIiBmaWxsLXJ1bGU9Im5vbnplcm8iLz4KICAgIDwvZz4KPC9zdmc+Cg=="
						alt="더보기 아이콘"></span>
				</a>
			</div>

			<div class="css-ouzwxv eisyv963" style="margin-bottom: 50px;">
				<div
					class="swiper swiper-initialized swiper-horizontal swiper-pointer-events css-f095o0 eisyv964">
					<div class="swiper-wrapper"
						style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">

						<!-- 상품  (시작) -->
						<c:forEach items="${prodAcceptList }" var="prod" varStatus="loop">
							<c:if test="${loop.index < 4}">
								<div class="swiper-slide swiper-slide-active"
									style="width: 249px; margin-right: 18px;">

									<div class="image-container css-1kyu7i9 e3um3060">
										<a
											href="${pageContext.request.contextPath }/product/prodDetail.do?productId=${prod.productId}"
											class="e1phasb50 e14udynn0 css-kjc0x1 e1cmg4vm6"
											style="text-decoration: none;"> <span
											style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;">
												<img alt="대표이미지" sizes="100vw"
												src="${pageContext.request.contextPath}/productImage/title/${prod.image}"
												decoding="async" data-nimg="fill" class="css-0"
												style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
										</span>
										</a>
									</div>

									<div class="button-wrapper">
										<button type="button"
											class="product-function css-13xu5fn e17x72af0" onclick="handleToAddCart('${prod.productId}')">
											<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
												xmlns="http://www.w3.org/2000/svg">
											<path d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
												stroke="#333333" stroke-linecap="square" stroke-linejoin="round"></path> </svg>
											담기
										</button>
									</div>
									<a href="${pageContext.request.contextPath }/product/prodDetail.do?productId=${prod.productId}"
										class="e1phasb50 e14udynn0 css-kjc0x1 e1cmg4vm6"
										style="text-decoration: none;">
										<div class="product-info css-1ud9i0q e1cmg4vm5">
											<h3 class="product-name">[${prod.brand }] ${prod.title }</h3>
											<div class="content-row css-1066lcq e1cmg4vm4">
												<div
													class="product-price discount-price css-1fttcpj ei5rudb2">
													<div>
														<c:choose>
															<c:when
																test="${prod.discountedPrice ne null and prod.discountedPrice ne ''}">
																<!-- 할인이 있는 경우에 적용할 CSS 클래스 -->
																<span class="dimmed-price css-18tpqqq2 ei5rudb1">
																	<fmt:formatNumber value="${prod.price}" type="number"
																		pattern="#,###" /> <span class="won">원</span>
																</span>
															</c:when>
															<c:otherwise>
																<!-- 할인이 없는 경우에 적용할 CSS 클래스 -->
																<span class="dimmed-price css-18tpqqq ei5rudb1"  style="color: rgb(51, 51, 51); font-weight: bold;">
																	<fmt:formatNumber value="${prod.price}" type="number"
																		pattern="#,###" /> <span class="won">원</span>
																</span>
															</c:otherwise>
														</c:choose>
													</div>
													<div class="discount">
														<c:if test="${prod.discountRate > 0}">
															<span class="discount-rate css-19lkxd2 ei5rudb0">${prod.discountRate}%</span>
															<span class="sales-price css-18tpqqq ei5rudb1" style="color: rgb(51, 51, 51); font-weight: bold;"> <fmt:formatNumber
																	value="${prod.discountedPrice}" type="number"
																	pattern="#,###" /> <span class="won">원</span>
															</span>
														</c:if>
													</div>
												</div>
											</div>
									</a>
									<div class="review-count css-10yu924 e1cmg4vm2">
										<div class="review-icon css-0 e1cmg4vm1">
											<svg width="100%" height="100%" viewBox="0 0 14 14"
												fill="none" xmlns="http://www.w3.org/2000/svg">
<mask id="path-1-inside-1_1513_17755" fill="white">
<path fill-rule="evenodd" clip-rule="evenodd" d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path>
</mask>
<path fill="#999" d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
													mask="url(#path-1-inside-1_1513_17755)"></path>
<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle>
</svg>
										</div>
										<span class="review-number css-15onb60 e1cmg4vm0"
											style="transform: translateY(4px);">${prod.reviewCnt}</span>

									</div>
								</div>
					</div>
					</c:if>
					</c:forEach>
					<!-- 상품(끝) -->


				</div>
			</div>
		</div>


		<!-- ==================================== -->
		<div class="css-59n5un e1ne12di0" style="margin-bottom: 100px;">
			<div class="SectionTitle undefined css-151twnq ej3ms6t0">

				<!-- 카테고리별 전체보기로 연결해야됨 -->
				<a
					href="${pageContext.request.contextPath }/collections/reviewProdList.do"
					class="css-70ngop e10b7g5l1" style="text-decoration: none;"> <span
					class="css-r6zrzr ej3ms6t2">리뷰가 많은 상품</span> <span
					class="css-1m2dcd9 e10b7g5l0"> <img
						src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxwYXRoIGQ9Ik0wIDBoMzJ2MzJIMHoiLz4KICAgICAgICA8cGF0aCBkPSJtMTAuOTUyIDIzLjM4NCAyLjA5NiAyLjE0NiAxMC4wNTUtOS44MjUtOS43MDEtMTAuMjc4LTIuMTgyIDIuMDYgNy42NzcgOC4xMzN6IiBmaWxsPSIjMzMzIiBmaWxsLXJ1bGU9Im5vbnplcm8iLz4KICAgIDwvZz4KPC9zdmc+Cg=="
						alt="더보기 아이콘"></span>
				</a>
			</div>

			<div class="css-ouzwxv eisyv963">
				<div
					class="swiper swiper-initialized swiper-horizontal swiper-pointer-events css-f095o0 eisyv964">
					<div class="swiper-wrapper"
						style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">

						<!-- 상품  (시작) -->
						<c:forEach items="${prodReviewList }" var="prod" varStatus="loop">
							<c:if test="${loop.index < 4}">
								<div class="swiper-slide swiper-slide-active"
									style="width: 249px; margin-right: 18px;">

									<div class="image-container css-1kyu7i9 e3um3060">
										<a
											href="${pageContext.request.contextPath }/product/prodDetail.do?productId=${prod.productId}"
											class="e1phasb50 e14udynn0 css-kjc0x1 e1cmg4vm6"
											style="text-decoration: none;"> 
											<span
											style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;">
												<img alt="대표이미지" sizes="100vw"
												src="${pageContext.request.contextPath}/productImage/title/${prod.image}"
												decoding="async" data-nimg="fill" class="css-0"
												style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
										</span>
										</a>
									</div>

									<div class="button-wrapper">
										<button type="button"
											class="product-function css-13xu5fn e17x72af0" onclick="handleToAddCart('${prod.productId}')">
											<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
												xmlns="http://www.w3.org/2000/svg">
<path
													d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
													stroke="#333333" stroke-linecap="square"
													stroke-linejoin="round"></path>
</svg>
											담기
										</button>
									</div>
									<a
										href="${pageContext.request.contextPath }/product/prodDetail.do?productId=${prod.productId}"
										class="e1phasb50 e14udynn0 css-kjc0x1 e1cmg4vm6"
										style="text-decoration: none;">
										<div class="product-info css-1ud9i0q e1cmg4vm5">
											<h3 class="product-name">[${prod.brand }] ${prod.title }</h3>
											<div class="content-row css-1066lcq e1cmg4vm4">
												<div
													class="product-price discount-price css-1fttcpj ei5rudb2">
													<div>
														<c:choose>
															<c:when
																test="${prod.discountedPrice ne null and prod.discountedPrice ne ''}">
																<!-- 할인이 있는 경우에 적용할 CSS 클래스 -->
																<span class="dimmed-price css-18tpqqq2 ei5rudb1">
																	<fmt:formatNumber value="${prod.price}" type="number"
																		pattern="#,###" /> <span class="won">원</span>
																</span>
															</c:when>
															<c:otherwise>
																<!-- 할인이 없는 경우에 적용할 CSS 클래스 -->
																<span class="dimmed-price css-18tpqqq ei5rudb1" style="color: rgb(51, 51, 51); font-weight: bold;">
																	<fmt:formatNumber value="${prod.price}" type="number"
																		pattern="#,###" /> <span class="won">원</span>
																</span>
															</c:otherwise>
														</c:choose>
													</div>
													<div class="discount">
														<c:if test="${prod.discountRate > 0}">
															<span class="discount-rate css-19lkxd2 ei5rudb0">${prod.discountRate}%</span>
															<span class="sales-price css-18tpqqq ei5rudb1" style="color: rgb(51, 51, 51); font-weight: bold;"> <fmt:formatNumber
																	value="${prod.discountedPrice}" type="number"
																	pattern="#,###" /> <span class="won">원</span>
															</span>
														</c:if>
													</div>
												</div>
											</div>
									</a>
									<div class="review-count css-10yu924 e1cmg4vm2">
										<div class="review-icon css-0 e1cmg4vm1">
											<svg width="100%" height="100%" viewBox="0 0 14 14"
												fill="none" xmlns="http://www.w3.org/2000/svg">
<mask id="path-1-inside-1_1513_17755" fill="white">
<path fill-rule="evenodd" clip-rule="evenodd"
													d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path>
</mask>
<path fill="#999"
													d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
													mask="url(#path-1-inside-1_1513_17755)"></path>
<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle>
</svg>
										</div>
										<span class="review-number css-15onb60 e1cmg4vm0"
											style="transform: translateY(4px);">${prod.reviewCnt}</span>

									</div>
								</div>
					</div>
					</c:if>
					</c:forEach>
					<!-- 상품(끝) -->


				</div>
			</div>
		</div>

	</main>



	<!-- footer -->
	<%@ include file="../../css/headerFooter/shopFooter.jsp"%>
	<!-- ------------------------------------------------------------------------ -->

	<!-- 부트스트랩 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
</body>
</html>