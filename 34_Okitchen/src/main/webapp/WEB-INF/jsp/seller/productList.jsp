<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리페이지</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/seller.css">
	<!-- 메뉴바 부트스트랩 템플릿 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
</head>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	window.onload = function() {
		if("${sellerVO}" == ("") ||"${sellerVO}" == (null)){
			alert("세션만료 : 다시 로그인 해주세요.")
			location.href="${pageContext.request.contextPath}/sellerLogin.jsp";
		}
	}
</script>
<body>
<!-- header -->
<%@ include file="../../../../css/headerFooter/sellerLogoutHeader.jsp" %>

<%-- \${productList } : ${productList } --%>
	<div id="container">
		<h1>상품관리 [productList.jsp]</h1>
		<hr>
	</div>
	<div class="mypage-content">
		<div class="page-header">
			<h2>상품 리스트</h2>
		</div>
		<ul class="seller-products">
			<c:forEach var="product" items="${productList}">
				<li class="product-item">
					<div class="product-code">${product.productId}</div>
					<a href="productDetail.do?productId=${product.productId}">
						<div class="product-center">
							<div class="product-img">
								<img src="${pageContext.request.contextPath}/productImage/title/${product.image}" alt="product" />
							</div>
							<div class="product-desc">
								<div class="product-title">${product.title}</div>
							</div>
						</div>
						<div class="product-right">
							<div class="product-dcRate">${product.discountRate}%</div>
							<div class="product-price">${product.price}원</div>
						</div>
						<div class="product-status">
							${product.approvalStatus}
						</div>
						<div class="product-status">
							${product.productStatus}
						</div>
					</a>
				</li>
			</c:forEach>
		</ul>
		<a href="registerProduct.do">상품등록하기</a>
	</div>
	<!-- footer -->
	<%@ include file="../../../../css/headerFooter/sellerFooter.jsp" %>
	
</body>
</html>