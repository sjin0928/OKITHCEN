<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문완료 페이지</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/cssStyle/nowOrderShow.css" />
</head>
<script>
	
	function reGoCart(){
		location.href="/Index.jsp";//메인으로 돌아가기
	}
	
</script>
<!-- 메뉴바 외 코드 -->
<link href="${pageContext.request.contextPath}/css/cssStyle/style.css"
	rel="stylesheet" />
<!-- 메뉴바 부트스트랩 템플릿 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css"
	integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG"
	crossorigin="anonymous">
<body>
	<!-- header -->
	<%@ include file="../../../css/headerFooter/shopHeader.jsp"%>
	<div class="css-ugqv3j">
		<div class="css-1uom1od">
			<div class="css-1icxyy0">
				<div class="css-fnh15r">
					<div class="css-yb4g98">
						<p class="css-14is9qy">${loginUser.userName }님의주문이완료되었습니다.</p>
					</div>
				</div>
				<div class="css-1va7zlz">
					<div class="css-1l8u1wr">${loginUser.userAddress }</div>
					<div class="css-1hh4r05">
						<span class="css-1h6pllp">주문번호</span>
						<p class="css-ciygyc ">${orderProduct.orderId }</p>
					</div>
				</div>
				<div class="css-1wa7vj6">
					<div class="css-1a1jcfo">
						<span class="css-vmo0an">결제금액</span> 
						<span class="css-21ugym">
							<fmt:formatNumber type="number" maxFractionDigits="3" value="${orderProduct.totalPrice}" /> 
							<span class="css-hfgifi">원</span>
						</span>
					</div>
				</div>
				<div class="css-1dslxe3">
					<ul>
						<li class="css-dnq4jd">[주문완료] 상태일 경우에만 주문내역 상세페이지에서 주문 취소가
							가능합니다.</li>
						<li class="css-dnq4jd">엘리베이터 이용이 어려운 경우 6층 이상부터는 공동 현관 앞 또는
							경비실로 대응 배송 될 수 있습니다.</li>
						<li class="css-dnq4jd">실제 출입 정보가 다를 경우, 부득이하게 1층 공동현관 앞 또는
							경비실 앞에 배송될 수 있습니다.</li>
						<li class="css-dnq4jd">주문 / 배송 및 기타 문의가 있을 경우, 1:1 문의에 남겨주시면
							신속히 해결해드리겠습니다.</li>
					</ul>
				</div>
				<div class="css-a0s0c2">
					<a
						href="/biz/orders/orderDetail.do?orderId=${orderProduct.orderId}">
						<button class="css-o6ldsh" type="button">
							<span class="css-nytqmg">주문 상세보기</span>
						</button>
					</a>
					<!--  <button class="css-6682oh" type="button" onclick="reGoCart()">
						<span class="css-nytqmgW">쇼핑 계속하기</span>
					</button>-->

				</div>
			</div>
		</div>
	</div>
	<!-- footer -->
	<%@ include file="../../../css/headerFooter/shopFooter.jsp"%>
	<!-- 부트스트랩 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>

</body>
</html>