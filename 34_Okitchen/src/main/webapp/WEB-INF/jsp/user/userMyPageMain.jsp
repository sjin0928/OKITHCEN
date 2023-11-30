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
<link href="${pageContext.request.contextPath}/css/cssStyle/style.css"
	rel="stylesheet" />
<!-- 로그인 css -->
<link
	href="${pageContext.request.contextPath}/css/cssStyle/userMyPageStyle.css"
	rel="stylesheet" />
<!-- 메뉴바 부트스트랩 템플릿 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css"
	integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG"
	crossorigin="anonymous">
<!-- jQuery import 스크립트  -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<!-- 주문내역 조회 부분 css -->
<link
	href="${pageContext.request.contextPath}/css/cssStyle/userMyPageMain_orderList.css"
	rel="stylesheet" />
<!-- 챗봇 -->
<%@ include file="../chatBot/kitchenChat.jsp" %>
<%-- <c:choose>
	<c:when test="${empty loginUser}">
		<c:redirect url="user/goUserLoginPage.do" />
	</c:when>
</c:choose> --%>
<script>
	//로그인 풀리면 로그인 페이지로 이동 
	window.onload = function() {
		if ("${loginUser}" == "") {
			alert("로그인하셔야 본 서비스를 이용하실 수 있습니다.");
			location.href = "/biz/user/goUserLoginPage.do";
		}
	}
</script>
</head>
<body>
	<!-- header -->
	<%@ include file="../../../css/headerFooter/shopHeader.jsp"%>
	<!-- ------------------------------------------------------------------------ -->
	<%@ include file="../../../css/headerFooter/shopMyPage.jsp"%>

	<!-- 여기 사이에 마이페이지 본문내역 들어가야 함 -->
	<div class="css-171zbec">
		<div class="css-j0lifa">
			<div class="css-fhxb3m">
				<h2 class="css-1268zpe">주문 내역</h2>
			</div>
		</div>
		<div class="css-1c8nox">
		<!-- 주문한 상품 없을 때 -->
		<c:if test="${empty orderList }">
			<br><br>
			<p style="text-align:center;"> 주문한 상품이 없습니다.</p>
		</c:if>
		<!-- 주문 내역 조회 -->
			<c:forEach var="orderList" items="${orderList }">
				<div class="css-4wlxei">
					<div class="css-1hbtwy0">
						<span class="css-asma03">${orderList.orderDate }</span> <a
							class="css-l9y4tx"
							href="/biz/orders/goOrderDetail.do?orderId=${orderList.orderId }">주문내역
							상세보기</a>
					</div>
					<div class="css-7apail">
						<div class="css-fhxb3m">
							<div class="css-1fttcpj">
								<div class="css-1ccl3pq">
									<div class="css-dzjp62">주문번호</div>
									<div class="css-1i58pf4">${orderList.orderId }</div>
								</div>
								<div class="css-1ccl3pq">
									<div class="css-dzjp62">결제금액</div>
									<div class="css-1i58pf4">
										<fmt:formatNumber type="number" maxFractionDigits="3"
											value="${orderList.totalPrice }" /> 원
									</div>
								</div>
							</div>
						</div>
						<div class="css-s5xdrg">
							<span class="css-1fdt947">${orderList.orderStatus }</span>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- 여기 사이에 마이페이지 본문내역 들어가야 함 -->


	</div>
	</div>



	<!-- ------------------------------------------------------------------------ -->
	<!-- footer -->
	<%@ include file="/css/headerFooter/shopFooter.jsp"%>
	<!-- ------------------------------------------------------------------------ -->

	<!— 부트스트랩 —>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
</body>
</html>