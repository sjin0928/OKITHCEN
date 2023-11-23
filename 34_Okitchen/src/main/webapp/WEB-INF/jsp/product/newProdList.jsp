<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신상품</title>
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
</head>
<body>
	<!-- header -->
	<%@ include file="../../../css/headerFooter/shopHeader.jsp"%>
	<!-- ------------------------------------------------------------------------ -->
<%-- \${prodAcceptList } : ${prodAcceptList } <hr> --%>

	<div id="container" class="css-1b38o8c eakz2kp1">
		<div class="css-1azakc e13967gz1">
			<a href="https://www.kurly.com/categories/490"><img
				src="https://collection-image.kurly.com/cdn-cgi/image/width=1050,quality=85/product-collections/2451/QkPlHJ8n7HTCaEKUqsxXsr1CmPt5v5AneCEmEQhR.jpg"
				alt="배너 이미지" class="css-1217fb7 e13967gz0"></a>
		</div>
		<h3 class="css-i804ml eaf14xt0">신상품</h3>
		<div class="css-pzlq5x e13nsthd1">
			<div class="css-1jgnig9 ev2ab494">
				<div class="css-11y1fso ev2ab493">
					<span class="css-wy76no ev2ab492">필터</span>
					<button class="css-7pv5zq ev2ab491">
						<svg width="12" height="12" viewBox="0 0 16 16" fill="none"
							xmlns="http://www.w3.org/2000/svg">
							<path
								d="M13.78 3.96303C12.504 2.16973 10.4086 1 8.04 1C4.15192 1 1 4.15192 1 8.04C1 11.9281 4.15192 15.08 8.04 15.08C11.9281 15.08 15.08 11.9281 15.08 8.04"
								stroke="#ddd" stroke-width="1.6" stroke-linecap="square"
								stroke-linejoin="round"></path>
							<path d="M14.4933 1L14.4933 4.52H10.9733" stroke="#ddd"
								stroke-width="1.6" stroke-linecap="square"
								stroke-linejoin="round"></path></svg>
						<span class="css-w7g3fo ev2ab490">초기화</span>
					</button>
				</div>
				<div class="css-0 egeqx0g0">
					<div class="css-146937 e1frj59j10">
						<button class="css-16ixplb e1frj59j9">
							<div class="css-1iwixyn e1frj59j8">카테고리</div>
							<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
								stroke="#999" xmlns="http://www.w3.org/2000/svg"
								class="css-innaj4 e1frj59j6" style="transform: rotate(0deg);">
								<path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path></svg>
						</button>
						<nav class="css-1kscq9s e1frj59j5"
							style="max-height: 100vh; opacity: 1;">
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=category%3A249"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">간식·과자·떡</span><span
									class="css-ryw54y ee933651">29</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=category%3A916"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">주방용품</span><span
									class="css-ryw54y ee933651">26</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=category%3A915"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">베이커리·치즈·델리</span><span
									class="css-ryw54y ee933651">25</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=category%3A288"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">KURLY BLACK WEEK</span><span
									class="css-ryw54y ee933651">24</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=category%3A918"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">생활용품·리빙·캠핑</span><span
									class="css-ryw54y ee933651">23</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=category%3A914"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">생수·음료·우유·커피</span><span
									class="css-ryw54y ee933651">19</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=category%3A908"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">과일·견과·쌀</span><span
									class="css-ryw54y ee933651">18</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=category%3A909"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">수산·해산·건어물</span><span
									class="css-ryw54y ee933651">15</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=category%3A912"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">샐러드·간편식</span><span
									class="css-ryw54y ee933651">13</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=category%3A012"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">헤어·바디·구강</span><span
									class="css-ryw54y ee933651">12</span></a></li>
							<button class="css-ypdml9 e1frj59j1">
								카테고리 더보기
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									stroke="#999" xmlns="http://www.w3.org/2000/svg"
									class="css-jbgpyq e1frj59j0">
									<path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path></svg>
							</button>
						</nav>
					</div>
					<div class="css-146937 e1frj59j10">
						<button class="css-16ixplb e1frj59j9">
							<div class="css-1iwixyn e1frj59j8">브랜드</div>
							<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
								stroke="#999" xmlns="http://www.w3.org/2000/svg"
								class="css-innaj4 e1frj59j6" style="transform: rotate(0deg);">
								<path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path></svg>
						</button>
						<nav class="css-1kscq9s e1frj59j5"
							style="max-height: 100vh; opacity: 1;">
							<menu class="css-1gtroub e1frj59j4">
								<li class="css-14cvnbg e1frj59j3"><button
										class="css-8fr2f6 e1frj59j2">가나다순</button></li>
								<li class="css-14cvnbg e1frj59j3"><button
										class="css-1vbs14e e1frj59j2">상품 많은순</button></li>
							</menu>
							<menu class="css-3770rk e5tjvqm2">
								<li class="css-ffhm6p e5tjvqm1"><button type="button"
										width="47" class="css-15z0st1 e5tjvqm0">전체</button></li>
								<li class="css-ffhm6p e5tjvqm1"><button type="button"
										width="22" class="css-1e7ssny e5tjvqm0">ㄴ</button></li>
								<li class="css-ffhm6p e5tjvqm1"><button type="button"
										width="22" class="css-1e7ssny e5tjvqm0">ㄷ</button></li>
								<li class="css-ffhm6p e5tjvqm1"><button type="button"
										width="22" class="css-1e7ssny e5tjvqm0">ㄹ</button></li>
								<li class="css-ffhm6p e5tjvqm1"><button type="button"
										width="22" class="css-1e7ssny e5tjvqm0">ㅁ</button></li>
								<li class="css-ffhm6p e5tjvqm1"><button type="button"
										width="22" class="css-1e7ssny e5tjvqm0">ㅂ</button></li>
								<li class="css-ffhm6p e5tjvqm1"><button type="button"
										width="22" class="css-1e7ssny e5tjvqm0">ㅅ</button></li>
								<li class="css-ffhm6p e5tjvqm1"><button type="button"
										width="22" class="css-1e7ssny e5tjvqm0">ㅇ</button></li>
								<li class="css-ffhm6p e5tjvqm1"><button type="button"
										width="22" class="css-1e7ssny e5tjvqm0">ㅈ</button></li>
								<li class="css-ffhm6p e5tjvqm1"><button type="button"
										width="22" class="css-1e7ssny e5tjvqm0">ㅋ</button></li>
								<li class="css-ffhm6p e5tjvqm1"><button type="button"
										width="22" class="css-1e7ssny e5tjvqm0">ㅌ</button></li>
								<li class="css-ffhm6p e5tjvqm1"><button type="button"
										width="22" class="css-1e7ssny e5tjvqm0">ㅍ</button></li>
								<li class="css-ffhm6p e5tjvqm1"><button type="button"
										width="22" class="css-1e7ssny e5tjvqm0">ㅎ</button></li>
								<li class="css-ffhm6p e5tjvqm1"><button type="button"
										width="47" class="css-d9k3gf e5tjvqm0">A-Z</button></li>
								<li class="css-ffhm6p e5tjvqm1"><button type="button"
										width="47" class="css-d9k3gf e5tjvqm0">ETC</button></li>
							</menu>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=brand%3Ahu9cgp"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">널담</span><span
									class="css-ryw54y ee933651">1</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=brand%3Anoblesand"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">노블샌드</span><span
									class="css-ryw54y ee933651">1</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=brand%3Anonfiction"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">논픽션</span><span
									class="css-ryw54y ee933651">1</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=brand%3A8ah3jn"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">놋담</span><span
									class="css-ryw54y ee933651">1</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=brand%3Aqjvhuj"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">닌텐도</span><span
									class="css-ryw54y ee933651">1</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=brand%3Aknlg0i"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">달롤</span><span
									class="css-ryw54y ee933651">4</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=brand%3Agkwzrd"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">달바</span><span
									class="css-ryw54y ee933651">1</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=brand%3A8u11io"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">더건강한</span><span
									class="css-ryw54y ee933651">1</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=brand%3A7mvwbs"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">떼르드글라스</span><span
									class="css-ryw54y ee933651">1</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=brand%3Ajybgal"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">라엘</span><span
									class="css-ryw54y ee933651">1</span></a></li>
							<button class="css-ypdml9 e1frj59j1">
								브랜드 더보기
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									stroke="#999" xmlns="http://www.w3.org/2000/svg"
									class="css-jbgpyq e1frj59j0">
									<path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path></svg>
							</button>
						</nav>
					</div>
					<div class="css-146937 e1frj59j10">
						<button class="css-16ixplb e1frj59j9">
							<div class="css-1iwixyn e1frj59j8">가격</div>
							<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
								stroke="#999" xmlns="http://www.w3.org/2000/svg"
								class="css-innaj4 e1frj59j6" style="transform: rotate(0deg);">
								<path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path></svg>
						</button>
						<nav class="css-1kscq9s e1frj59j5"
							style="max-height: 100vh; opacity: 1;">
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=price%3A-7900"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M12 23.5C18.3513 23.5 23.5 18.3513 23.5 12C23.5 5.64873 18.3513 0.5 12 0.5C5.64873 0.5 0.5 5.64873 0.5 12C0.5 18.3513 5.64873 23.5 12 23.5Z"
												fill="#fff" stroke="#ddd"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">7,900원 미만</span><span
									class="css-ryw54y ee933651">60</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=price%3A7900-15900"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M12 23.5C18.3513 23.5 23.5 18.3513 23.5 12C23.5 5.64873 18.3513 0.5 12 0.5C5.64873 0.5 0.5 5.64873 0.5 12C0.5 18.3513 5.64873 23.5 12 23.5Z"
												fill="#fff" stroke="#ddd"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">7,900원 ~ 15,900원</span><span
									class="css-ryw54y ee933651">61</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=price%3A15900-27900"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M12 23.5C18.3513 23.5 23.5 18.3513 23.5 12C23.5 5.64873 18.3513 0.5 12 0.5C5.64873 0.5 0.5 5.64873 0.5 12C0.5 18.3513 5.64873 23.5 12 23.5Z"
												fill="#fff" stroke="#ddd"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">15,900원 ~ 27,900원</span><span
									class="css-ryw54y ee933651">62</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=price%3A27900-"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M12 23.5C18.3513 23.5 23.5 18.3513 23.5 12C23.5 5.64873 18.3513 0.5 12 0.5C5.64873 0.5 0.5 5.64873 0.5 12C0.5 18.3513 5.64873 23.5 12 23.5Z"
												fill="#fff" stroke="#ddd"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">27,900원 이상</span><span
									class="css-ryw54y ee933651">62</span></a></li>
						</nav>
					</div>
					<div class="css-146937 e1frj59j10">
						<button class="css-16ixplb e1frj59j9">
							<div class="css-1iwixyn e1frj59j8">혜택</div>
							<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
								stroke="#999" xmlns="http://www.w3.org/2000/svg"
								class="css-innaj4 e1frj59j6" style="transform: rotate(0deg);">
								<path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path></svg>
						</button>
						<nav class="css-1kscq9s e1frj59j5"
							style="max-height: 100vh; opacity: 1;">
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=benefit%3Adiscount"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">할인상품</span><span
									class="css-ryw54y ee933651">181</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=benefit%3Alimited"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">한정수량</span><span
									class="css-ryw54y ee933651">11</span></a></li>
						</nav>
					</div>
					<div class="css-146937 e1frj59j10">
						<button class="css-16ixplb e1frj59j9">
							<div class="css-1iwixyn e1frj59j8">유형</div>
							<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
								stroke="#999" xmlns="http://www.w3.org/2000/svg"
								class="css-innaj4 e1frj59j6" style="transform: rotate(0deg);">
								<path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path></svg>
						</button>
						<nav class="css-1kscq9s e1frj59j5"
							style="max-height: 100vh; opacity: 1;">
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=type%3Akurly_only"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">Kurly Only</span><span
									class="css-ryw54y ee933651">69</span></a></li>
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=type%3Ascarcity_value"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">희소가치 프로젝트</span><span
									class="css-ryw54y ee933651">4</span></a></li>
						</nav>
					</div>
					<div class="css-146937 e1frj59j10">
						<button class="css-16ixplb e1frj59j9">
							<div class="css-1iwixyn e1frj59j8">특정상품 제외</div>
							<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
								stroke="#999" xmlns="http://www.w3.org/2000/svg"
								class="css-innaj4 e1frj59j6" style="transform: rotate(0deg);">
								<path d="M5 11L9 7L13 11" stroke="#999" stroke-width="1.2"></path></svg>
						</button>
						<nav class="css-1kscq9s e1frj59j5"
							style="max-height: 100vh; opacity: 1;">
							<li class="css-x67gaa e1isxf3i1"><a
								href="/collections/market-newproduct?page=1&amp;filters=exclusion%3Aexclude_pet"
								class="css-s5xdrg e1isxf3i0"><button
										class="css-17kh8wb ee933650">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
												stroke="#ddd" fill="none"></path>
											<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
												stroke-width="1.5" stroke-linecap="round"
												stroke-linejoin="round"></path></svg>
									</button>
									<span class="css-1buhy1h ee933652">반려동물 상품</span><span
									class="css-ryw54y ee933651">11</span></a></li>
						</nav>
					</div>
				</div>
			</div>
			<div class="css-1d3w5wq ef36txc6">
				<div class="css-1stur9s eudxpx34">
					<div class="css-crqql1 eudxpx33">총 246건</div>
					<ul class="css-1vmfy7j eudxpx32">
						<li class="css-5uzvtq eudxpx31"><a
							href="/collections/market-newproduct?page=1&amp;per_page=96&amp;sorted_type=4"
							class="css-19ce13b eudxpx30">추천순</a>
						<div class="css-f49ql3 e1kpyq4d1">
								<svg width="14" height="20" viewBox="0 0 14 14" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M6.9932 0.700195C8.73506 0.700195 10.3116 1.40557 11.4528 2.54565C12.5943 3.68594 13.3002 5.26111 13.3002 7.0002C13.3002 8.73928 12.5943 10.3145 11.4528 11.4547C10.3116 12.5948 8.73506 13.3002 6.9932 13.3002C5.25512 13.3002 3.68233 12.595 2.54387 11.4554C1.40457 10.315 0.700195 8.73952 0.700195 7.0002C0.700195 5.26087 1.40457 3.68541 2.54387 2.54497C3.68233 1.40537 5.25512 0.700195 6.9932 0.700195Z"
										stroke="#ccc" stroke-width="1.4"></path>
									<path
										d="M4.5 5.21081H5.77027C5.81351 4.55135 6.26216 4.12973 6.95946 4.12973C7.64054 4.12973 8.09459 4.53514 8.09459 5.0973C8.09459 5.58784 7.90383 5.86944 7.35576 6.22524L7.1973 6.32432C6.45135 6.76216 6.13784 7.24865 6.18649 8.05946L6.19189 8.42703H7.44595V8.11892C7.44595 7.58378 7.64595 7.30811 8.35405 6.89189C9.08919 6.45405 9.5 5.87568 9.5 5.04865C9.5 3.85405 8.51081 3 7.02973 3C5.42432 3 4.54324 3.92973 4.5 5.21081ZM6.87838 11.0054C6.33784 11.0054 5.98108 10.6649 5.98108 10.1459C5.98108 9.62162 6.33784 9.28108 6.87838 9.28108C7.42973 9.28108 7.77568 9.62162 7.77568 10.1459C7.77568 10.6649 7.42973 11.0054 6.87838 11.0054Z"
										fill="#ccc"></path></svg>
								<div class="css-2hay8 e1kpyq4d0">소비자 인기도(판매량, 판매금액, 조회수
									등), 상품 출시일, 수요 적합성, 상품 운영상 필요 등을 종합적으로 고려한 순서입니다.</div>
							</div></li>
						<li class="css-5uzvtq eudxpx31"><a
							href="/collections/market-newproduct?page=1&amp;per_page=96&amp;sorted_type=0"
							class="css-126imjl eudxpx30">신상품순</a></li>
						<li class="css-5uzvtq eudxpx31"><a
							href="/collections/market-newproduct?page=1&amp;per_page=96&amp;sorted_type=1"
							class="css-19ce13b eudxpx30">판매량순</a></li>
						<li class="css-5uzvtq eudxpx31"><a
							href="/collections/market-newproduct?page=1&amp;per_page=96&amp;sorted_type=5"
							class="css-19ce13b eudxpx30">혜택순</a></li>
						<li class="css-5uzvtq eudxpx31"><a
							href="/collections/market-newproduct?page=1&amp;per_page=96&amp;sorted_type=2"
							class="css-19ce13b eudxpx30">낮은 가격순</a></li>
						<li class="css-5uzvtq eudxpx31"><a
							href="/collections/market-newproduct?page=1&amp;per_page=96&amp;sorted_type=3"
							class="css-19ce13b eudxpx30">높은 가격순</a></li>
					</ul>
				</div>
				<div class="css-11kh0cw ef36txc5">
					<a href="/goods/1000314936" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지" sizes="100vw"
									srcset="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/083824ce-19dc-4f1d-80bc-5cf99ed53bfa.jpg 640w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/083824ce-19dc-4f1d-80bc-5cf99ed53bfa.jpg 750w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/083824ce-19dc-4f1d-80bc-5cf99ed53bfa.jpg 828w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/083824ce-19dc-4f1d-80bc-5cf99ed53bfa.jpg 1080w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/083824ce-19dc-4f1d-80bc-5cf99ed53bfa.jpg 1200w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/083824ce-19dc-4f1d-80bc-5cf99ed53bfa.jpg 1920w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/083824ce-19dc-4f1d-80bc-5cf99ed53bfa.jpg 2048w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/083824ce-19dc-4f1d-80bc-5cf99ed53bfa.jpg 3840w"
									src="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/083824ce-19dc-4f1d-80bc-5cf99ed53bfa.jpg"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[메이필드호텔 낙원] 한우 등심 불고기 350g</span>
							<p class="css-1wejlc3 e1c07x486">갈비 명가로 이름난 메이필드 호텔 낙원의 불고기를
								집에서 간편하게 즐길 수 있는 기회.</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">29,900<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
							</div>
						</div></a><a href="/goods/1000320836" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지" sizes="100vw"
									srcset="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/9b7a44c0-48a6-4015-a023-5b9099613575.jpg 640w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/9b7a44c0-48a6-4015-a023-5b9099613575.jpg 750w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/9b7a44c0-48a6-4015-a023-5b9099613575.jpg 828w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/9b7a44c0-48a6-4015-a023-5b9099613575.jpg 1080w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/9b7a44c0-48a6-4015-a023-5b9099613575.jpg 1200w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/9b7a44c0-48a6-4015-a023-5b9099613575.jpg 1920w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/9b7a44c0-48a6-4015-a023-5b9099613575.jpg 2048w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/9b7a44c0-48a6-4015-a023-5b9099613575.jpg 3840w"
									src="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/9b7a44c0-48a6-4015-a023-5b9099613575.jpg"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
								<div class="e1c07x4810 css-92xxgr e1u3dkre1" opacity="0.9">
									<span font-weight="500" class="css-1fkm1u5 e1u3dkre0">15%쿠폰+증정</span>
								</div>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[록시땅] 홀리데이 시어 스파클링 리브 &amp;
								아몬드 앤 플라워 샤워젤 듀오 기프트 세트 (바디워시)</span>
							<p class="css-1wejlc3 e1c07x486">싱그러움이 감도는 샤워시간</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">68,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">10%</span><span
										class="sales-price css-18tpqqq ei5rudb1">61,200<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000321598" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지" sizes="100vw"
									srcset="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/84a8abf7-6652-4030-a543-8ae417384074.jpg 640w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/84a8abf7-6652-4030-a543-8ae417384074.jpg 750w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/84a8abf7-6652-4030-a543-8ae417384074.jpg 828w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/84a8abf7-6652-4030-a543-8ae417384074.jpg 1080w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/84a8abf7-6652-4030-a543-8ae417384074.jpg 1200w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/84a8abf7-6652-4030-a543-8ae417384074.jpg 1920w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/84a8abf7-6652-4030-a543-8ae417384074.jpg 2048w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/84a8abf7-6652-4030-a543-8ae417384074.jpg 3840w"
									src="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/84a8abf7-6652-4030-a543-8ae417384074.jpg"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[리츠] 크래커 3종 (택1)</span>
							<p class="css-1wejlc3 e1c07x486">바삭하게 즐기는 고소한 매력</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">1,500<span
										class="won">원</span>~
									</span>
								</div>
							</div>
						</div></a><a href="/goods/1000326150" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지" sizes="100vw"
									srcset="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/4afa8e3f-796b-44cd-83b7-efa0e995602c.jpg 640w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/4afa8e3f-796b-44cd-83b7-efa0e995602c.jpg 750w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/4afa8e3f-796b-44cd-83b7-efa0e995602c.jpg 828w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/4afa8e3f-796b-44cd-83b7-efa0e995602c.jpg 1080w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/4afa8e3f-796b-44cd-83b7-efa0e995602c.jpg 1200w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/4afa8e3f-796b-44cd-83b7-efa0e995602c.jpg 1920w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/4afa8e3f-796b-44cd-83b7-efa0e995602c.jpg 2048w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/4afa8e3f-796b-44cd-83b7-efa0e995602c.jpg 3840w"
									src="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/4afa8e3f-796b-44cd-83b7-efa0e995602c.jpg"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
								<div class="e1c07x4810 css-92xxgr e1u3dkre1" opacity="0.9">
									<span font-weight="500" class="css-1fkm1u5 e1u3dkre0">+10%쿠폰</span>
								</div>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[라엘] 이너케어 젤 질세정기 (의료기기)</span>
							<p class="css-1wejlc3 e1c07x486">물 없이도 간편한 질 세정</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">12,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">23%</span><span
										class="sales-price css-18tpqqq ei5rudb1">9,900<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/5004822" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지" sizes="100vw"
									srcset="https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1479209756996l0.jpg 640w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1479209756996l0.jpg 750w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1479209756996l0.jpg 828w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1479209756996l0.jpg 1080w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1479209756996l0.jpg 1200w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1479209756996l0.jpg 1920w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1479209756996l0.jpg 2048w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1479209756996l0.jpg 3840w"
									src="https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1479209756996l0.jpg"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">미국산 석류 440g (1개)</span>
							<p class="css-1wejlc3 e1c07x486">둥근 껍질 안에 붉은 알이 꽉 들어찬 캘리포니아
								석류 (1개/440g)</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">6,600<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">10%</span><span
										class="sales-price css-18tpqqq ei5rudb1">5,940<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">999+</span>
							</div>
						</div></a><a href="/goods/1000326371" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지" sizes="100vw"
									srcset="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/5de71ac3-f6c9-4377-bf71-1a6153bc0ae3.jpg 640w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/5de71ac3-f6c9-4377-bf71-1a6153bc0ae3.jpg 750w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/5de71ac3-f6c9-4377-bf71-1a6153bc0ae3.jpg 828w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/5de71ac3-f6c9-4377-bf71-1a6153bc0ae3.jpg 1080w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/5de71ac3-f6c9-4377-bf71-1a6153bc0ae3.jpg 1200w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/5de71ac3-f6c9-4377-bf71-1a6153bc0ae3.jpg 1920w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/5de71ac3-f6c9-4377-bf71-1a6153bc0ae3.jpg 2048w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/5de71ac3-f6c9-4377-bf71-1a6153bc0ae3.jpg 3840w"
									src="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/5de71ac3-f6c9-4377-bf71-1a6153bc0ae3.jpg"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[라라스윗] 저당 초코바 90mL X 4개입 2종
								(택1)</span>
							<p class="css-1wejlc3 e1c07x486">걱정 없이 만끽하는 달콤함</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">9,400<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">10%</span><span
										class="sales-price css-18tpqqq ei5rudb1">8,460<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000324524" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지" sizes="100vw"
									srcset="https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/cfdd7e4c-ac72-4bb7-98ab-f5aa21b405d3/2854159d-b432-4785-ac58-14f2c266880a.jpg 640w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/cfdd7e4c-ac72-4bb7-98ab-f5aa21b405d3/2854159d-b432-4785-ac58-14f2c266880a.jpg 750w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/cfdd7e4c-ac72-4bb7-98ab-f5aa21b405d3/2854159d-b432-4785-ac58-14f2c266880a.jpg 828w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/cfdd7e4c-ac72-4bb7-98ab-f5aa21b405d3/2854159d-b432-4785-ac58-14f2c266880a.jpg 1080w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/cfdd7e4c-ac72-4bb7-98ab-f5aa21b405d3/2854159d-b432-4785-ac58-14f2c266880a.jpg 1200w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/cfdd7e4c-ac72-4bb7-98ab-f5aa21b405d3/2854159d-b432-4785-ac58-14f2c266880a.jpg 1920w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/cfdd7e4c-ac72-4bb7-98ab-f5aa21b405d3/2854159d-b432-4785-ac58-14f2c266880a.jpg 2048w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/cfdd7e4c-ac72-4bb7-98ab-f5aa21b405d3/2854159d-b432-4785-ac58-14f2c266880a.jpg 3840w"
									src="https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/cfdd7e4c-ac72-4bb7-98ab-f5aa21b405d3/2854159d-b432-4785-ac58-14f2c266880a.jpg"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[모타] 클래식 젤라또 컵(2P)
								(젤라또컵(2P))</span>
							<p class="css-1wejlc3 e1c07x486">매력적인 이태리 스테인레스 트레이</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">50,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">34%</span><span
										class="sales-price css-18tpqqq ei5rudb1">32,900<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000330993" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지" sizes="100vw"
									srcset="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/ed14b140-fb57-4d19-940f-fa04a9f8e39c.jpg 640w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/ed14b140-fb57-4d19-940f-fa04a9f8e39c.jpg 750w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/ed14b140-fb57-4d19-940f-fa04a9f8e39c.jpg 828w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/ed14b140-fb57-4d19-940f-fa04a9f8e39c.jpg 1080w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/ed14b140-fb57-4d19-940f-fa04a9f8e39c.jpg 1200w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/ed14b140-fb57-4d19-940f-fa04a9f8e39c.jpg 1920w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/ed14b140-fb57-4d19-940f-fa04a9f8e39c.jpg 2048w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/ed14b140-fb57-4d19-940f-fa04a9f8e39c.jpg 3840w"
									src="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/ed14b140-fb57-4d19-940f-fa04a9f8e39c.jpg"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[인텔리젠시아] 오트 커피 3종 (RTD)</span>
							<p class="css-1wejlc3 e1c07x486">바로 마시는 고소한 라떼</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">6,980<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">12%</span><span
										class="sales-price css-18tpqqq ei5rudb1">6,142<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
							</div>
						</div></a><a href="/goods/1000330995" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지" sizes="100vw"
									srcset="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/45339ebc-3814-4900-b42d-0b2e47ffd123.jpg 640w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/45339ebc-3814-4900-b42d-0b2e47ffd123.jpg 750w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/45339ebc-3814-4900-b42d-0b2e47ffd123.jpg 828w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/45339ebc-3814-4900-b42d-0b2e47ffd123.jpg 1080w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/45339ebc-3814-4900-b42d-0b2e47ffd123.jpg 1200w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/45339ebc-3814-4900-b42d-0b2e47ffd123.jpg 1920w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/45339ebc-3814-4900-b42d-0b2e47ffd123.jpg 2048w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/45339ebc-3814-4900-b42d-0b2e47ffd123.jpg 3840w"
									src="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/45339ebc-3814-4900-b42d-0b2e47ffd123.jpg"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[인텔리젠시아] 콜드 커피 (RTD)</span>
							<p class="css-1wejlc3 e1c07x486">바로 즐기는 산뜻한 한잔</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">6,780<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">12%</span><span
										class="sales-price css-18tpqqq ei5rudb1">5,966<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
							</div>
						</div></a><a href="/goods/5061261" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지" sizes="100vw"
									srcset="https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1604311505474l0.jpg 640w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1604311505474l0.jpg 750w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1604311505474l0.jpg 828w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1604311505474l0.jpg 1080w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1604311505474l0.jpg 1200w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1604311505474l0.jpg 1920w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1604311505474l0.jpg 2048w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1604311505474l0.jpg 3840w"
									src="https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1604311505474l0.jpg"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">친환경 황금향 2종 (택1)</span>
							<p class="css-1wejlc3 e1c07x486">안심하고 즐기는 향긋한 만감류</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">12,900<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">846</span>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">희소가치 프로젝트</span>
							</div>
						</div></a><a href="/goods/1000326794" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지" sizes="100vw"
									srcset="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/554b8137-a569-487b-973a-abad4644a1e6.jpg 640w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/554b8137-a569-487b-973a-abad4644a1e6.jpg 750w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/554b8137-a569-487b-973a-abad4644a1e6.jpg 828w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/554b8137-a569-487b-973a-abad4644a1e6.jpg 1080w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/554b8137-a569-487b-973a-abad4644a1e6.jpg 1200w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/554b8137-a569-487b-973a-abad4644a1e6.jpg 1920w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/554b8137-a569-487b-973a-abad4644a1e6.jpg 2048w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/554b8137-a569-487b-973a-abad4644a1e6.jpg 3840w"
									src="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/554b8137-a569-487b-973a-abad4644a1e6.jpg"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[논픽션] 홀리데이 핸드크림 미니 트리오</span>
							<p class="css-1wejlc3 e1c07x486">홀리데이 에디션으로 만나는 안락한 시그니처 향</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">39,000<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000322462" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지" sizes="100vw"
									srcset="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/618bb417-6148-491a-a46d-6b03836a9f47.jpg 640w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/618bb417-6148-491a-a46d-6b03836a9f47.jpg 750w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/618bb417-6148-491a-a46d-6b03836a9f47.jpg 828w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/618bb417-6148-491a-a46d-6b03836a9f47.jpg 1080w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/618bb417-6148-491a-a46d-6b03836a9f47.jpg 1200w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/618bb417-6148-491a-a46d-6b03836a9f47.jpg 1920w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/618bb417-6148-491a-a46d-6b03836a9f47.jpg 2048w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/618bb417-6148-491a-a46d-6b03836a9f47.jpg 3840w"
									src="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/618bb417-6148-491a-a46d-6b03836a9f47.jpg"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">One-frozen 노르웨이 고등어 3종 (택1)
								(냉동)</span>
							<p class="css-1wejlc3 e1c07x486">단 한 번의 냉동으로 감칠맛을 지킨</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">6,800<span
										class="won">원</span>~
									</span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">9,999+</span>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
							</div>
						</div></a><a href="/goods/5045416" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지" sizes="100vw"
									srcset="https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1576733542541l0.jpg 640w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1576733542541l0.jpg 750w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1576733542541l0.jpg 828w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1576733542541l0.jpg 1080w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1576733542541l0.jpg 1200w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1576733542541l0.jpg 1920w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1576733542541l0.jpg 2048w, https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1576733542541l0.jpg 3840w"
									src="https://img-cf.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/shop/data/goods/1576733542541l0.jpg"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[양포어장] 청어 과메기 야채세트 787g
								(냉장)</span>
							<p class="css-1wejlc3 e1c07x486">청어 과메기를 간편하게 즐기는</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">37,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">8%</span><span
										class="sales-price css-18tpqqq ei5rudb1">34,800<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">999+</span>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
							</div>
						</div></a><a href="/goods/1000333326" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지" sizes="100vw"
									srcset="https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/34ea4106-3051-4cd0-8231-e9d5e6ef2556/79b8edbf-f536-476c-a205-38a7ffd2ea7f.png 640w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/34ea4106-3051-4cd0-8231-e9d5e6ef2556/79b8edbf-f536-476c-a205-38a7ffd2ea7f.png 750w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/34ea4106-3051-4cd0-8231-e9d5e6ef2556/79b8edbf-f536-476c-a205-38a7ffd2ea7f.png 828w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/34ea4106-3051-4cd0-8231-e9d5e6ef2556/79b8edbf-f536-476c-a205-38a7ffd2ea7f.png 1080w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/34ea4106-3051-4cd0-8231-e9d5e6ef2556/79b8edbf-f536-476c-a205-38a7ffd2ea7f.png 1200w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/34ea4106-3051-4cd0-8231-e9d5e6ef2556/79b8edbf-f536-476c-a205-38a7ffd2ea7f.png 1920w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/34ea4106-3051-4cd0-8231-e9d5e6ef2556/79b8edbf-f536-476c-a205-38a7ffd2ea7f.png 2048w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/34ea4106-3051-4cd0-8231-e9d5e6ef2556/79b8edbf-f536-476c-a205-38a7ffd2ea7f.png 3840w"
									src="https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/34ea4106-3051-4cd0-8231-e9d5e6ef2556/79b8edbf-f536-476c-a205-38a7ffd2ea7f.png"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
								<div class="e1c07x4810 css-92xxgr e1u3dkre1" opacity="0.9">
									<span font-weight="500" class="css-1fkm1u5 e1u3dkre0">+10%쿠폰</span>
								</div>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[노블샌드] 노블샌드제로 벤토나이트 고양이모래
								6KG</span>
							<p class="css-1wejlc3 e1c07x486">고양이와 집사님 모두가 행복한 나응식수의사의
								노블샌드 제로</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">19,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">30%</span><span
										class="sales-price css-18tpqqq ei5rudb1">13,900<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">반려동물</span><span
									class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000086218" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지" sizes="100vw"
									srcset="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/eebb7e21-5a91-4046-96f5-636be3d8df11.jpg 640w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/eebb7e21-5a91-4046-96f5-636be3d8df11.jpg 750w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/eebb7e21-5a91-4046-96f5-636be3d8df11.jpg 828w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/eebb7e21-5a91-4046-96f5-636be3d8df11.jpg 1080w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/eebb7e21-5a91-4046-96f5-636be3d8df11.jpg 1200w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/eebb7e21-5a91-4046-96f5-636be3d8df11.jpg 1920w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/eebb7e21-5a91-4046-96f5-636be3d8df11.jpg 2048w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/eebb7e21-5a91-4046-96f5-636be3d8df11.jpg 3840w"
									src="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/eebb7e21-5a91-4046-96f5-636be3d8df11.jpg"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">완도 자연산 생청각 150g (냉장)</span>
							<p class="css-1wejlc3 e1c07x486">김치에 더하는 특별한 해조류</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">6,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">10%</span><span
										class="sales-price css-18tpqqq ei5rudb1">6,210<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">24</span>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
							</div>
						</div></a><a href="/goods/1000093349" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지" sizes="100vw"
									srcset="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/d1075414-23d6-4523-863c-7a3ac971a51d.jpg 640w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/d1075414-23d6-4523-863c-7a3ac971a51d.jpg 750w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/d1075414-23d6-4523-863c-7a3ac971a51d.jpg 828w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/d1075414-23d6-4523-863c-7a3ac971a51d.jpg 1080w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/d1075414-23d6-4523-863c-7a3ac971a51d.jpg 1200w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/d1075414-23d6-4523-863c-7a3ac971a51d.jpg 1920w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/d1075414-23d6-4523-863c-7a3ac971a51d.jpg 2048w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/d1075414-23d6-4523-863c-7a3ac971a51d.jpg 3840w"
									src="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/d1075414-23d6-4523-863c-7a3ac971a51d.jpg"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">진도 생톳 120g (냉장)</span>
							<p class="css-1wejlc3 e1c07x486">오독오독 매력적인 시간</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">3,200<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">10%</span><span
										class="sales-price css-18tpqqq ei5rudb1">2,850<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">411</span>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
							</div>
						</div></a><a href="/goods/1000332832" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지" sizes="100vw"
									srcset="https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/6a8518e4-3bdb-434b-8a92-baaf892f78c9/31b46a9f-bbb6-4532-baa2-902a84b14c28.jpg 640w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/6a8518e4-3bdb-434b-8a92-baaf892f78c9/31b46a9f-bbb6-4532-baa2-902a84b14c28.jpg 750w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/6a8518e4-3bdb-434b-8a92-baaf892f78c9/31b46a9f-bbb6-4532-baa2-902a84b14c28.jpg 828w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/6a8518e4-3bdb-434b-8a92-baaf892f78c9/31b46a9f-bbb6-4532-baa2-902a84b14c28.jpg 1080w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/6a8518e4-3bdb-434b-8a92-baaf892f78c9/31b46a9f-bbb6-4532-baa2-902a84b14c28.jpg 1200w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/6a8518e4-3bdb-434b-8a92-baaf892f78c9/31b46a9f-bbb6-4532-baa2-902a84b14c28.jpg 1920w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/6a8518e4-3bdb-434b-8a92-baaf892f78c9/31b46a9f-bbb6-4532-baa2-902a84b14c28.jpg 2048w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/6a8518e4-3bdb-434b-8a92-baaf892f78c9/31b46a9f-bbb6-4532-baa2-902a84b14c28.jpg 3840w"
									src="https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/6a8518e4-3bdb-434b-8a92-baaf892f78c9/31b46a9f-bbb6-4532-baa2-902a84b14c28.jpg"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[젠토이] 마그마그 타일즈 자석블럭 2종 (택1)</span>
							<p class="css-1wejlc3 e1c07x486">맑은 색감과 큼지막한 자석 내장</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">109,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">36%</span><span
										class="sales-price css-18tpqqq ei5rudb1">69,000<span
										class="won">원</span>~
									</span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000333500" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지" sizes="100vw"
									srcset="https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/5bdf7caf-f0ad-40cc-b244-010cac445357/4e7293aa-8d53-4741-9a0c-c26991b22fba.jpg 640w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/5bdf7caf-f0ad-40cc-b244-010cac445357/4e7293aa-8d53-4741-9a0c-c26991b22fba.jpg 750w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/5bdf7caf-f0ad-40cc-b244-010cac445357/4e7293aa-8d53-4741-9a0c-c26991b22fba.jpg 828w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/5bdf7caf-f0ad-40cc-b244-010cac445357/4e7293aa-8d53-4741-9a0c-c26991b22fba.jpg 1080w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/5bdf7caf-f0ad-40cc-b244-010cac445357/4e7293aa-8d53-4741-9a0c-c26991b22fba.jpg 1200w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/5bdf7caf-f0ad-40cc-b244-010cac445357/4e7293aa-8d53-4741-9a0c-c26991b22fba.jpg 1920w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/5bdf7caf-f0ad-40cc-b244-010cac445357/4e7293aa-8d53-4741-9a0c-c26991b22fba.jpg 2048w, https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/5bdf7caf-f0ad-40cc-b244-010cac445357/4e7293aa-8d53-4741-9a0c-c26991b22fba.jpg 3840w"
									src="https://3p-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/files/5bdf7caf-f0ad-40cc-b244-010cac445357/4e7293aa-8d53-4741-9a0c-c26991b22fba.jpg"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[올리빙] 접이식 이지도어 수납함 400 1단
								3종 (택1)</span>
							<p class="css-1wejlc3 e1c07x486">편리한 도어 무한수납 가능한 리빙박스</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">39,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">67%</span><span
										class="sales-price css-18tpqqq ei5rudb1">12,900<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000072193" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지" sizes="100vw"
									srcset="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3480d283-f3b0-4b4b-95bb-421abad1138d.jpg 640w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3480d283-f3b0-4b4b-95bb-421abad1138d.jpg 750w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3480d283-f3b0-4b4b-95bb-421abad1138d.jpg 828w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3480d283-f3b0-4b4b-95bb-421abad1138d.jpg 1080w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3480d283-f3b0-4b4b-95bb-421abad1138d.jpg 1200w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3480d283-f3b0-4b4b-95bb-421abad1138d.jpg 1920w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3480d283-f3b0-4b4b-95bb-421abad1138d.jpg 2048w, https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3480d283-f3b0-4b4b-95bb-421abad1138d.jpg 3840w"
									src="https://product-image.kurly.com/cdn-cgi/image/fit=crop,width=360,height=468,quality=85/product/image/3480d283-f3b0-4b4b-95bb-421abad1138d.jpg"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;"></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[어보선] 손질 병어 250g (냉동)</span>
							<p class="css-1wejlc3 e1c07x486">속살에 차오른 담백한 단맛</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">13,980<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000324415" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[스윗밸런스] 곡물빵 샌드위치 3종</span>
							<p class="css-1wejlc3 e1c07x486">산뜻하고 든든한 한 끼</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">5,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">10%</span><span
										class="sales-price css-18tpqqq ei5rudb1">5,310<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
							</div>
						</div></a><a href="/goods/1000284347" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[동전빵] 치즈 십원빵 3개입</span>
							<p class="css-1wejlc3 e1c07x486">동전을 닮은 재밌는 간식</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">10,500<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/5003748" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488"> [상하치즈] 유기농 아이치즈 3종
								(10매입/20매입) (택1)</span>
							<p class="css-1wejlc3 e1c07x486">탄탄한 영양학적 설계로 이루어진 우리 아이의 건강
								간식</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">6,860<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">19%</span><span
										class="sales-price css-18tpqqq ei5rudb1">5,500<span
										class="won">원</span>~
									</span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">9,999+</span>
							</div>
						</div></a><a href="/goods/5070685" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[상하치즈] 유기농 어린이 고칼슘치즈
								(10매입/20매입) (택1)</span>
							<p class="css-1wejlc3 e1c07x486">유기농 자연 치즈로 만든</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">6,860<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">19%</span><span
										class="sales-price css-18tpqqq ei5rudb1">5,500<span
										class="won">원</span>~
									</span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">999+</span>
							</div>
						</div></a><a href="/goods/5100463" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[오리온] 크리스마스 파티팩</span>
							<p class="css-1wejlc3 e1c07x486">산타가 그려진 귀여운 스낵 박스</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">19,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">5%</span><span
										class="sales-price css-18tpqqq ei5rudb1">18,900<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">440</span>
							</div>
						</div></a><a href="/goods/5139146" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[위니비니] 핑크퐁 크리스마스 틴 54g</span>
							<p class="css-1wejlc3 e1c07x486">크리스마스를 즐기는 상어 가족</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">5,500<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">9%</span><span
										class="sales-price css-18tpqqq ei5rudb1">4,980<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">53</span>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
							</div>
						</div></a><a href="/goods/1000094744" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[위니비니] 크리스마스 스노우맨 메시백 (100g
								x 2개)</span>
							<p class="css-1wejlc3 e1c07x486">앙증맞은 눈사람 모양 초콜릿</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">7,600<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">8%</span><span
										class="sales-price css-18tpqqq ei5rudb1">6,980<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">124</span>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
							</div>
						</div></a><a href="/goods/1000094746" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[위니비니] 크리스마스 산타클로스 메시백
								(100g x 2개)</span>
							<p class="css-1wejlc3 e1c07x486">크리스마스의 설렘을 더해 줄</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">7,600<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">8%</span><span
										class="sales-price css-18tpqqq ei5rudb1">6,980<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">133</span>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
							</div>
						</div></a><a href="/goods/1000094742" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[위니비니] 크리스마스 초콜릿 메시백 (85g x
								2개)</span>
							<p class="css-1wejlc3 e1c07x486">달콤하게 즐기는 크리스마스</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">7,600<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">8%</span><span
										class="sales-price css-18tpqqq ei5rudb1">6,980<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">134</span>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
							</div>
						</div></a><a href="/goods/1000271527" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[산리오] 페이스 헤드 인형모자 5종(택1)</span>
							<p class="css-1wejlc3 e1c07x486">퍼 원단으로 제작되어 한 결 더 따뜻한 모자</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">25,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">32%</span><span
										class="sales-price css-18tpqqq ei5rudb1">16,900<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000320725" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[매일] 바이오 그릭요거트 허니&amp;밤
								1(50g X 4개입)</span>
							<p class="css-1wejlc3 e1c07x486">톡 꺾어 간편하게 즐기는</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">10,400<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000321559" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[옳곡] 땅콩버터 2종 (택1)</span>
							<p class="css-1wejlc3 e1c07x486">오직 국내산 땅콩으로만 만든</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">13,500<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">19%</span><span
										class="sales-price css-18tpqqq ei5rudb1">10,900<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000320786" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[상하치즈] MINI 스낵 치즈 4종 (택1)</span>
							<p class="css-1wejlc3 e1c07x486">한 입으로 느끼는 치즈의 맛</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">7,880<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">952</span>
							</div>
						</div></a><a href="/goods/1000323709" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[마이셰프] 규슈 히타식 야끼소바</span>
							<p class="css-1wejlc3 e1c07x486">달콤 짭조름한 감칠맛</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">6,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">7%</span><span
										class="sales-price css-18tpqqq ei5rudb1">6,400<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000323646" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[킷캣] 2023 골드 파티팩
								(미니빔&amp;배경필름 4종 포함) </span>
							<p class="css-1wejlc3 e1c07x486">달콤한 연말 파티의 완성</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">8,980<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000323715" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[마이셰프] 담백한 굴림만두전골</span>
							<p class="css-1wejlc3 e1c07x486">동글동글 만두가 가득</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">16,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">6%</span><span
										class="sales-price css-18tpqqq ei5rudb1">15,850<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000323713" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[마이셰프] 얼큰한 굴림만두전골</span>
							<p class="css-1wejlc3 e1c07x486">동글동글 만두가 가득</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">14,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">7%</span><span
										class="sales-price css-18tpqqq ei5rudb1">13,850<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000327238" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[호텔파리칠] 레이지 바이브 쿠프볼 3종 (택1)</span>
							<p class="css-1wejlc3 e1c07x486">크림색의 컬러와 프렌치 레터링이 매력적인 쿠프볼</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">27,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">26%</span><span
										class="sales-price css-18tpqqq ei5rudb1">19,900<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000328100" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[에바솔로] 부르고뉴 와인잔 500ml (단품)</span>
							<p class="css-1wejlc3 e1c07x486">에바솔로잔은 아이코닉한 각진 테두리가 있어 어떤
								테이블 세팅에도 마무리 터치를 더해줍니다.</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">87,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">59%</span><span
										class="sales-price css-18tpqqq ei5rudb1">35,500<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000332929" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[삼성출판사] 임신출산육아대백과
								2023-2024년 개정판 (개정판)</span>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">19,500<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">10%</span><span
										class="sales-price css-18tpqqq ei5rudb1">17,550<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000333313" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[하우키즈풀] 드로잉 캘린더 2종 (택1)</span>
							<p class="css-1wejlc3 e1c07x486">직접 완성하는 드로잉 캘린더 입니다.</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">9,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">10%</span><span
										class="sales-price css-18tpqqq ei5rudb1">8,100<span
										class="won">원</span>~
									</span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000329559" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">11월 제철과일 골라담기 (택1)</span>
							<p class="css-1wejlc3 e1c07x486">제철맞은 과일 모아보기</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">22,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">13%</span><span
										class="sales-price css-18tpqqq ei5rudb1">19,900<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">9,999+</span>
							</div>
						</div></a><a href="/goods/1000316984" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[스키니랩] 가르시니아 다이어트 (14일분)</span>
							<p class="css-1wejlc3 e1c07x486">마시면서 관리하는</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">40,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">62%</span><span
										class="sales-price css-18tpqqq ei5rudb1">14,900<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">건강기능</span>
							</div>
						</div></a><a href="/goods/5009573" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[황영감] 저탄소 GAP 부유 단감 1kg
								(4~5입)</span>
							<p class="css-1wejlc3 e1c07x486">껍질까지 얇고 부드러운</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">9,790<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">8%</span><span
										class="sales-price css-18tpqqq ei5rudb1">8,990<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">999+</span>
							</div>
						</div></a><a href="/goods/1000324420" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[샐러드판다] 그레인 볼 샐러드 4종</span>
							<p class="css-1wejlc3 e1c07x486">곡물을 담아 든든한 포케</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">6,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">15%</span><span
										class="sales-price css-18tpqqq ei5rudb1">5,865<span
										class="won">원</span>~
									</span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">21</span>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
							</div>
						</div></a><a href="/goods/1000316606" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[치엔바오] 피넛버터 샌드 (2입) 2종</span>
							<p class="css-1wejlc3 e1c07x486">달콤하고 고소한 매력</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">4,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">15%</span><span
										class="sales-price css-18tpqqq ei5rudb1">4,165<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000086186" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">공주 대보 칼집밤 1kg</span>
							<p class="css-1wejlc3 e1c07x486">껍질채 먹어도 맛있는 밤</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">16,900<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">284</span>
							</div>
						</div></a><a href="/goods/1000102955" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">유기농 감귤 1.5kg</span>
							<p class="css-1wejlc3 e1c07x486">친환경으로 재배해 안심</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">9,980<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">999+</span>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span><span
									class="css-1er7oa7 e1cvv2hm0">한정수량</span>
							</div>
						</div></a><a href="/goods/1000306532" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[압구정포차] 에어프라이어에 튀겨먹는 바사삭
								광어까스 250g</span>
							<p class="css-1wejlc3 e1c07x486">입 안에서 바사삭 부서지는 식감</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">13,200<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
							</div>
						</div></a><a href="/goods/1000318158" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[페리에] 탄산수 플레인 (330ml 병 X
								4입)</span>
							<p class="css-1wejlc3 e1c07x486">부드러운 탄산감이 돋보이는</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">5,800<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000318160" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[페리에] 탄산수 레몬 (330ml 병 X 4입)</span>
							<p class="css-1wejlc3 e1c07x486">레몬의 상큼한 매력을 더한</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">5,800<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000318263" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[페리에] 탄산수 피치 (330ml 병 X 4입)</span>
							<p class="css-1wejlc3 e1c07x486">복숭아의 향긋한 매력을 더한</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">5,800<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000318162" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[페리에] 탄산수 라임 (330ml 병 X 4입)</span>
							<p class="css-1wejlc3 e1c07x486">라임 향으로 산뜻하게 완성한</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">5,800<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000320727" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[매일] 오리지널 우유 2.3L</span>
							<p class="css-1wejlc3 e1c07x486">든든하게 챙기는 우유</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">7,180<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000320731" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[매일] 바이오 드링킹 요구르트 750mL 3종
							</span>
							<p class="css-1wejlc3 e1c07x486">국산 원유로 깔끔하게 만든</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">4,780<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000320733" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[매일] 요구르트 플레인 (65mL X 20개입)</span>
							<p class="css-1wejlc3 e1c07x486">새콤달콤 맛있게 즐기는</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">2,750<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000323648" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[킨더] 킨더조이 크리스마스 기획팩 (20g X
								12개입) </span>
							<p class="css-1wejlc3 e1c07x486">달콤한 오너먼트로 완성</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">19,800<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">한정수량</span>
							</div>
						</div></a><a href="/goods/1000325541" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
								<div class="e1c07x4810 css-92xxgr e1u3dkre1" opacity="0.9">
									<span font-weight="500" class="css-1fkm1u5 e1u3dkre0">증정품</span>
								</div>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[해피홈] 유한양행 캡슐세제 64개 3종 (택1)</span>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">52,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">61%</span><span
										class="sales-price css-18tpqqq ei5rudb1">19,800<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000327219" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[호텔파리칠] 레이지 바이브 사이드 플레이트 3종
								(택1)</span>
							<p class="css-1wejlc3 e1c07x486">부드러운 크림색의 바디 컬러의 다용도 플레이트</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">27,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">18%</span><span
										class="sales-price css-18tpqqq ei5rudb1">22,100<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000328767" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[아가드] 소프트 의자 2종 (택1)</span>
							<p class="css-1wejlc3 e1c07x486">말랑말랑 편안한 소프트 체어</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">27,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">21%</span><span
										class="sales-price css-18tpqqq ei5rudb1">21,900<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000331566" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[모즈스웨덴] 316 스텐 원터치 손잡이
								보온보냉병 텀블러 8종 (택1)</span>
							<p class="css-1wejlc3 e1c07x486">스테인레스 316 소재로 더 안심하고 사용 할 수
								있는 보온텀블러 입니다.</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">38,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">19%</span><span
										class="sales-price css-18tpqqq ei5rudb1">31,400<span
										class="won">원</span>~
									</span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000331750" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
								<div class="e1c07x4810 css-92xxgr e1u3dkre1" opacity="0.9">
									<span font-weight="500" class="css-1fkm1u5 e1u3dkre0">+10%쿠폰</span>
								</div>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[펫투데이] 향기나는 생분해 배변봉투 8롤
								(144매) (배변봉투 8롤(144매))</span>
							<p class="css-1wejlc3 e1c07x486">튼튼해서 찢어지지 않는 향기나는 친환경 생분해
								배변봉투</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">11,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">31%</span><span
										class="sales-price css-18tpqqq ei5rudb1">7,500<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">반려동물</span><span
									class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000316961" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[대상웰라이프] 뉴케어 미니 고소한검은깨맛 24팩</span>
							<p class="css-1wejlc3 e1c07x486">맛있고 가볍게 즐기는</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">48,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">37%</span><span
										class="sales-price css-18tpqqq ei5rudb1">29,900<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000316969" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[대상웰라이프] 마이밀 퓨로틴 곡물맛 식물성
								단백질 14포</span>
							<p class="css-1wejlc3 e1c07x486">간편하게 섭취하는</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">35,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">20%</span><span
										class="sales-price css-18tpqqq ei5rudb1">27,900<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000316967" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[대상웰라이프] 마이밀 퓨로틴 초코맛 식물성
								단백질 음료 24입</span>
							<p class="css-1wejlc3 e1c07x486">달콤하면서도 든든한</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">69,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">34%</span><span
										class="sales-price css-18tpqqq ei5rudb1">44,900<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000316971" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[대상웰라이프] 마이밀 퓨로틴 초코맛 식물성
								단백질 14포</span>
							<p class="css-1wejlc3 e1c07x486">물과 함께 든든한 한 잔</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">35,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">20%</span><span
										class="sales-price css-18tpqqq ei5rudb1">27,900<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000316975" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[NZMA] UMF 15+ 뉴질랜드 마누카꿀 캔디
								30개입</span>
							<p class="css-1wejlc3 e1c07x486">한 알에 담은 독특한 달콤함</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">40,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">25%</span><span
										class="sales-price css-18tpqqq ei5rudb1">29,900<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000316965" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[대상웰라이프] 마이밀 퓨로틴 고소한맛 식물성
								단백질 음료 24입</span>
							<p class="css-1wejlc3 e1c07x486">맛있게 챙겨 먹는 단백질</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">69,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">34%</span><span
										class="sales-price css-18tpqqq ei5rudb1">44,900<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000316973" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[대상웰라이프] 마이밀 마이키즈 밀크맛 24팩</span>
							<p class="css-1wejlc3 e1c07x486">아이들을 위한 단백질 음료</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">48,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">31%</span><span
										class="sales-price css-18tpqqq ei5rudb1">32,900<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000319123" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[랑콤] 이돌 코프레 홀리데이 기프트 에디션
								(이돌 르 퍼퓸 10ml + 핸드크림 30ml+증정 미니마스카라)</span>
							<p class="css-1wejlc3 e1c07x486">특별한 홀리데이를 위한 선물</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">70,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">15%</span><span
										class="sales-price css-18tpqqq ei5rudb1">59,500<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000331723" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[페스룸] 힐링 슬리커 브러쉬</span>
							<p class="css-1wejlc3 e1c07x486">306개의 부드러운 폴리케톤 빗살로 자극없이!</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">30,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">30%</span><span
										class="sales-price css-18tpqqq ei5rudb1">20,900<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">반려동물</span><span
									class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000330076" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
								<div class="e1c07x4810 css-92xxgr e1u3dkre1" opacity="0.9">
									<span font-weight="500" class="css-1fkm1u5 e1u3dkre0">+10%쿠폰</span>
								</div>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[펫투데이] 슬라이드 댕블러 4 in 1 강아지
								산책용 원터치 물통 (슬라이드 댕블러 단품)</span>
							<p class="css-1wejlc3 e1c07x486">원터치 급수 기능이 추가된 강아지 산책용 올인원
								물통</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">44,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">32%</span><span
										class="sales-price css-18tpqqq ei5rudb1">29,900<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">반려동물</span><span
									class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000326792" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
								<div class="e1c07x4810 css-92xxgr e1u3dkre1" opacity="0.9">
									<span font-weight="500" class="css-1fkm1u5 e1u3dkre0">10%쿠폰+증정</span>
								</div>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[시세이도] 홀리데이 베스트 미니
								트리오세트(본품대비 45% 할인 , 컨센트레이트15ml, 에센스 30ml, 크림 15ml)</span>
							<p class="css-1wejlc3 e1c07x486">작지만 알찬 스킨케어 세트</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">50,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">10%</span><span
										class="sales-price css-18tpqqq ei5rudb1">45,000<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000320998" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
								<div class="e1c07x4810 css-92xxgr e1u3dkre1" opacity="0.9">
									<span font-weight="500" class="css-1fkm1u5 e1u3dkre0">골라담기특가</span>
								</div>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[블랙위크] 인기 면요리 9종 골라담기 (택1)</span>
							<p class="css-1wejlc3 e1c07x486">집에서 즐기는 맛집 요리</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">9,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">19%</span><span
										class="sales-price css-18tpqqq ei5rudb1">7,950<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">9,999+</span>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
							</div>
						</div></a><a href="/goods/1000330524" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[리델] 퍼포먼스 피노누아 2p+쇼핑백포함
								(단품)</span>
							<p class="css-1wejlc3 e1c07x486">돋보이는 크리스탈의 반짝임</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">118,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">19%</span><span
										class="sales-price css-18tpqqq ei5rudb1">95,000<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/5031894" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[달롤] 스노우 레드벨벳롤</span>
							<p class="css-1wejlc3 e1c07x486">연말 파티를 위한 스페셜 롤</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">26,500<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">10%</span><span
										class="sales-price css-18tpqqq ei5rudb1">23,850<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">301</span>
							</div>
						</div></a><a href="/goods/5031895" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[달롤] 노엘 쇼콜라롤</span>
							<p class="css-1wejlc3 e1c07x486">쌀가루로 만든 부쉬 드 노엘</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">26,500<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">10%</span><span
										class="sales-price css-18tpqqq ei5rudb1">23,850<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">689</span>
							</div>
						</div></a><a href="/goods/5044325" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[하리보] 메리 크리스마스 틴 300g </span>
							<p class="css-1wejlc3 e1c07x486">크리스마스의 설렘이 담긴 젤리</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">9,980<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">10%</span><span
										class="sales-price css-18tpqqq ei5rudb1">8,980<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">975</span>
							</div>
						</div></a><a href="/goods/5062689" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[앙팡드봉봉] 한입솜사탕 크리스마스팩 (15개입)</span>
							<p class="css-1wejlc3 e1c07x486">사르르 녹는 기분 좋은 달콤함</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">14,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">16%</span><span
										class="sales-price css-18tpqqq ei5rudb1">12,480<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">610</span>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">한정수량</span>
							</div>
						</div></a><a href="/goods/5061450" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[위니비니] 크리스마스 스트라이프 미니 장화 2종
								(택1)</span>
							<p class="css-1wejlc3 e1c07x486">앙증맞은 장화 속 달콤한 선물</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">5,500<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">9%</span><span
										class="sales-price css-18tpqqq ei5rudb1">4,980<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">999+</span>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span><span
									class="css-1er7oa7 e1cvv2hm0">한정수량</span>
							</div>
						</div></a><a href="/goods/5097715" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[달롤] 크리스마스 캐롤 롤케이크</span>
							<p class="css-1wejlc3 e1c07x486">알록달록 귀여운 색감</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">26,500<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">10%</span><span
										class="sales-price css-18tpqqq ei5rudb1">23,850<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">116</span>
							</div>
						</div></a><a href="/goods/5100645" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[메종엠오] 마들렌 슈톨렌</span>
							<p class="css-1wejlc3 e1c07x486">슈톨렌처럼 즐기는 마들렌</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">3,900<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">573</span>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
							</div>
						</div></a><a href="/goods/5139147" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[위니비니] 피너츠 크리스마스 스누피 틴 120g</span>
							<p class="css-1wejlc3 e1c07x486">스누피와 함께 즐기는 크리스마스</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">8,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">11%</span><span
										class="sales-price css-18tpqqq ei5rudb1">7,900<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">157</span>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1e5t2sz e1cvv2hm0">Kurly Only</span>
							</div>
						</div></a><a href="/goods/1000093555" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[달롤] 크리스마스 휘낭시에 세트 (6개입)</span>
							<p class="css-1wejlc3 e1c07x486">세 가지 휘낭시에를 담은</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">17,500<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">10%</span><span
										class="sales-price css-18tpqqq ei5rudb1">15,750<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">62</span>
							</div>
						</div></a><a href="/goods/1000093514" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[선물세트] 메종엠오 마들렌 오너먼트 (3개입)</span>
							<p class="css-1wejlc3 e1c07x486">더 달콤하게 장식할</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">13,000<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">49</span>
							</div>
						</div></a><a href="/goods/1000166519" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[탬버린즈] 퍼퓸 쉘 엑스 핸드크림 6종 (NEW
								옵션 추가,택1) </span>
							<p class="css-1wejlc3 e1c07x486">풍성하게 퍼지는 매력적인 향기</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">32,000<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">47</span>
							</div>
						</div></a><a href="/goods/1000290266" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[용호낙지] 낙곱새</span>
							<p class="css-1wejlc3 e1c07x486">김치볶음밥을 함께 담은</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">18,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">10%</span><span
										class="sales-price css-18tpqqq ei5rudb1">17,010<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000316384" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[홈에드] 크리스마스 테이블 눈꽃 식탁보 6종
								택1</span>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">27,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">41%</span><span
										class="sales-price css-18tpqqq ei5rudb1">15,900<span
										class="won">원</span>~
									</span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000318686" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[리본제이]스테인리스 뉴 미니 숏핸들 믹싱볼 채반
								세트 3종 세트</span>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">54,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">53%</span><span
										class="sales-price css-18tpqqq ei5rudb1">24,900<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000319198" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[위니비니] 크리스마스 토이 캔디 3종 골라담기
								(택1) </span>
							<p class="css-1wejlc3 e1c07x486">캐롤에 맞춰 춤추는 인형</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">29,800<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">19%</span><span
										class="sales-price css-18tpqqq ei5rudb1">24,000<span
										class="won">원</span>~
									</span>
								</div>
							</div>
						</div></a><a href="/goods/1000324257" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
								<div class="e1c07x4810 css-92xxgr e1u3dkre1" opacity="0.9">
									<span font-weight="500" class="css-1fkm1u5 e1u3dkre0">증정이벤트</span>
								</div>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[질스튜어트뷰티] 밀크티 블렌드 리미티드 바디밀크
								250ml</span>
							<p class="css-1wejlc3 e1c07x486">온몸을 감싸는 그윽한 향기</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">39,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">33%</span><span
										class="sales-price css-18tpqqq ei5rudb1">26,000<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000329367" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[슈피겔라우] 비노비노 보르도 2P 선물세트</span>
							<p class="css-1wejlc3 e1c07x486">수공예 작업과 거의 유사한 풀드스템 제작 방식으로
								제작되어 세련되고 견고합니다.</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">68,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">48%</span><span
										class="sales-price css-18tpqqq ei5rudb1">35,000<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000329076" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[슈프리모] 프리미엄 팝콘 원통 4종 (택1)</span>
							<p class="css-1wejlc3 e1c07x486">이색적인 플레이버가 매력적인</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">3,800<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">15%</span><span
										class="sales-price css-18tpqqq ei5rudb1">3,230<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="review-count css-xezqwk e1c07x482">
								<span class="css-mz5g71 e1c07x481"><svg width="100%"
										height="100%" viewBox="0 0 14 14" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<mask id="path-1-inside-1_1513_17755" fill="white">
										<path fill-rule="evenodd" clip-rule="evenodd"
											d="M3 2C1.89543 2 1 2.89543 1 4V8.67201C1 9.77658 1.89543 10.672 3 10.672H5.11212L6.33682 12.7653C6.5299 13.0954 7.00688 13.0954 7.19995 12.7653L8.42465 10.672H10.5C11.6046 10.672 12.5 9.77658 12.5 8.67201V4C12.5 2.89543 11.6046 2 10.5 2H3Z"></path></mask>
										<path fill="#999"
											d="M5.11212 10.672L5.97526 10.167L5.68564 9.67201H5.11212V10.672ZM6.33682 12.7653L5.47369 13.2703L5.47369 13.2703L6.33682 12.7653ZM7.19995 12.7653L6.33682 12.2604L6.33682 12.2604L7.19995 12.7653ZM8.42465 10.672V9.67201H7.85113L7.56152 10.167L8.42465 10.672ZM2 4C2 3.44772 2.44772 3 3 3V1C1.34315 1 0 2.34315 0 4H2ZM2 8.67201V4H0V8.67201H2ZM3 9.67201C2.44772 9.67201 2 9.22429 2 8.67201H0C0 10.3289 1.34315 11.672 3 11.672V9.67201ZM5.11212 9.67201H3V11.672H5.11212V9.67201ZM7.19995 12.2604L5.97526 10.167L4.24899 11.177L5.47369 13.2703L7.19995 12.2604ZM6.33682 12.2604C6.5299 11.9304 7.00688 11.9304 7.19995 12.2604L5.47369 13.2703C6.05291 14.2604 7.48386 14.2604 8.06309 13.2703L6.33682 12.2604ZM7.56152 10.167L6.33682 12.2604L8.06309 13.2703L9.28779 11.177L7.56152 10.167ZM10.5 9.67201H8.42465V11.672H10.5V9.67201ZM11.5 8.67201C11.5 9.22429 11.0523 9.67201 10.5 9.67201V11.672C12.1569 11.672 13.5 10.3289 13.5 8.67201H11.5ZM11.5 4V8.67201H13.5V4H11.5ZM10.5 3C11.0523 3 11.5 3.44772 11.5 4H13.5C13.5 2.34315 12.1569 1 10.5 1V3ZM3 3H10.5V1H3V3Z"
											mask="url(#path-1-inside-1_1513_17755)"></path>
										<circle fill="#999" cx="4.34998" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="6.75" cy="6.17871" r="0.75"></circle>
										<circle fill="#999" cx="9.15002" cy="6.17871" r="0.75"></circle></svg></span><span
									class="review-number css-l610kl e1c07x480">41</span>
							</div>
						</div></a><a href="/goods/1000329363" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">
								<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path
										d="M1.53516 2.70001H3.93316L5.76816 10.609H13.6482L15.2992 4.35901H4.86916M12.8582 14.933C13.0098 14.9375 13.1609 14.9115 13.3024 14.8566C13.4438 14.8017 13.5728 14.7189 13.6817 14.6132C13.7906 14.5075 13.8771 14.381 13.9363 14.2412C13.9954 14.1015 14.0258 13.9513 14.0258 13.7995C14.0258 13.6478 13.9954 13.4975 13.9363 13.3578C13.8771 13.218 13.7906 13.0915 13.6817 12.9858C13.5728 12.8801 13.4438 12.7974 13.3024 12.7424C13.1609 12.6875 13.0098 12.6615 12.8582 12.666C12.5634 12.6748 12.2836 12.798 12.0782 13.0096C11.8727 13.2213 11.7578 13.5046 11.7578 13.7995C11.7578 14.0944 11.8727 14.3778 12.0782 14.5894C12.2836 14.801 12.5634 14.9243 12.8582 14.933ZM6.49316 14.933C6.64484 14.9375 6.79589 14.9115 6.93735 14.8566C7.07881 14.8017 7.20781 14.7189 7.31669 14.6132C7.42558 14.5075 7.51214 14.381 7.57126 14.2412C7.63037 14.1015 7.66083 13.9513 7.66083 13.7995C7.66083 13.6478 7.63037 13.4975 7.57126 13.3578C7.51214 13.218 7.42558 13.0915 7.31669 12.9858C7.20781 12.8801 7.07881 12.7974 6.93735 12.7424C6.79589 12.6875 6.64484 12.6615 6.49316 12.666C6.19836 12.6748 5.91858 12.798 5.71315 13.0096C5.50773 13.2213 5.39283 13.5046 5.39283 13.7995C5.39283 14.0944 5.50773 14.3778 5.71315 14.5894C5.91858 14.801 6.19836 14.9243 6.49316 14.933Z"
										stroke="#333333" stroke-linecap="square"
										stroke-linejoin="round"></path></svg>
								담기
							</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">샛별배송</span></span><span
								class="css-1dry2r1 e1c07x488">[매일] 소화가 잘되는 우유 (930ml X
								2입)</span>
							<p class="css-1wejlc3 e1c07x486">부담 없이 마시는 한 잔</p>
							<div class="e1c07x487  css-1tl7659 ei5rudb2">
								<div>
									<span class="sales-price css-18tpqqq ei5rudb1">7,560<span
										class="won">원</span></span>
								</div>
							</div>
						</div></a><a href="/goods/1000331144" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[데일리라이크] 2024 마이 버디 다이어리 3종
								(택1)</span>
							<p class="css-1wejlc3 e1c07x486">먼슬리+위클리 반복되는 형식의 날짜형 다이어리</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">11,000<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">10%</span><span
										class="sales-price css-18tpqqq ei5rudb1">9,900<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000330752" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[모나리자] 네이처블랑 에어볼 키친타올 (150매
								X 4롤 X 4팩)</span>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">32,900<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">45%</span><span
										class="sales-price css-18tpqqq ei5rudb1">17,900<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a><a href="/goods/1000330735" class="css-9o2zup e1c07x4813"><div
							class="css-0 e1c07x4811">
							<div class="e1c07x4812 css-tou8lf e3um3060">
								<span
									style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
									alt="상품 이미지"
									src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
									decoding="async" data-nimg="fill" class="css-0"
									style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover;">
								<noscript></noscript></span>
							</div>
						</div>
						<div class="button-wrapper">
							<button type="button" class="css-13xu5fn e17x72af0">상세보기</button>
						</div>
						<div class="css-1kpzrna e1c07x489">
							<span class="css-1qd61ut e1ms5t9c1"><span
								class="css-1vdqr5b e1ms5t9c0">판매자배송</span></span><span
								class="css-1dry2r1 e1c07x488">[레노바] 윈터에디션 티슈 3종(택1)</span>
							<p class="css-1wejlc3 e1c07x486">따스한 크리스마스 무드에 필요한 화장지, 냅킨, 빅
								홈페이퍼</p>
							<div class="e1c07x487 discount-price css-1tl7659 ei5rudb2">
								<div>
									<span class="dimmed-price css-18tpqqq ei5rudb1">31,600<span
										class="won">원</span></span>
								</div>
								<div class="discount">
									<span class="discount-rate css-19lkxd2 ei5rudb0">37%</span><span
										class="sales-price css-18tpqqq ei5rudb1">19,900<span
										class="won">원</span></span>
								</div>
							</div>
							<div class="css-1hrnl0u e1cvv2hm1">
								<span class="css-1er7oa7 e1cvv2hm0">무료배송</span>
							</div>
						</div></a>
				</div>
				<div class="css-rdz8z7 e82lnfz1">
					<a class="css-1d20dg7 e82lnfz0"><img
						src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAHCAQAAABwkq/rAAAAHUlEQVR42mNgAIPi/8X/kWkwA8SE0UQIMJAsCKMBBzk27fqtkcYAAAAASUVORK5CYII="
						alt="처음 페이지로 이동하기 아이콘"></a><a class="css-1d20dg7 e82lnfz0"><img
						src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGElEQVR42mNgAIPi/8X/4QwwE5PBQJADAAKSG3cyVhtXAAAAAElFTkSuQmCC"
						alt="이전 페이지로 이동하기 아이콘"></a><a class="css-19yo1fh e82lnfz0">1</a><a
						class="css-1d20dg7 e82lnfz0">2</a><a class="css-1d20dg7 e82lnfz0">3</a><a
						class="css-1d20dg7 e82lnfz0"><img
						src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGUlEQVR42mMo/l/8nwECQEwCHEwGhAlRBgA2mht3SwgzrwAAAABJRU5ErkJggg=="
						alt="다음 페이지로 이동하기 아이콘"></a><a class="css-1d20dg7 e82lnfz0"><img
						src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAHCAQAAABwkq/rAAAAIElEQVR42mMo/l/8n4GBgQFGQ5kgDowmQZCwAMImhDkAb0k27Zcisn8AAAAASUVORK5CYII="
						alt="마지막 페이지로 이동하기 아이콘"></a>
				</div>
			</div>
		</div>
	</div>



	<!-- footer -->
	<%@ include file="../../../css/headerFooter/shopFooter.jsp"%>
	<!-- ------------------------------------------------------------------------ -->

	<!-- 부트스트랩 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
</body>
</html>