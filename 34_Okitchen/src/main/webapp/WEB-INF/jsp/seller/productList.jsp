<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리페이지</title>
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

	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/seller.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/productList.css"/>
	
	<!-- 메뉴바 부트스트랩 템플릿 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
</head>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	window.onload = function() {
		if("${sellerVO}" == ("") ||"${sellerVO}" == (null)){
			alert("세션만료 : 다시 로그인 해주세요.")
			location.href="${pageContext.request.contextPath}/sellerLogin.jsp";
			
			if("${product.approvalStatus}" == "승인대기") {
				
			}
		}
	}
</script>
<body>
<!-- header -->
<%@ include file="../../../../css/headerFooter/sellerLogoutHeader.jsp" %>

<%-- \${productList } : ${productList } --%>
	<div id="container">
	</div>
	<div class="mypage-content">
		<div class="page-header">
			<h2>상품 리스트</h2>
		</div>
		<ul class="seller-products">
			<c:forEach var="product" items="${productList}">
				<li class="product-item">
					<div class="product-code">${product.productId}</div>
					<a href="prodDetail.do?productId=${product.productId}">
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
							<div class="product-price">
			<c:choose>
			<c:when test="${vo.discountRate eq 0}">
			<span> 
				<span id="formattedPrice"> 
					<fmt:formatNumber value="${product.price}" type="number" pattern="#,###" />원
				</span>
			</span>
			</c:when>
			<c:otherwise>
				<h2>
					<span> 
						<fmt:formatNumber value="${product.discountedPrice}" type="number" pattern="#,###" />원
					</span> 
				</h2>
			</c:otherwise>
			</c:choose>
			</div>
				</div>
				<div class="product-status">
					${product.approvalStatus} / 
				</div>
				</a>
				<div class="form-group">
				<form id="productStatusUpdate" method="post">
			      <select class="form-control" id="productStatus" name="productStatus">
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
			      <input type="button" onclick="productStatusUpdate(${product.productId})" value="상태변경">
			      </form>
			    </div>
				</li>
			</c:forEach>
		</ul>
		<a href="registerProduct.do">상품등록하기</a>
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