<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>
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

<!-- detail css -->
<link href="${pageContext.request.contextPath}/css/cssStyle/detail.css"
	rel="stylesheet" />
	
<!-- prodDetailInfo css -->
<link href="${pageContext.request.contextPath}/css/cssStyle/prodDetailInfo.css"
	rel="stylesheet" />
	
	

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

</head>
<body>
	<!-- header -->
	<%@ include file="../../../css/headerFooter/shopHeader.jsp"%>
	<!-- ------------------------------------------------------------------------ -->

	<%-- \${vo } : ${vo }
	<hr>
	\${sellerVO} : ${sellerVO }
	<hr>
	\${productImageList } : ${productImageList }
	<hr> --%>


	<div class="css-n48rgu ex9g73v0">
		<div class="css-1qphylu e1tjwjt99"></div>
		<div class="css-16c0d8l e1brqtzw0">
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
					<h2 class="css-abwjr2 e1q8tigr4">
						<span class="css-5nirzt e1q8tigr3">${vo.discountRate }<!-- -->%
						</span> <span class="css-9pf1ze e1q8tigr2"> <fmt:formatNumber
								value="${vo.discountedPrice}" type="number" pattern="#,###" />
						</span> <span class="css-1x9cx9j e1q8tigr1">원</span>
					</h2>

					<span class="css-1e1rd4p e1q8tigr0"> <span
						id="formattedPrice"> <fmt:formatNumber value="${vo.price}"
								type="number" pattern="#,###" />원
					</span>
					</span>
					<p class="css-1jali72 e17iylht2">
						원산지:
						<!-- -->${vo.origin }</p>
					<ul class="css-iqoq9n e6qx2kx2">
						<li class="css-e6zlnr epzddad2">
							<dt class="css-lytdfk epzddad1">배송</dt>
							<dd class="css-1k8t52o epzddad0">
								<p class="css-c02hqi e6qx2kx1">샛별배송</p>
								<p class="css-uy94b2 e6qx2kx0">23시 전 주문 시 내일 아침 7시 전 도착</p>
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

								<!-- 옵션이 있는 경우 기존 상품 + 옵션 -->
								<div>
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
													<!-- when~otherwise -->
													<span class="css-fburr9 e1bjklo11"> <fmt:formatNumber
															value="${vo.price}" type="number" pattern="#,###" /> 원
													</span> <span class="css-gqkxk8 e1bjklo10"> <fmt:formatNumber
															value="${vo.discountedPrice}" type="number"
															pattern="#,###" /> 원
													</span>
												</div>
											</div>
										</div>
									</dd>
								</div>

								<!-- 옵션  -->
								<div>
									<c:if test="${vo.optionCheck eq 'Y'}">
										<dd class="css-1k8t52o epzddad0">
											<div class="cart-option-item css-1cb5lnc e1bjklo18">
												<div class="css-1qdyvok e1bjklo16">
													<span class="css-1yojl0t e1bjklo14">[${vo.brand }]
														${vo.optionName }</span>
												</div>
												<div class="css-tk6lxo e1bjklo15">
													<div class="css-nx0orh e1cqr3m40">
														<button type="button" aria-label="수량내리기"
															class="css-1e90glc e1hx75jb0"></button>
														<div class="count css-6m57y0 e1cqr3m41">1</div>
														<button type="button" aria-label="수량올리기"
															class="css-18y6jr4 e1hx75jb0"></button>
													</div>
													<div class="css-1jzvrpg e1bjklo12">
														<span class="css-fburr9 e1bjklo11"> <fmt:formatNumber
																value="${vo.optionPrice}" type="number" pattern="#,###" />원
														</span>
														<!-- 옵션가격에 할인적용된 가격 표시해야됨 -->
														<span class="css-gqkxk8 e1bjklo10"> <fmt:formatNumber
																value="${vo.discountedPrice}" type="number"
																pattern="#,###" />원
														</span>
													</div>
												</div>
											</div>
										</dd>
									</c:if>
								</div>

							</div>
						</div>

						<div class="css-9y0nwt e17iylht0">
							<div class="css-ixlb9s eebc7rx8">
								<div class="css-yhijln eebc7rx7">
									<span class="css-w1is7v eebc7rx6">총 상품금액 :</span>
									<!-- 계산. 할인이 있는 경우와 없는 경우 .. 수정해야됨 -->

									<span id="totalPriceDisplay" class="css-x4cdgl eebc7rx5">
										<fmt:formatNumber value="${vo.discountedPrice}" type="number"
											pattern="#,###" />
									</span> <span class="css-1jb8hmu eebc7rx4">원</span>
								</div>
								<div class="css-1iis94s eebc7rx3"></div>
							</div>
						</div>
						<div class="css-gnxbjx e10vtr1i2">
							<button class="css-3z91zj e4nu7ef3" type="button" width="56"
								height="56" radius="3">
								<span class="css-nytqmg e4nu7ef1"> <svg
										xmlns="http://www.w3.org/2000/svg" width="25" height="25"
										fill="currentColor" class="bi bi-suit-heart"
										viewBox="0 0 16 16">
  								<path
											d="m8 6.236-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z" />
