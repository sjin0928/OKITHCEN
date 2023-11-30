<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지(일반회원)</title>
<!-- 메뉴바 외 코드 -->
<link href="${pageContext.request.contextPath}/css/cssStyle/style.css" rel="stylesheet" />
<!-- 로그인 css -->
<link href="${pageContext.request.contextPath}/css/cssStyle/userMyPageStyle.css" rel="stylesheet" />
<!-- 메뉴바 부트스트랩 템플릿 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
<!-- jQuery import 스크립트  -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<!-- orderDetail페이지 css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/orderDetail.css" />

<c:choose>
	<c:when test="${empty loginUser}">
		<c:redirect url="goUserLoginPage.do" />
	</c:when>
</c:choose>
</head>
<body>
	<!-- header -->
	<%@ include file="../../../css/headerFooter/shopHeader.jsp"%>
	<!-- ------------------------------------------------------------------------ -->
	<%@ include file="../../../css/headerFooter/shopMyPage.jsp"%>

	<!-- 주문내역 상세 -->
	<!--  ${oneOrderDetails }-->
	<div class="css-171zbec">
		<div class="css-j0lifa">
			<div class="css-fhxb3m">
				<h2 class="css-1268zpe">주문 내역 상세</h2>
			</div>
		</div>
		<div class="css-1bsokvi">
			<h3 class="css-yi2ox5"> 주문번호
				 <span class="css-1qei3w8">${oneOrderDetails[0].orderId}</span>
			</h3>
		</div>
		<c:forEach var="oneOrderDetail" items="${oneOrderDetails }">
		<div class="css-mrxscg">
			<img src="${pageContext.request.contextPath}/productImage/title/${oneOrderDetail.image}" alt="상품사진" class="css-1ixzt3f">
			<div class="css-1t5xcqm">
				<a data-testid="deal-name" href="${pageContext.request.contextPath }/product/prodDetail.do?productId=${oneOrderDetail.productId}"  class="css-15vlnp">${oneOrderDetail.title }</a>
				<div class="css-s5xdrg">
					<span class="css-1ekh7sh">수량 : ${oneOrderDetail.quantity } 개</span>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span data-testid="goods-price" class="css-1ngn8p4"> 결제 금액 : <fmt:formatNumber type="number" maxFractionDigits="3" value="${oneOrderDetail.productPrice * oneOrderDetail.quantity }" /> 원</span>
				</div>
			</div>
		</div>
		</c:forEach>
		<div class="css-1m7irn0">
			<a href="updateOrderStatus.do?orderId=${oneOrderDetails[0].orderId }"><button class="css-kvnzdd" type="button" width="200"
					height="56" radius="3">
					<span class="css-nytqmg">주문 취소</span>
				</button></a>
		</div>
		<span class="css-15leche">주문취소는 [주문완료] 상태일 경우에만 가능합니다.</span>
	</div>
	<!-- 주문내역 상세 -->


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