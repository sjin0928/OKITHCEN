<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 후 장바구니 페이지</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
   <!-- 메뉴바 외 코드 -->
   <link href="${pageContext.request.contextPath}/css/cssStyle/style.css" rel="stylesheet" />
   <!-- 메뉴바 부트스트랩 템플릿 -->
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/cart.css"/>
<script>
	//주문하기 창으로 이동 전 작업
	function proceedToPayment(){
		
		if(!$(".cartProductSelect").is(":checked")) {
			alert("선택한 상품이 없습니다");
			return;
		}
		
		var selectedProducts = [];
		 $(".cartProductSelect:checked").each(function(){
			var productId = $(this).attr("id").replace("cartProductSelect", "");
			var quantity = $("#count_" + productId).text();
			var price = $("#price_" + productId).attr("data-original-price");
			var discountRate = $("#discountRate_" +productId).attr("data-original-rate");
			var image = $("#cartProductImg_" +productId).attr("data-img");
			//alert(image);
			if (discountRate == null){
				discountRate = "0";
			}
			var originalTotal = price * quantity;
			var discountTotal = 0; 
				if (discountRate != 0 ){
					discountTotal = Math.floor(price - price * (discountRate / 100)) * quantity;
				}
           
			
            var deliveryFee = 3000;
            var totalAmount = originalTotal + deliveryFee - discountTotal;
            
			var title = $("#title_" + productId).text();
				
			selectedProducts.push({
				image : image,
				productId : productId,
				quantity : quantity,
				price : price,
				discountRate : discountRate,
				totalAmount : totalAmount,
				title : title,
			});
		 });
		 //alert("selectedProducts: " + JSON.stringify(selectedProducts));
		 console.log(selectedProducts);
		 
		$.ajax("orderForm.do",{
		 	type:"post",
		 	contentType: "application/json",
	        data: JSON.stringify({ selectedProducts: selectedProducts }),
		 	success : function(){
		 		//alert("성공");
		 		location.href="goOrderForm.do";
		 	},
		 	error : function(){
		 		alert("실패");
		 	}
		}); 
	}
	//--------------------
	/*function toggleCheckbox() {
        var checkbox = document.querySelector('.allCheckbox');
        var checkboxPath = document.querySelector('.checkboxBtn');

        if (checkbox.checked) {
            checkboxPath.setAttribute('fill', '#00FF00');
        } else {
            checkboxPath.setAttribute('fill', '#fff'); 
        }
    }*/
	// 전체 가격 업데이트 함수
	function updatePrices() {
	    var originalTotal = 0; // 총 상품 가격
	    var discountTotal = 0; // 할인 총액

	    //장바구니 상품들을 순회할때,
	    $(".cartProductSelect").each(function () {
	        var checkbox = $(this);
	        var productId = checkbox.attr('id').replace('cartProductSelect', '');
	        var originalPrice = parseFloat($("#price_" + productId).data('original-price')); //상품의 원래 가격
	        var discountRate = parseFloat($(".discountRate_" + productId).data('original-rate')); //상품의 할인율
	        var quantity = parseInt($("#count_" + productId).text()); //상품 수량

	        var discountedPriceElement = $("#discountedPrice_" + productId);
	        var discountedPrice = discountedPriceElement.length > 0 ? parseFloat(discountedPriceElement.data('discounted-price')) : originalPrice;
			//만약 할인 옵션이 체크되어 있고,체크박스가 선택된 경우
	        if (checkbox.data('discount-option') === true && checkbox.prop("checked")) {
	            originalTotal += discountedPrice * quantity;
	            discountTotal += Math.floor(originalPrice * (discountRate / 100)) * quantity; //할인된 총액 계산
	        } else if (checkbox.prop("checked")) {
	            originalTotal += originalPrice * quantity; //할인 옵션이 체크되지 않은 경우 원래 가격 합산
	        }
	    });
	
	    // 배송비 및 결제예정금액 계산
	    var deliveryFee = parseInt($("#deliveryFee").text().replace('원', ''));

	    // 조건: 총합이 5만원을 넘어가면 배송비 0원, 그렇지 않으면 3,000원
	    if (originalTotal  > 50000 || $(".cartProductSelect:checked").length === 0) {
	        deliveryFee = 0;
	    } else {
	        deliveryFee = 3000;
	    }
	    var totalAmount = originalTotal + deliveryFee; //최종 결제예정 금액

	    // 표시 업데이트
	    updatePriceDisplay("#originalTotal", originalTotal);
	    updatePriceDisplay("#discountTotal", discountTotal !== 0 ? + discountTotal : '0');
	    updatePriceDisplay("#totalAmount", totalAmount);
	    updatePriceDisplay("#deliveryFee", deliveryFee);
	}
	
	//업데이트 표시 되는 함수 
	function updatePriceDisplay(elementId, amount) {
	    $(elementId).text(numberWithCommas(amount) + '원');
	}
	//가격 변하게 하는 함수 ///////////////
	function updateProductPrice(productId, quantity) {
    var priceElement = document.getElementById('price_' + productId);
    var originalPrice = parseFloat(priceElement.getAttribute('data-original-price')); //상품의 원래 가격

    var newPrice = Math.floor(originalPrice * quantity); //새로운 가격 계산
    priceElement.textContent = numberWithCommas(newPrice) + '원'; //표시 업데이트

    var discountedPriceElement = document.getElementById('discountedPrice_' + productId);
    if (discountedPriceElement) {
        var discountRateElement = document.querySelector('.discountRate_' + productId);
        var discountRate = parseFloat(discountRateElement.getAttribute('data-original-rate')); //상품의 할인율

        var discountedPrice = Math.floor(newPrice - newPrice * (discountRate / 100)); //할인된 가격 계산
        discountedPriceElement.innerHTML = numberWithCommas(discountedPrice) + '원'; //표시 업데이트
    }
}
	//수량 + -
	function updateQuantity(productId, action){
		var currentQuantityElement = document.getElementById("count_" + productId);
		var currentQuantity = parseInt(currentQuantityElement.innerText);
		
		if (action === "increase"){
			currentQuantity++; //수량 숫자 올리기
			updatePrices();
			updatePrices();
		} else if(action === "decrease" && currentQuantity > 1){
			currentQuantity--; //수량 내리
		}
		$.ajax("updateQuantity.do",{
			type:"post",
			data : {
				productId : productId,
				quantity : currentQuantity
			},
			success : function(response){
				updateProductPrice(productId,currentQuantity);
				currentQuantityElement.innerText = currentQuantity;
				updatePrices();
			},
			error : function(error){
				alert("실패");
			}
		});
	}
	// 숫자에 세 자리마다 쉼표(,)를 추가하는 함수
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

	//배송지 변경 버튼 클릭시 -> 배송지 테이블 조회 후 수정 페이지로 //단순 페이지 이동
	function delieveryChange(){
		window.open("/biz/userAddress/getUserAddress.do","updateAddress","width=600,height=400");
	}
	
	//선택삭제
	 function deleteSelectedProducts() {
	        var selectedProducts = [];

	        $(".cartProductSelect:checked").each(function () {
	            var productId = $(this).attr("id").replace("cartProductSelect", "");

	            selectedProducts.push(productId);
	        });

	        if (selectedProducts.length > 0) {
	            var deleteUrl = "/biz/cart/deleteCartItem.do?productId=" + selectedProducts.join(",");
	            location.href = deleteUrl;
	        } else {
	            alert("선택한 상품이 없습니다.");
	        }
	   }
