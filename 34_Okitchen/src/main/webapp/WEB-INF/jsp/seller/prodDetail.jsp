<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품상세정보</title>
<link
	rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.min.css"
/>

<link
	rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous"
/>


<!-- detail css -->
<link href="${pageContext.request.contextPath}/css/cssStyle/detail.css"
	rel="stylesheet" />
<!-- prodDetailInfo css -->
<link
	href="${pageContext.request.contextPath}/css/cssStyle/prodDetailInfo.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/cssStyle/style.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/cssStyle/seller.css"
	rel="stylesheet" />
</head>

<body>
<%-- \${vo } : ${vo } <hr>
\${sellerVO} : ${sellerVO } <hr>
\${productImageList } : ${productImageList } <hr> --%>
<script>
	window.onload = function() {
		if("${sellerVO.sellerId}" === ("") ||"${sellerVO.sellerId}" === (null)){
			alert("세션만료 : 다시 로그인 해주세요.")
			location.href="${pageContext.request.contextPath}/sellerLogin.jsp";
		}
	}
</script>

<!-- header -->
<%@ include file="/css/headerFooter/sellerLogoutHeader.jsp" %>

<!-------------------- 상품 디테일 --------------------->

<div class="css-1qphylu e1tjwjt99"></div>
	<div class="css-16c0d8l e1brqtzw0">
		<div class="update_button">
			<button class="update_prod btn" id="updateBtn" onclick="update(${vo.productId })">수정</button>
		</div>
		<main id="product-atf" class="css-1eoy87d e17iylht5">
				<div class="css-rky48o e17iylht4">
					<img alt="대표이미지"
						src="${pageContext.request.contextPath}/productImage/title/${vo.image}">
				</div>
				<section class="css-1ua1wyk e17iylht3">
					<div class="css-12lw2qc ezpe9l13">샛별배송</div>
					<div class="css-1qy9c46 ezpe9l12">
						<h1 class="css-79gmk3 ezpe9l11">[${vo.brand }] ${vo.title }</h1>
						<button class=" css-57nu3d eaxuegm1"></button>
					</div>
					<c:choose>
						<c:when test="${vo.discountRate eq 0}">
							<span class="css-9pf1ze e1q8tigr0"> <span
								id="formattedPrice"> <fmt:formatNumber
										value="${vo.price}" type="number" pattern="#,###" />원
							</span>
							</span>
						</c:when>
						<c:otherwise>
							<h2 class="css-abwjr2 e1q8tigr4">
								<span class="css-5nirzt e1q8tigr3">${vo.discountRate }<!-- -->%
								</span> <span class="css-9pf1ze e1q8tigr2"> <fmt:formatNumber
										value="${vo.discountedPrice}" type="number" pattern="#,###" />
								</span> <span class="css-1x9cx9j e1q8tigr1">원</span>
							</h2>
						</c:otherwise>
					</c:choose>


					<p class="css-1jali72 e17iylht2">
						원산지:
						<!-- -->${vo.origin }</p>
					<ul class="css-iqoq9n e6qx2kx2">
						<li class="css-e6zlnr epzddad2">
							<dt class="css-lytdfk epzddad1">배송</dt>
							<dd class="css-1k8t52o epzddad0">
								<!-- <p class="css-c02hqi e6qx2kx1">샛별배송</p> -->
								<p class="css-uy94b2 e6qx2kx0">샛별배송<br>23시 전 주문 시 내일 아침 7시 전 도착</p>
							</dd>
						</li>
						<li class="css-e6zlnr epzddad2">
							<dt class="css-lytdfk epzddad1">판매자</dt>
							<dd class="css-1k8t52o epzddad0">
								<p class="css-c02hqi e6qx2kx1">${sellerVO.companyName}</p>
							</dd>
						</li>
						<li class="css-e6zlnr epzddad2">
							<dt class="css-lytdfk epzddad1">판매단위</dt>
							<dd class="css-1k8t52o epzddad0">
								<p class="css-c02hqi e6qx2kx1">1팩</p>
							</dd>
						</li>
						<li class="css-e6zlnr epzddad2">
							<dt class="css-lytdfk epzddad1">재고</dt>
							<dd class="css-1k8t52o epzddad0">
								<p class="css-c02hqi e6qx2kx1">${vo.stock }</p>
							</dd>
						</li>
						<li class="css-e6zlnr epzddad2">
							<dt class="css-lytdfk epzddad1">제품상태</dt>
							<dd class="css-1k8t52o epzddad0">
								<p class="css-c02hqi e6qx2kx1"> - ${vo.approvalStatus }</p>
								<p class="css-c02hqi e6qx2kx1"> - ${vo.productStatus }</p>
							</dd>
						</li>
						<li class="css-e6zlnr epzddad2">
							<dt class="css-lytdfk epzddad1">제조일자</dt>
							<dd class="css-1k8t52o epzddad0">
								<p class="css-c02hqi e6qx2kx1">${vo.manufacturingDate }</p>
							</dd>
						</li>
						<li class="css-e6zlnr epzddad2">
							<dt class="css-lytdfk epzddad1">유통기한(또는 소비기한)정보</dt>
							<dd class="css-1k8t52o epzddad0">
								<p class="css-c02hqi e6qx2kx1">${vo.expirationDate }</p>
							</dd>
						</li>
						<li class="css-e6zlnr epzddad2">
							<dt class="css-lytdfk epzddad1">상품등록신청일</dt>
							<dd class="css-1k8t52o epzddad0">
								<p class="css-c02hqi e6qx2kx1">${vo.submitDate }</p>
							</dd>
						</li>
						<li class="css-e6zlnr epzddad2">
							<dt class="css-lytdfk epzddad1">주의사항</dt>
							<dd class="css-1k8t52o epzddad0">
								<p class="css-c02hqi e6qx2kx1">${vo.caution }</p>
							</dd>
						</li>
						<li class="css-e6zlnr epzddad2">
							<dt class="css-lytdfk epzddad1">안내사항</dt>
							<dd class="css-1k8t52o epzddad0">
								<p class="css-c02hqi e6qx2kx1">${vo.notification }</p>
							</dd>
						</li>
					</ul>
					<div class="css-1bp09d0 e17iylht1">
						<div class="css-2lvxh7 e1qy0s5w0">

							<div class="css-e6zlnr epzddad2">
								<dt class="css-lytdfk epzddad1">상품선택</dt>
								<div>
									<div style="margin-bottom: 10px;">
										<dd class="css-1k8t52o epzddad0">
											<div class="cart-option-item css-1cb5lnc e1bjklo18">
												<div class="css-1qdyvok e1bjklo16">
													<span class="css-1yojl0t e1bjklo14">[${vo.brand }]
														${vo.title }</span>
												</div>
												<div class="css-tk6lxo e1bjklo15">
													<div class="cartProductCnt css-nx0orh e1cqr3m40">
														<button type="button" aria-label="수량내리기"
															onclick="updateQuantity(${vo.productId},'decrease', 'count_${vo.productId }')"
															disabled="" class="css-1e90glc e1hx75jb0"></button>

														<div class="count css-6m57y0 e1cqr3m41"
															id="count_${vo.productId }">1</div>

														<button type="button" aria-label="수량올리기"
															onclick="updateQuantity(${vo.productId},'increase', 'count_${vo.productId }')"
															class="css-18y6jr4 e1hx75jb0"></button>
													</div>
													<div class="css-1jzvrpg e1bjklo12">
														<c:choose>
															<c:when test="${vo.discountRate eq 0}">
																<span class="css-gqkxk8 e1bjklo11"> <fmt:formatNumber
																		value="${vo.price}" type="number" pattern="#,###" />
																	원
																</span>
															</c:when>
															<c:otherwise>
																<span class="css-fburr9 e1bjklo11"> <fmt:formatNumber
																		value="${vo.price}" type="number" pattern="#,###" />
																	원
																</span>
																<span class="css-gqkxk8 e1bjklo10"> <fmt:formatNumber
																		value="${vo.discountedPrice}" type="number"
																		pattern="#,###" /> 원
																</span>
															</c:otherwise>
														</c:choose>
													</div>
												</div>
											</div>
										</dd>
									</div>
								</div>
							</div>
						</div>

						<div class="css-9y0nwt e17iylht0">
							<div class="css-ixlb9s eebc7rx8">
								<div class="css-yhijln eebc7rx7">
									<span class="css-w1is7v eebc7rx6">총 상품금액 :</span> 
										<span id="totalPriceDisplay" class="css-x4cdgl eebc7rx5"> 
											<c:choose>
															<c:when test="${vo.discountRate eq 0}">
																<span> <fmt:formatNumber
																		value="${vo.price}" type="number" pattern="#,###" />
																</span>
															</c:when>
															<c:otherwise>
																<span> <fmt:formatNumber
																		value="${vo.discountedPrice}" type="number"
																		pattern="#,###" /> 
																</span>
															</c:otherwise>
														</c:choose>
										</span>
									<span class="css-1jb8hmu eebc7rx4">원</span>
								</div>
								<div class="css-1iis94s eebc7rx3"></div>
							</div>
						</div>
						<div class="css-gnxbjx e10vtr1i2">
						
							<!-- 찜 버튼 (시작) -->
							<button class="css-3z91zj e4nu7ef3" type="button" width="56"
								height="56" radius="3" id="heartBtn">
								<span class="css-nytqmg e4nu7ef1">
								<img src=${heartImg} alt="찜한상품" class="css-0"> 
								<!-- 로그인 X / 로그인 O 찜 리스트에 없을 때  -->	
							 	<!-- <img src="../css/img/heart_before.png" alt="찜한상품" class="css-0"> -->
								<!-- 로그인 O / 찜 리스트에 있을 때  -->	
								<!-- <img src="../css/img/heart_after.png" alt="찜하지않은상품" class="css-0"> -->
								
								</span>
							</svg>
							</button>
							<!-- 찜 버튼 (끝) -->
							
							<button class="css-3z91zj e4nu7ef3" type="button" disabled=""
								width="56" height="56" radius="3">
								<span class="css-nytqmg e4nu7ef1"> 
								<img
									src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIHN0cm9rZT0iI0NDQyIgc3Ryb2tlLXdpZHRoPSIxLjYiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTEyLjY2NiAyM2EzLjMzMyAzLjMzMyAwIDEgMCA2LjY2NiAwIi8+CiAgICAgICAgPHBhdGggZD0iTTI1Ljk5OCAyMi43MzhINmwuMDEzLS4wM2MuMDc2LS4xMzUuNDcxLS43MDQgMS4xODYtMS43MDlsLjc1LTEuMDV2LTYuNjM1YzAtNC40ODUgMy40MzgtOC4xNCA3Ljc0MS04LjMwOEwxNiA1YzQuNDQ2IDAgOC4wNSAzLjcyMiA4LjA1IDguMzE0djYuNjM0bDEuNzA3IDIuNDExYy4xNzMuMjUzLjI1NC4zOC4yNDIuMzh6IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KICAgIDwvZz4KPC9zdmc+Cg=="
									alt="" class="css-0">
								</span>
							</button>
							<div class="css-14jnwd7 e10vtr1i0">
								<button class="cart-button css-1qirdbn e4nu7ef3" type="button"
									radius="3">
									<span class="css-nytqmg e4nu7ef1">장바구니 담기</span>
								</button>
							<p id="scroll1"></p>
							</div>
						</div>
					
				</div>
			</section>
		</main>
	</div>


