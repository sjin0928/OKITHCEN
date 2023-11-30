<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리페이지</title>
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.min.css" />

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/seller.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/productList.css"/>
	
<!-- 메뉴바 부트스트랩 템플릿 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
</head>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	window.onload = function() {
		if("${sellerVO.sellerId}" === ("") ||"${sellerVO.sellerId}" === (null)){
			alert("세션만료 : 다시 로그인 해주세요.")
			location.href="${pageContext.request.contextPath}/sellerLogin.jsp";
			
		}
	}
</script>

<style>
#container {
	text-align: center; /* 텍스트 정렬을 가운데로 설정 */
}

.mypage-content {
	max-width: 70%; /* 적절한 최대 너비를 설정, 필요에 따라 조절 */
	margin: 0 auto; /* 좌우 마진을 자동으로 설정하여 가운데 정렬 */
}

.page-header {
	text-align: center; /* 헤더 내의 텍스트를 가운데로 정렬 */
}

.seller-products {
	list-style: none; /* 리스트 스타일 제거 */
	padding: 0; /* 리스트의 패딩을 0으로 설정 */
}

.product-item {
	margin-bottom: 20px; /* 각 상품 아이템 간의 간격 설정, 필요에 따라 조절 */
}

.product-center {
	display: flex;
	align-items: center; /* 내용을 수직 가운데 정렬 */
}

.form-group {
	margin-top: 10px; /* 폼 그룹 위의 간격 설정 */
}

.btn-warning {
	display: block; /* 버튼을 블록 레벨로 설정하여 가로폭을 꽉 채우도록 함 */
	margin-left: auto; /* 버튼을 오른쪽으로 정렬 */
	margin-right: 20px;
	margin-top: 20px; /* 위쪽 간격 추가 */
	margin-bottom: 20px;
}
#productStatusUpdate {
	display: flex;
	align-items: center;
}
#productStatus{
	background-color: white;
    margin-right: 20px;
}
#product_right {
	margin-left: 20px;
	min-width: 180px;
}
#product_detail {
	flex-grow: 0;
}
#approval_status {
	min-width: 70px;
	max-height: 20px;
}
#product_title {
	min-width: 100px;
}
#product_dcRate {
	min-width: 35px;
}
#product_price {
	min-width: 90px;
}
</style>

<body>
<!-- header -->
<%@ include file="../../../../css/headerFooter/sellerLogoutHeader.jsp"%>
<%-- \${productList } : ${productList } <hr> --%>

	<div id="container"></div>
	<div class="mypage-content">
		<div class="page-header">
			<h2>상품 리스트</h2>
		</div>
		<ul class="seller-products">
			<c:forEach var="product" items="${productList}">
				<li class="product-item">
					
						<div class="product-center">
						<div class="product-code">${product.productId}</div>
							<div class="product-img">
							<a id="product_detail"
								href="prodDetailSeller.do?productId=${product.productId}"
								style="text-decoration: none;">
								<img
									src="${pageContext.request.contextPath}/productImage/title/${product.image}"
									alt="product" />
									</a>
							</div>
							<div class="product-desc col-md-auto">
							<div class="product-title" id="product_title">
							<a id="product_detail"
								href="prodDetailSeller.do?productId=${product.productId}"
								style="text-decoration: none;">
							
								${product.title}
							
							</a>
							</div>
							</div>
						</div>
						<div class="product-right" id="product_right">
							<div class="product-dcRate" id="product_dcRate"><a id="product_detail"
										href="prodDetailSeller.do?productId=${product.productId}"
										style="text-decoration: none;">
										${product.discountRate}%</a></div>
							<div class="product-price">
								<c:choose>
									<c:when test="${product.discountRate eq 0}">
										<div id="product_price">
										<a id="product_detail"
										href="prodDetailSeller.do?productId=${product.productId}"
										style="text-decoration: none;">
											<span> <fmt:formatNumber value="${product.price}"
													type="number" pattern="#,###" />원
											</span>
										</a>
										</div>
									</c:when>
									<c:otherwise>
										<div>
											<span> <fmt:formatNumber
													value="${product.discountedPrice}" type="number"
													pattern="#,###" />원
											</span>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						
				
					
						<form id="productStatusUpdate" method="post">
							<div class="product-status" id="approval_status">${product.approvalStatus} /</div>
							<c:choose>
									<c:when test="${product.approvalStatus eq '승인대기'}">
										<select class="form-control" id="productStatus"
										name="productStatus">
										<option selected disabled>${product.productStatus}</option>
										</select>
									</c:when>
									<c:when test="${product.approvalStatus eq '승인' || product.approvalStatus eq '반려' }">
										<select class="form-control" id="productStatus"
										name="productStatus">
										<option selected disabled>${product.productStatus}</option>
										<c:choose>
											<c:when test="${product.productStatus == '품절'}">
											</c:when>
											<c:when test="${product.productStatus == '전시'}">
												<option>비전시</option>
												<option>판매중지</option>
											</c:when>
											<c:when test="${product.productStatus == '비전시'}">
												<option>전시</option>
												<option>판매중지</option>
											</c:when>
											<c:when test="${product.productStatus == '판매중지'}">
												<option>전시</option>
												<option>비전시</option>
											</c:when>
										</c:choose>
									</select> 
									</c:when>
							</c:choose>
							
							<input type="button"
								onclick="productStatusUpdate(${product.productId})" value="상태변경"
								class="btn btn-outline-warning" >
						</form>
					
				</li>
			</c:forEach>
		</ul>
		<a href="registerProduct.do" style="text-decoration: none;">
			<button type="button" class="btn btn-warning">상품등록하기</button>
		</a>
	</div>
	
	
	
	
	<!-- footer -->
	<%@ include file="../../../../css/headerFooter/sellerFooter.jsp" %>
	<script>
		function productStatusUpdate(productId){
			var data = {
				"productId" : productId,
				"productStatus" : $("#productStatus").val()
			}
			
			$.ajax({
				url: "../seller/productStatusUpdate.do",
				type: "POST",
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8", 
				success: function(result) {
					alert("수정되었습니다.");
				},
				error: function (jqXHR, textStatus, errorThrown){
					console.log("HTTP 상태 코드: " + jqXHR.status);
			        console.log("서버 응답 내용: " + jqXHR.responseText);
			        console.log("에러 종류: " + textStatus);
			        console.log("에러 객체: ", errorThrown);
					alert("상태 수정 오류 : 담당자에게 문의주세요.");
				}
			});
		}
	</script>
	
	
	
</body>
</html>