</svg>
							</button>
							<button class="css-3z91zj e4nu7ef3" type="button" disabled=""
								width="56" height="56" radius="3">
								<span class="css-nytqmg e4nu7ef1"> <img
									src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIHN0cm9rZT0iI0NDQyIgc3Ryb2tlLXdpZHRoPSIxLjYiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTEyLjY2NiAyM2EzLjMzMyAzLjMzMyAwIDEgMCA2LjY2NiAwIi8+CiAgICAgICAgPHBhdGggZD0iTTI1Ljk5OCAyMi43MzhINmwuMDEzLS4wM2MuMDc2LS4xMzUuNDcxLS43MDQgMS4xODYtMS43MDlsLjc1LTEuMDV2LTYuNjM1YzAtNC40ODUgMy40MzgtOC4xNCA3Ljc0MS04LjMwOEwxNiA1YzQuNDQ2IDAgOC4wNSAzLjcyMiA4LjA1IDguMzE0djYuNjM0bDEuNzA3IDIuNDExYy4xNzMuMjUzLjI1NC4zOC4yNDIuMzh6IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KICAgIDwvZz4KPC9zdmc+Cg=="
									alt="" class="css-0">
								</span>
							</button>
							<div class="css-14jnwd7 e10vtr1i0">
								<button class="cart-button css-1qirdbn e4nu7ef3" type="button"
									radius="3">
									<span class="css-nytqmg e4nu7ef1">장바구니 담기</span>
								</button>
							</div>
						</div>
					</div>
				</section>
			</main>

			<!-- nav -->

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
										<h3>
											[${vo.brand }]<br>${vo.title }
										</h3>
										<p class="words">${vo.content }
											<br> <br> <br> <br>
										</p>
									</div>
								</div>
								<div class="btn_event_area">
									<div class="pic">
										<span class="btn_event_banner"> <c:forEach
												var="productImage" items="${productImageList}"
												varStatus="loop">
												<c:if test="${loop.index > 0}">
													<img alt="상세정보이미지"
														src="${pageContext.request.contextPath}/productImage/detail/${productImage.productPhoto}" />
												</c:if>
											</c:forEach>
										</span>
									</div>
								</div>

								<!-- 판매자정보, 교환및환불정보 등등 (css 미적용)  -->
								<%@ include file="../../../css/include/prodDetailInfo.jsp"%>

							</div>
						</div>
					</div>
					<div class="css-8k5a6c ezy1ugy1"></div>
				</div>

			</div>
			</article>
		</div>
	</div>
	</div>
	</div>
	</section>
	</div>
	</div>

	<script>
	
	//수량 2 이상일 때 아이콘 변경
	function removeDisabled(){
		alert("removeDisabled() 실행~~");
		var quantity = parseInt(document.getElementById("count_${vo.productId}").innerText);
		var decreaseButton = document.querySelector('.css-1e90glc');
		console.log("quantity : " + quantity);
		console.log("decreaseButton : " + decreaseButton);
	
		if (quantity > 1) {
		    decreaseButton.removeAttribute('disabled');
		    decreaseButton.classList.add('css-8azp8'); // css-8azp8 클래스 추가
		} else {
		    decreaseButton.setAttribute('disabled', 'true');
		    decreaseButton.classList.add('css-1e90glc');
		    decreaseButton.classList.remove('css-8azp8'); // css-8azp8 클래스 제거
		}
	}
	
	//수량 + -
	function updateQuantity(productId, action, className){
		var currentQuantityElement = document.getElementById(className);
		var currentQuantity = parseInt(currentQuantityElement.innerText);
		
		alert("버튼클릭됨~");
		
		if (action === "increase"){
			currentQuantity++;
			console.log("currentQuantity : " + currentQuantity);
		} else if(action === "decrease" && currentQuantity > 1){
			currentQuantity--;
			console.log("currentQuantity : " + currentQuantity);
		}
		
		updatePrices();
	
		$.ajax("${pageContext.request.contextPath}/cart/updateQuantity.do",{
			type:"post",
			data : {
				productId : productId,
				quantity : currentQuantity
			},
			success : function(response){
				alert("성공~");
				currentQuantityElement.innerText = currentQuantity;
				calculateTotal();
				updatePrices();
				removeDisabled();
			},
			error : function(error){
				alert("실패");
			}
		}); 
	} 
	
	// 수량과 할인된 가격을 곱하는 함수
    function calculateTotal() {
        var productId = ${vo.productId}; // 제품 ID 또는 필요한 경우 다른 방법으로 ID 설정
        var quantityElement = document.getElementById("count_" + productId);
        var quantity = parseInt(quantityElement.innerText);
        var discountedPrice = ${vo.discountedPrice}; // 할인된 가격

        // 수량과 할인된 가격을 곱하여 총 가격 계산
        var totalPrice = quantity * discountedPrice;

        // 계산된 총 가격을 어딘가에 표시하거나 활용할 수 있습니다.
        console.log("총 가격: " + totalPrice);
        
     	// 계산된 총 가격을 특정 위치에 표시
        var totalElement = document.getElementById("totalPriceDisplay"); // 표시할 위치의 요소 ID
        totalElement.innerText = totalPrice; // 요소에 총 가격을 표시
    }

	// 전체 가격 업데이트 함수
	function updatePrices() {
	    var originalTotal = 0;
	    var discountTotal = 0;
	   
	    $(".cartProductSelect").each(function () {
	        var checkbox = $(this);
	        var productId = checkbox.attr('id').replace('cartProductSelect', '');
	        var originalPrice = parseFloat($("#price_" + productId).data('original-price'));
	        var discountRate = parseFloat($(".discountRate_" + productId).data('original-rate'));
	        var quantity = parseInt($("#count_" + productId).text());

	        if (checkbox.data('discount-option') === true && checkbox.prop("checked")) {
	            originalTotal += originalPrice * quantity;
	            discountTotal += Math.floor(originalPrice - originalPrice * (discountRate / 100)) * quantity;
	        } else if (checkbox.prop("checked")) {
	            originalTotal += originalPrice * quantity;
	        }
	    }); 
	    
	}
	</script>

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