</script>
</head>
<body>
 <!-- header -->
   <%@ include file="../../../css/headerFooter/shopHeader.jsp" %>
	<div class="cartTitle">
		<h2>장바구니</h2>
	</div>
	<form method="post" id="orderForm">
		<div class="cartContent">
			<div class="cartMyContent">
				<div class="cartNav">
					<!-- 선택 시작 -->
					<div class="cart_checkbox">
						<input type="checkbox" class="allCheckbox" id="allCheckbox"
							title="checkbox" style="display:none;">
						<svg id="svgAllCheckbox" width="24" height="24" viewBox="0 0 24 24" fill="none"
							xmlns="http://www.w3.org/2000/svg">
							<path id="svgAllPath" d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
								stroke="#ddd" fill="#f2f2f2"></path>
							<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
								stroke-width="1.5" stroke-linecap="round"
								stroke-linejoin="round"></path></svg>
						<span>전체선택(0/1)</span>
					</div>
					<!-- 선택  -->
					 <button class="cartSelectReset" onclick="deleteSelectedProducts()">선택삭제</button>
				</div>
				<hr>
				<div class="cartMyproduct">
					<h4>
						<span>담은 상품</span>
						<button class="cartProductHide"></button>
					</h4>
					<div class="productContent">
						<c:if test="${empty cart }">
							<br><br>
							<p style="text-align:center;">담은 상품이 없습니다</p>
						</c:if>
						<c:forEach var="cart" items="${cart }">
							<input type="hidden" name="productId" value="${cart.productId }">
							<input type="hidden" name="quantity" value="${cart.quantity }">
							<input type="hidden" name="price" value="${cart.price }">
							<input type="hidden" name="title" value="${cart.title }">
							<input type="hidden" name="discountRate" value="${cart.discountRate }">
							<ul>
								<li><input type="checkbox" class="cartProductSelect" id="cartProductSelect${cart.productId}"
									data-discount-option="${cart.discountRate != 0}" data-product-id="${cart.productId }" style="display:none;">
									<svg class="svgCheckbox" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path id="svgPath" d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
											stroke="#ddd" fill="#f2f2f2"></path>
							<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path></svg>
								<span class="cartProductImg" id="cartProductImg_${cart.productId }" data-img="${cart.image }"> 
								<img src="${pageContext.request.contextPath}/productImage/title/${cart.image}" alt="상품사진">
									</span>
									<div class="cartProductName">
										<div id="title_${cart.productId }">${cart.title }</div>
									</div>
									<div class="cartProductCnt">
										<span>
											<button id="decreaseBtn" type="button" aria-label="수량 내리기"
												onclick="updateQuantity(${cart.productId},'decrease')">-</button>
										</span>
										<div class="count" id="count_${cart.productId}">${cart.quantity}</div>
										<span>
											<button id="increaseBtn" type="button" aria-label="수량 올리기"
												onclick="updateQuantity(${cart.productId},'increase')">+</button>
										</span>
									</div>
									<div class="productPrice">
										<p aria-label="할인가격" class="discountRateTotal">
											<c:choose>
												<c:when test="${cart.discountRate != 0 }">
													<p aria-label="할인" id="discountRate_${cart.productId }"
														class="discountRate discountRate_${cart.productId}"
														data-original-rate="${cart.discountRate }"
														style="display: none;">
														<fmt:formatNumber type="number" maxFractionDigits="0"
															value="${cart.discountRate }"></fmt:formatNumber> %
													</p>
													<div id="discountedPrice_${cart.productId}"
														data-discounted-price="${(cart.price - cart.price * (cart.discountRate/100)) * cart.quantity }">
														<fmt:formatNumber type="number" maxFractionDigits="0"
															value="${(cart.price - cart.price * (cart.discountRate/100)) * cart.quantity }"></fmt:formatNumber> 원
													</div>
													<p id="price_${cart.productId}" aria-label="판매가격"
														class="sellingPrice" data-original-price="${cart.price }"
														style="text-decoration: line-through; color: rgb(181, 181, 181);">
														<fmt:formatNumber type="number" maxFractionDigits="0"
															value="${cart.price * cart.quantity }"></fmt:formatNumber> 원
													</p>
												</c:when>
												<c:otherwise>
													<p id="price_${cart.productId}" aria-label="판매가격"
														class="sellingPrice" data-original-price="${cart.price }">
														<fmt:formatNumber type="number" maxFractionDigits="0"
															value="${cart.price * cart.quantity }"></fmt:formatNumber> 원
													</p>
												</c:otherwise>
											</c:choose>
											</p>
											</div>
											<a href="/biz/cart/deleteCartItem.do?productId=${cart.productId }">
										<button type="button" id="deleteCartItem">X</button>
								</a></li>
							</ul>
						</c:forEach>
					</div>
				</div>
				<hr>
			</div>
			<div class="cart_receipt">
				<div class="cartAddressInfo">
					<h3>배송지</h3>
					<div class="addressInfo">
						<p>${loginUser.userAddress}</p>
						<!-- <input type="hidden" value="${fullAddress }" id="address"> -->
						<button type="button" class="delieveryChange"
							onclick="delieveryChange()">배송지 변경</button>
					</div>
				</div>
				<div class="receiptPrice">
					<table>
						<tr>
							<th>상품금액</th>
							<td id="originalTotal">0원</td>
						</tr>
						<tr>
							<th>상품할인금액</th>
							<td id="discountTotal">0원</td>
						</tr>
						<tr>
							<th>배송비</th>
							<td id="deliveryFee">0원</td>
						</tr>
						<tr>
							<th>결제예정금액</th>
							<td id="totalAmount">0원</td>
						</tr>
					</table>
				</div>
				<div class="payment">
					<button  type="button" class="paymentBtn" onclick="proceedToPayment()">주문하기</button>
				</div>
			</div>
		</div>
	</form>
	<!-- footer -->
   <%@ include file="../../../css/headerFooter/shopFooter.jsp" %>
    <!-- 부트스트랩 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
	
	<script>
	//전체 체크박스클릭-> svg 적용
	$("#svgAllCheckbox").click (function(){
		$(".allCheckbox").click();
		
		var checkbox = document.getElementById("allCheckbox");
		var svgAllPath = document.getElementById("svgAllPath");
		var svgPath = document.querySelectorAll("#svgPath");
		
		if(checkbox.checked){
			svgAllPath.setAttribute("fill", "rgb(231, 129, 17)");
			for(var i= 0; i < svgPath.length; i++){
				svgPath[i].setAttribute("fill", "rgb(231, 129, 17)");
			}
		} else {
			svgAllPath.setAttribute("fill", "#f2f2f2");
			for(var i = 0; i< svgPath.length; i++){
				svgPath[i].setAttribute("fill", "#f2f2f2");
			}
		}
	});
	
	//개별체크박스 클릭 ->svg 적용
	$(".svgCheckbox").click(function(){
		var productId = $(this).siblings('.cartProductSelect').data("product-id");
		//alert(productId);
		var svgAllPath = document.getElementById("svgAllPath");
		var checkbox = $("#cartProductSelect" + productId);
		var checkboxes = document.getElementById("allCheckbox");
		checkbox.click();

		var svgPath = $(this).find('#svgPath')[0];
		if(checkbox.prop("checked")){
			svgPath.setAttribute("fill", "rgb(231, 129, 17)");
		} else {
			svgPath.setAttribute("fill", "#f2f2f2");
		}
		//allCheckboxes
		if (checkboxes.checked){
			svgAllPath.setAttribute("fill", "rgb(231, 129, 17)");
		} else {
			svgAllPath.setAttribute("fill", "#f2f2f2");
		}
	});
	
	//only checkbox 업데이트 script 영역-----
	 var totalCount = $(".cartProductSelect").length;
	 $(".cart_checkbox span").text("전체선택(0/" + totalCount + ")");
	 
	// 전체 선택 체크박스 클릭 시
	$(".allCheckbox").click(function() {
	    var isChecked = $(this).prop("checked");
	    $(".cartProductSelect").prop("checked", isChecked);
	    var totalChecked = $(".cartProductSelect:checked").length;
	    $(".cart_checkbox span").text("전체선택(" + totalChecked + "/" + totalCount + ")");
	    if (isChecked){
	    	updatePrices();
	    } else {
	    	 updatePriceDisplay("#originalTotal", '0');
	         updatePriceDisplay("#discountTotal", '0');
	         updatePriceDisplay("#totalAmount", '0');
	         updatePriceDisplay("#deliveryFee", '0');
	    }

	});
	
	//hide button 클릭시 -> 변경
	 $(".hideBtn").click(function() {
	        $(".productContent").toggle();
	 });
	// 각 개별 항목의 체크박스 클릭 시 //가격 변경 원할 시 바꿔야할 
	$(".cartProductSelect").click(function() {
	    var totalProducts = $(".cartProductSelect").length;
	    $(".allCheckbox").prop("checked", totalProducts === $(".cartProductSelect:checked").length);
	    var totalChecked = $(".cartProductSelect:checked").length;
	    $(".cart_checkbox span").text("전체선택(" + totalChecked + "/" + totalCount + ")");
	    
	    var originalTotal = 0;
        var discountTotal = 0;

        $(".cartProductSelect").each(function() {
            var checkbox = $(this);
            var productId = checkbox.attr('id').replace('cartProductSelect', ''); 
            var originalPrice = parseFloat($("#price_" + productId).data('original-price'));
            var discountRate = parseFloat($(".discountRate_" + productId).data('original-rate'));
            var quantity = parseInt($("#count_" + productId).text());
            var discountedPriceElement = $("#discountedPrice_" + productId);
	        var discountedPrice = discountedPriceElement.length > 0 ? parseFloat(discountedPriceElement.data('discounted-price')) : originalPrice;
            if (checkbox.data('discount-option') === true && checkbox.prop("checked")) {
                originalTotal += discountedPrice; 
                discountTotal += Math.floor(originalPrice * (discountRate / 100)) * quantity;
            } else if (checkbox.prop("checked")){
            	originalTotal += originalPrice * quantity; 
            }
        });

        // 배송비 및 결제예정금액 계산
        var deliveryFee = parseInt($("#deliveryFee").text().replace('원', ''));

	    // 배송비 조건
	    if (originalTotal > 50000 || totalChecked === 0) {
	        deliveryFee = 0;
	    } else {
	        deliveryFee = 3000;
	    }
        var totalAmount = originalTotal + deliveryFee;

        // 표시 업데이트
        updatePriceDisplay("#originalTotal", originalTotal);
        updatePriceDisplay("#discountTotal", discountTotal !== 0 ? '-' + discountTotal : '0');
        updatePriceDisplay("#totalAmount", totalAmount);
        updatePriceDisplay("#deliveryFee", deliveryFee);
        
	 });
	</script>
</body>
</html>