<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니에 담으시겠습니까?</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<link href="${pageContext.request.contextPath}/css/cssStyle/insertAlert.css" rel="stylesheet" />
<script>
document.addEventListener("DOMContentLoaded", function() {
    const quantityDisplay = document.querySelector('.quantity-display');
    const decreaseButton = document.querySelector('.decrease-button');
    const increaseButton = document.querySelector('.increase-button');
    const discountedPriceElement = $(".css-1kl4at5[data-discounted-price]");
    const originalPriceElement = $(".css-1kl4at5[data-original-price]");
    const totalPrices = document.querySelector(".css-1qdap1a");

    // Parse prices as floats
    const discountedPrice = parseFloat(discountedPriceElement.data("discounted-price")) || 0;
    const originalPrice = parseFloat(originalPriceElement.data("original-price")) || 0;
    const price = discountedPrice !== 0 ? discountedPrice : originalPrice;

    decreaseButton.addEventListener('click', function() {
        let currentQuantity = parseInt(quantityDisplay.innerText);
        if (currentQuantity > 1) {
            currentQuantity--;
            quantityDisplay.innerText = currentQuantity;
            quantityInput.value = currentQuantity;
            totalPrices.innerText = (price * currentQuantity).toLocaleString(); // 가격 업데이트
        }
    });

    increaseButton.addEventListener('click', function() {
        let currentQuantity = parseInt(quantityDisplay.innerText);
        currentQuantity++;
        quantityDisplay.innerText = currentQuantity;
        quantityInput.value = currentQuantity;
        totalPrices.innerText = (price * currentQuantity).toLocaleString(); // 가격 업데이트
    });
});

	function resetInsert(){
		window.close();
	} 	
	
	function insertTocart(){
		var form = document.getElementById("cartForm");
		setTimeout(function() {   
            window.close();
         }, 1);
		form.submit();
	}
</script>

</head>
<body>
	<form id="cartForm" action="/biz/cart/insertCart.do?productId=${existingProduct.productId }" method="post">
	<input type="hidden" value="${existingProduct.productId }">
		<div class="MuiPaper-root" role="dialog"
			aria-labelledby="customized-dialog-title">
			<div class="css-qfuix0">
				<div class="css-96wx9m">
					<span><img
						src="${pageContext.request.contextPath}/css/img/${existingProduct.image}"
						alt="상품사진"></span>
				</div>
				<div class="css-1p7augg">
					<span class="css-1n9elca">${existingProduct.title }</span>
				</div>
			</div>
			<div class="css-hjdyv5">
				<div class="css-kiebmq">
					<div class="css-1066lcq">
						<span class="css-rsi182">${existingProduct.title }</span>
					</div>
					<div class="css-2fwlel">
					<c:if test="${existingProduct.discountedPrice != 0 }">
						<div class="css-23v5d0">
							<span class="css-1kl4at5" data-discounted-price=${existingProduct.discountedPrice }>
								<fmt:formatNumber type="number" maxFractionDigits="0" value="${existingProduct.discountedPrice}"></fmt:formatNumber> 원
							</span>
							<span class="css-pblsth">
								<fmt:formatNumber type="number" maxFractionDigits="0" value="${existingProduct.price}"></fmt:formatNumber> 원
							</span>
						</div>
					</c:if>
					<c:if test="${existingProduct.discountedPrice == 0 }">
						<div class="css-23v5d0">
								<span class="css-1kl4at5" data-original-price=${existingProduct.price }>
									<fmt:formatNumber type="number" maxFractionDigits="0" value="${existingProduct.price}"></fmt:formatNumber> 원
								</span>
						</div>
					</c:if>
						<div class="e1b27mtb0">
							<button type="button" aria-label="수량내리기" class="decrease-button">-</button>
							<div class="quantity-display">1</div>
							<button type="button" aria-label="수량올리기" class="increase-button">+</button>
							<input type="hidden" name="quantity" id="quantityInput" value="1">
						</div>
					</div>
				</div>
			</div>
			<div class="css-1ovj4tx">
				<div class="css-1fttcpj">
					<div class="css-1066lcq">
						<p class="css-1sl7ome">합계</p>
						<c:if test="${existingProduct.discountedPrice != 0 }">
						<div>
							<span class="css-1qdap1a" data-discounted-price=${existingProduct.discountedPrice }>
								<fmt:formatNumber type="number" maxFractionDigits="0" value="${existingProduct.discountedPrice}"></fmt:formatNumber>
							</span> 
							<span class="css-xq0an6">원</span>
						</div>
						
						</c:if>
						<c:if test="${existingProduct.discountedPrice == 0 }">
							<div>
								<span class="css-1qdap1a" data-original-price=${existingProduct.price }>
									<fmt:formatNumber type="number" maxFractionDigits="0" value="${existingProduct.price}"></fmt:formatNumber>
								</span> 
								<span class="css-xq0an6">원</span>
							</div>
						</c:if>
					</div>
				</div>
			</div>
			<div class="css-1toes8l">
				<button class="css-1w3nh5f" type="button" height="56" onclick="resetInsert()">
					<span class="css-nytqmg">취소</span>
				</button>
				<button class="css-ahkst0" type="button" height="56" onclick="insertTocart()">
					<span class="css-nytqmg">장바구니 담기</span>
				</button>
			</div>
		</div>
	</form>
</body>
</html>