<div class="css-0 el27cq1">
<div id="description" class="css-18eozqj el27cq0">
	<div class="css-1d3w5wq e1d86arr0">
		<div class="css-1yg5v8v">
			<div class="goods_wrap">
				<div class="goods_intro">
					<div class="pic">
						<img alt="상품설명이미지"
							src="${pageContext.request.contextPath}/productImage/detail/${productImageList[0].productPhoto}" />
					</div>
					<div class="context last">
						<h3 cla>
							[${vo.brand }]<br> <small> ${vo.title } </small>
						</h3>
						<p class="words">${vo.content }
							<br> <br> <br> <br>
						</p>
					</div>
				</div>

				<div class="btn_event_area">
					<div class="pic">
						<span class="btn_event_banner">
						<c:forEach var="productImage" items="${productImageList}" varStatus="loop">
							<c:if test="${loop.index > 0}">
							<img alt="상세정보이미지"
								src="${pageContext.request.contextPath}/productImage/detail/${productImage.productPhoto}" />
							</c:if>
						</c:forEach>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>

<!-- 판매자정보 등등 -->
<%@ include file="/css/include/prodDetailInfo.jsp"%>

<script>
	function update(productId){
		location.href="../seller/sellerProductUpdate.do?productId="+ productId;
	}
	function StatusUpdate(productId){
		location.href="../seller/productStatusUpdate.do?productId="+ productId;
	}
</script>
<!-- footer -->
<%@ include file="../../../../css/headerFooter/sellerFooter.jsp" %>  


      
</body>
</html>