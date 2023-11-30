<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문서 페이지</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- 메뉴바 외 코드 -->
<link href="${pageContext.request.contextPath}/css/cssStyle/style.css"
	rel="stylesheet" />
<!-- 메뉴바 부트스트랩 템플릿 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG"
	crossorigin="anonymous">
<!-- orderCheckout page css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/orderCheckout.css"/>
<script>
	var today = new Date();
	var hours = today.getHours();
	var minutes = today.getMinutes();
	var seconds = today.getSeconds();
	var milliseconds = today.getMilliseconds();
	var makeMerchantUid = hours + minutes + seconds + milliseconds;
	
	//카카오페이
	$("#kakaoPayBtn").click(function() {
		$("#kakaoPayBtn").removeClass("css-1wlyg0y");
		$("#kakaoPayBtn").addClass("css-1fecctx");
	});
	
	function requestPay() { //결제할 상품 명 으로 바꾸기 
	var IMP = window.IMP;
	IMP.init("imp88308510");
	var totalPayment = $("#totalPayment").attr("data-total");
	var length =  $("#totalPayment").attr("data-count");
	var deliveryLocation = $(".deliveryLocation").attr("data-deliveryLocation");
	var entryMethod = $(".entryMethod").attr("data-entryMethod");
	var otherDeliveryLocation = $(".otherDeliveryLocation").attr("data-otherDeliveryLocation");
	var entryMethodCallDetails = $(".entryMethodCallDetails").attr("data-entryMethodCall");
	var otherEntryMethodDetails = $(".otherEntryMethodDetails").attr("data-otherEntryMethodDetails");
	//var orderProductId[] = $(".orderProductId").attr("data-orderProductId");
	
	
	if ('기타장소' === deliveryLocation) {
        deliveryLocation += " 기타 장소: " + otherDeliveryLocation;
    } else if ('경비실 호출' === entryMethod) {
        entryMethod += " 경비실 호출 방법: " + entryMethodCallDetails;
    } else if ('기타' === entryMethod) {
        entryMethod += " 출입방법 상세 내용: " + otherEntryMethodDetails;
    }
	
	//alert("deliveryLocation : " + deliveryLocation);
	//alert("entryMethod : "+ entryMethod);
	//alert("orderProductId :" + productId);
	var deliveryMemo = deliveryLocation + " " + entryMethod;
		$("#kakaoPayBtn").removeClass("css-1wlyg0y");
		$("#kakaoPayBtn").addClass("css-1fecctx");
		IMP.request_pay({
			pg : "kakaopay",
			merchant_uid : "IMP" + makeMerchantUid,//주문번호
			name : "${cartList[0].title}" + " 외 " + (length - 1) +" 건 의 상품",//상품명
			amount : totalPayment, //가격
		}, function(rsp) { //callback
			if (rsp.success) {
				console.log(rsp);
				var msg = "결제가 완료 되었습니다.\n";
				msg += "고유ID :" + rsp.imp_uid + "\n";
				msg += "상점 거래 ID : " + rsp.merchant_uid + "\n";
				msg += "결제 금액 : " + rsp.paid_amount + '원\n';
				//msg += "카드 승인 번호 : " + rsp.apply_num;
				
				var data = { 
						orderId : rsp.merchant_uid,
						memo : deliveryMemo,
						totalPrice : rsp.paid_amount,
						totalCnt : length,
						orderStatus : rsp.status,
					};
				
				$.ajax("orderFinish.do",{
					type:"post",
					contentType: "application/json; charset=utf-8",
				    data: JSON.stringify(data),
				    success: function(){
						//alert('성공');
						location.href="/biz/orders/nowOrders.do";
					}
				});
			} else {
				console.log(rsp);
				var msg = "결제에 실패했습니다.\n";
				msg += "에러내용 :" + rsp.error_msg;
			}
			alert(msg);
			
			$("#kakaoPayBtn").removeClass("css-1fecctx");
			$("#kakaoPayBtn").addClass("css-1wlyg0y");
		});
	}
	
	//kg이니시스
	function requestkgPay() { //결제할 상품 명 으로 바꾸기 
		var IMP = window.IMP;
		IMP.init("imp88308510");
		var totalPayment = $("#totalPayment").attr("data-total");
		var length =  $("#totalPayment").attr("data-count");
		var deliveryLocation = $(".deliveryLocation").attr("data-deliveryLocation");
		var entryMethod = $(".entryMethod").attr("data-entryMethod");
		var otherDeliveryLocation = $(".otherDeliveryLocation").attr("data-otherDeliveryLocation");
		var entryMethodCallDetails = $(".entryMethodCallDetails").attr("data-entryMethodCall");
		var otherEntryMethodDetails = $(".otherEntryMethodDetails").attr("data-otherEntryMethodDetails");
		
		
		if ('기타장소' === deliveryLocation) {
	        deliveryLocation += " 기타 장소: " + otherDeliveryLocation;
	    } else if ('경비실 호출' === entryMethod) {
	        entryMethod += " 경비실 호출 방법: " + entryMethodCallDetails;
	    } else if ('기타' === entryMethod) {
	        entryMethod += " 출입방법 상세 내용: " + otherEntryMethodDetails;
	    }
		
		var deliveryMemo = deliveryLocation + " " + entryMethod;
		IMP.request_pay({
			pg : 'html5_inicis', 
		    pay_method : 'card',
			merchant_uid : "IMP" + makeMerchantUid,//주문번호
			name : "${cartList[0].title}" + " 외 " + (length - 1) +" 건 의 상품",//상품명
			amount : totalPayment, //가격
			buyer_id : 'test', //userId
			buyer_addr : '서울시 강남구', // 유저 주소
			
		}, function(rsp) { //callback
			if (rsp.success) {
				console.log(rsp);
				var msg = "결제가 완료 되었습니다.\n";
				msg += "고유ID :" + rsp.imp_uid + "\n";
				msg += "상점 거래 ID : " + rsp.merchant_uid + "\n";
				msg += "결제 금액 : " + rsp.paid_amount + '원\n';
				msg += "카드 승인 번호 : " + rsp.apply_num;
				
				var data = { 
						totalPrice : rsp.paid_amount,
						totalCnt : length,
						orderStatus : rsp.status
					}
				
				$.ajax("orderFinish.do",{
					type:"post",
					contentType: "application/json; charset=utf-8",
				    data: JSON.stringify(data),
				    success: function(){
						//alert('성공');
						location.href="/biz/orders/nowOrders.do";
					}
				});
			} else {
				console.log(rsp);
				var msg = "결제에 실패했습니다.\n";
				msg += "에러내용 :" + rsp.error_msg;
			}
			alert(msg);
		});
	}
	
	//toss
	function requestTossPay() { //결제할 상품 명 으로 바꾸기 
		var IMP = window.IMP;
		IMP.init("imp88308510");
		var totalPayment = $("#totalPayment").attr("data-total");
		var length =  $("#totalPayment").attr("data-count");
		var deliveryLocation = $(".deliveryLocation").attr("data-deliveryLocation");
		var entryMethod = $(".entryMethod").attr("data-entryMethod");
		var otherDeliveryLocation = $(".otherDeliveryLocation").attr("data-otherDeliveryLocation");
		var entryMethodCallDetails = $(".entryMethodCallDetails").attr("data-entryMethodCall");
		var otherEntryMethodDetails = $(".otherEntryMethodDetails").attr("data-otherEntryMethodDetails");
		
		
		if ('기타장소' === deliveryLocation) {
	        deliveryLocation += " 기타 장소: " + otherDeliveryLocation;
	    } else if ('경비실 호출' === entryMethod) {
	        entryMethod += " 경비실 호출 방법: " + entryMethodCallDetails;
	    } else if ('기타' === entryMethod) {
	        entryMethod += " 출입방법 상세 내용: " + otherEntryMethodDetails;
	    }
		
		var deliveryMemo = deliveryLocation + " " + entryMethod;
			IMP.request_pay({
				pg : 'uplus', 
			    pay_method : 'card',
				merchant_uid : "IMP" + makeMerchantUid,//주문번호
				name : "${cartList[0].title}" + " 외 " + (length - 1) +" 건 의 상품",//상품명
				amount : totalPayment, //가격
				buyer_id : 'test', //userId
				buyer_addr : '서울시 강남구', // 유저 주소
			}, function(rsp) { //callback
				if (rsp.success) {
					console.log(rsp);
					var msg = "결제가 완료 되었습니다.\n";
					msg += "고유ID :" + rsp.imp_uid + "\n";
					msg += "상점 거래 ID : " + rsp.merchant_uid + "\n";
					msg += "결제 금액 : " + rsp.paid_amount + '원\n';
					msg += "카드 승인 번호 : " + rsp.apply_num;
					
					var data = { 
							totalPrice : rsp.paid_amount,
							totalCnt : length,
							orderStatus : rsp.status
						}
					
					$.ajax("orderFinish.do",{
						type:"post",
						contentType: "application/json; charset=utf-8",
					    data: JSON.stringify(data),
					    success: function(){
							//alert('성공');
							location.href="/biz/orders/nowOrders.do";
						}
					});
				} else {
					console.log(rsp);
					var msg = "결제에 실패했습니다.\n";
					msg += "에러내용 :" + rsp.error_msg;
				}
				alert(msg);
			});
		}
	
	
	//배송지 변경 버튼 클릭시 -> 배송지 테이블 조회 후 수정 페이지로
	function delieveryChangeGoCart() {
		alert("장바구니로 돌아가서 배송지를 수정하세요");
		location.href = "/biz/cart/getCart.do";
	}

	//수정버튼 클릭 시 
	function editPopUp() {
		window.open("/biz/userAddress/getUser.do", "editRequestInfo",
				'width=600,height=600,scrollbars=yes');
	}
</script>
<style>
.orderCheckoutHide {
	display: none;
}

svg {
	float: right;
}

h3 {
	display: inline-block;
}

.paymentBtn {
	text-align: center;
}

#payBtn {
	width: 240px;
	height: 56px;
	radius: 3px;
	background-color: rgb(231, 129, 17);
	border: 1px solid rgb(241, 129, 17);
	margin: 30px;
}

#payBtn span {
	color: white;
}

.css-1wlyg0y {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	position: relative;
	width: 100%;
	height: 48px;
	border: 1px solid rgb(226, 226, 226);
	font-size: 14px;
	font-weight: 500;
	border-radius: 3px;
}

.css-1fecctx {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	position: relative;
	width: 100%;
	height: 48px;
	border: 1px solid rgb(246, 229, 0);
	font-size: 14px;
	color: rgb(255, 255, 255);
	background: rgb(246, 229, 0);
	font-weight: 500;
	border-radius: 3px;
}
</style>
</head>
<body>
<!-- header -->
   <%@ include file="../../../css/headerFooter/shopHeader.jsp" %>
   <div class="container">
	<div class="orderCheckoutContainer" style="font-size: medium; font-weight: 400;">
		<div class="orderTitle">
			<h2>주문서</h2>
			<hr>
		</div>
		<div class="orderProduct">
			<div class="orderProductTitle">
				<h3>주문상품</h3>
				<button class="orderCheckoutHide"></button>
				<svg width="30" height="30" viewBox="0 0 30 30"
					xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink">
					<defs>
				<path id="7a02qqg3ja" d="M11 12h9v9"></path></defs>
					<g fill="none" fill-rule="evenodd">
				<path d="M0 0h30v30H0z"></path>
					<use stroke="#333" stroke-width="2" stroke-linecap="square"
						transform="rotate(135 15.5 16.5)" href="#7a02qqg3ja"></use></g>
				</svg>
				<hr>
			</div>
		<c:forEach var="orderList" items="${cartList }">
			<div class="orderProductId" style="display:none;" data-orderProductId="${orderList.productId} }">${orderList.productId }</div>
				<div class="orderProductCheckout">
					<div class="orderProductSelect">
					<div class="productImg" style="display: inline-block; width:150px;"> 
						<img src="${pageContext.request.contextPath}/productImage/title/${orderList.image}" alt="상품사진" style="width:100px; height:100px; margin: 20px 20px;">
					</div>
						<div class="orderListTitle" style="display: inline-block; width:150px;">
						${orderList.title } 
						</div>
						<div class="productCnt" style="display:inline-block;">
							${orderList.quantity } 개 
						</div>
						<c:choose>
							<c:when test="${orderList.discountRate != 0 }">
								<div style="display:inline-block;">${orderList.discountRate } %</div>
								<div style="display:inline-block; transform: translate(108px, 17px);">
									<div> 
									<fmt:formatNumber type="number" maxFractionDigits="3" value="${(orderList.price * orderList.quantity) - ((orderList.price * orderList.quantity) * (orderList.discountRate / 100))}" /> 원
									</div> 
									<div style="text-decoration: line-through; color: rgb(201, 201, 201);">
										<fmt:formatNumber type="number" maxFractionDigits="3" value="${orderList.price * orderList.quantity }" />원
									</div>
								</div>
								<c:set var="totalPayment" value="${totalPayment + (orderList.price * orderList.quantity) - ((orderList.price * orderList.quantity) * (orderList.discountRate / 100))}" />
							</c:when>
							<c:otherwise>
								<div style="display:inline-block; width: 120px;">
									<fmt:formatNumber type="number" maxFractionDigits="3" value="${orderList.price * orderList.quantity }" />원
								</div> 
								 <c:set var="totalPayment" value="${totalPayment + (orderList.price * orderList.quantity)}" />
							</c:otherwise>
						</c:choose>
					</div>
				</div>
		</c:forEach>
		<!--<c:out value="${totalPayment}" />-->
		<c:set var="length" value="${fn:length(cartList)}" />
		</div>
		<div class="orderUser">
			<div class="orderUserTitle">
				<h3>주문자 정보</h3>
				<button class="orderCheckoutHide"></button>
				<svg width="30" height="30" viewBox="0 0 30 30"
					xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink">
					<defs>
				<path id="7a02qqg3ja" d="M11 12h9v9"></path></defs>
					<g fill="none" fill-rule="evenodd">
				<path d="M0 0h30v30H0z"></path>
					<use stroke="#333" stroke-width="2" stroke-linecap="square"
						transform="rotate(135 15.5 16.5)" href="#7a02qqg3ja"></use></g>
				</svg>
				<hr>
			</div>
			<div class="orderUserCheckout">
				<div class="orderUserContent">
					<div class="receiverContent">
						<span>받는 분</span>&nbsp;&nbsp;&nbsp;<span>${loginUser.userName }</span>
					</div>
					<div class="receiverPhoneNum">
						<span>휴대폰</span>&nbsp;&nbsp;&nbsp;<span>${loginUser.userPhonenum }</span>
					</div>
					<div class="receiverEmail">
						<span>이메일</span>&nbsp;&nbsp;&nbsp;<span>${loginUser.userEmail }</span>
					</div>
				</div>
			</div>
		</div>
		<div class="orderDelieveryInfo">
			<div class="orderDelieveryInfoTitle">
				<h3>배송 정보</h3>
				<button class="orderCheckoutHide"></button>
				<svg width="30" height="30" viewBox="0 0 30 30"
					xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink">
					<defs>
				<path id="7a02qqg3ja" d="M11 12h9v9"></path></defs>
					<g fill="none" fill-rule="evenodd">
				<path d="M0 0h30v30H0z"></path>
					<use stroke="#333" stroke-width="2" stroke-linecap="square"
						transform="rotate(135 15.5 16.5)" href="#7a02qqg3ja"></use></g>
				</svg>
				<hr>
			</div>
			<div class="orderDelieveryInfoCheckout">
				<div class="orderDelievery">
					<div class="orderDelievery">
						<span class="titleOrderDelievery">배송지</span>
						<div class="contentOrderDelievery">
							<span>기본배송지</span>
							<p>${loginUser.userAddress }</p>
							<div class="changeDelieveryBtn">
								<button type="button" class="changBtn"
									onclick="delieveryChangeGoCart()">
									<span>변경</span>
								</button>
							</div>
						</div>
					</div>
					<div class="orderDelieveryRequest">
						<div class="requestContent">
							<span class="requestTitle">배송 요청사항</span>
							<div class="contentRequest">
								<div class="requestLocation">
									<span class="deliveryLocation" data-deliveryLocation = "${formData.deliveryLocation }">
											<p>${formData.deliveryLocation}</p></span> 
									<span class="entryMethod" data-entryMethod = "${formData.entryMethod }">
										<p>${formData.entryMethod}</p></span>
									<c:if test="${'기타장소' eq formData.deliveryLocation}">
										<p class="otherDeliveryLocation" 
												data-otherDeliveryLocation = "${formData.otherDeliveryLocation }">기타 장소: ${formData.otherDeliveryLocation}</p>
									</c:if>

									<c:if test="${'경비실 호출' eq formData.entryMethod}">
										<p class="entryMethodCallDetails"
											data-entryMethodCall = "${formData.entryMethodCallDetails }">
												경비실 호출 방법: ${formData.entryMethodCallDetails}</p>
									</c:if>

									<c:if test="${'기타' eq formData.entryMethod}">
										<p class="otherEntryMethodDetails" data-otherEntryMethodDetails = "${formData.otherEntryMethodDetails }">
											출입방법 상세 내용: ${formData.otherEntryMethodDetails}</p>
									</c:if>
								</div>
								<div class="requestUserInfo">
									<span>${loginUser.userName } , ${loginUser.userPhonenum }</span>
								</div>
								<div class="editRequestBtn">
									<button type="button" class="editBtn" onclick="editPopUp()">
										<span>수정</span>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="orderMethod">
			<div class="orderMethodTitle">
				<h3>결제 수단</h3>
				<button class="orderCheckoutHide"></button>
				<svg width="30" height="30" viewBox="0 0 30 30"
					xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink">
					<defs>
				<path id="7a02qqg3ja" d="M11 12h9v9"></path></defs>
					<g fill="none" fill-rule="evenodd">
				<path d="M0 0h30v30H0z"></path>
					<use stroke="#333" stroke-width="2" stroke-linecap="square"
						transform="rotate(135 15.5 16.5)" href="#7a02qqg3ja"></use></g>
				</svg>
				<hr>
			</div>
			<div class="orderMethodCheckout">
				<div class="orderMethodContent">
					<div class="orderMethodTitle">
						<span> 결제 수단 선택 </span>
						<div class="methodOrder">
							<button id="kakaoPayBtn" type="button"
								class="css-1wlyg0y ehlmjxl0"
								onclick="requestPay()">
								<img id="kakaoPayImg" class="css-1wbfblw e1ewacwr0"
									src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTAiIGhlaWdodD0iMjAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8ZyBmaWxsPSIjMDAwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxwYXRoIGQ9Ik03LjUxNSAyLjhDMy4zNjUgMi44IDAgNS40NDUgMCA4LjcwN2MwIDEuOTM4IDEuMTg3IDMuNjU3IDMuMDIxIDQuNzM0LS4xOTEuNzY4LS42ODQgMi43NDItLjc1IDIuOTU3LS4wODMuMjY2LS4xMDMgMS4wNDYuNzAyLjUxMi42MzQtLjQyIDIuNDc5LTEuNyAzLjU3LTIuMzQ4LjMxOC4wMzMuNjQyLjA1MS45NzIuMDUxIDQuMTUgMCA3LjUxNS0yLjY0NCA3LjUxNS01LjkwNiAwLTMuMjYyLTMuMzY1LTUuOTA3LTcuNTE1LTUuOTA3TTIxLjA0OCA0LjExM2MxLjUxNy0xLjMxMyAzLjQ2OC0xLjUwOCA0Ljg5My0uNTg1IDEuNzA3IDEuMTA2IDIuMTY4IDIuNzU0IDIuMTY4IDQuODkyIDAgMi40LTEuMTE1IDMuOTY4LTEuNjQyIDQuNDYtLjUyNi40OTMtMS42NzMgMS4yOTItMi44OCAxLjI5MkgyMS40MnYzLjc4NGgtMi45MTFWMy4yODJoMi4xMDZzLjI2LjU0OC40MzMuODN6bTEuOTUxIDEuMTUzYy0uNjk3IDAtMS4xNTMuMTc3LTEuNTMzLjQ3N3Y2LjMwNmgxLjEzOGMuNTU4IDAgMi41NDctLjUwNyAyLjU0Ny0zLjM4MyAwLS42NzctLjA5LTEuMzg1LS4yNzgtMS45LS4zNTctLjk3Ny0xLjI0Ny0xLjUtMS44NzQtMS41ek0zMy44MTcgMy4wNDZjMi4wODUgMCAyLjk0Mi43MTggMy40NDggMS4zNTQuNDgxLjYwNC44NjIgMS40OTcuODYyIDIuOHY2LjY4aC0yLjI2di0uOTU0cy0uNDQyLjQyLTEuMzc5LjgzMWMtLjk4LjQzLTIuNjUzLjg3Ny00LjA0MS0uMTg0LTEuMzk3LTEuMDY4LTEuMi0zLjQ3MS0uODUyLTQuMTU0LjQ4LS45MzggMS4zNjMtMS45NjggMy43MTYtMS45NjhoMi4wMjl2LS45MDhjMC0uNTU0LS41ODMtMS4xMDctMS43My0xLjEwNy0xLjI4IDAtMS44MzMuMTkyLTIuODE3LjYzNWwtLjk5Ni0xLjk0M3MxLjQ5Ni0xLjA4MiA0LjAyLTEuMDgyem0xLjQ3NyA2LjI1aC0xLjQxNWMtLjU5OSAwLTEuOTYxLjIxNi0xLjk2MSAxLjQ3NyAwIDEuMjgzIDEuMDkgMS4yNiAxLjQ0OCAxLjIzIDEuMDg5LS4wOTEgMS45MzgtLjc5NCAxLjkzOC0uNzk0bC0uMDEtMS45MTN6TTQ3LjA2MSAzLjA0NmwtMi4yOTEgOC4xMTEtMi41NC04LjExLTIuODQ5LjgyczMuNSA5LjM4MyAzLjYyNCA5Ljc4M2MuMTIzLjQtLjAwNS44NTgtLjI4IDEuMzIyLS4zNzEuNjMtMS44MjYgMi4wMy0xLjgyNiAyLjAzbDEuODc4IDEuNjYzcy44NTctLjY4OCAxLjc0NS0xLjc1NWMuNzQzLS44OTIgMS42MzYtMi44MyAxLjkzOC0zLjU3Ny44NTktMi4xMTkgMy40Mi05LjQ2NiAzLjQyLTkuNDY2bC0yLjgxOS0uODJ6Ii8+CiAgICA8L2c+Cjwvc3ZnPgo="
									alt="카카오페이">
							</button>
							<button id="kgInicis" type="button" onclick="requestkgPay()">
								<img id="kgInicisImg" class="kgInicisButton" src="${pageContext.request.contextPath}/css/img/KgInicis.png" alt="kg 이니시스">
							</button>
							<button id="tossPay" type="button" onclick="requestTossPay()">
								<img id="tossImg" class="tossPaymentsButton" src="${pageContext.request.contextPath}/css/img/tossPayments.png" alt="토스페이먼츠">
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="orderTotal">
			<div class="orderTotalTitle">
				<h3>결제 금액</h3>
				<button class="orderCheckoutHide"></button>
				<svg width="30" height="30" viewBox="0 0 30 30"
					xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink">
					<defs>
				<path id="7a02qqg3ja" d="M11 12h9v9"></path></defs>
					<g fill="none" fill-rule="evenodd">
				<path d="M0 0h30v30H0z"></path>
					<use stroke="#333" stroke-width="2" stroke-linecap="square"
						transform="rotate(135 15.5 16.5)" href="#7a02qqg3ja"></use></g>
				</svg>
				<hr>
			</div>
			<div class="orderTotalCheckout">
				<div class="receiptOrderCheckout">
					<div class="totalPriceCheckout">
						<div id="totalPayment" data-total=${totalPayment }
							data-count=${length }>
							<c:if test="${totalPayment < 50000 }">
								<fmt:formatNumber type="number" maxFractionDigits="3" value="${totalPayment + 3000 }" /> 원
							</c:if>
							<c:if test="${totalPayment >= 50000 }">
								<fmt:formatNumber type="number" maxFractionDigits="3" value="${totalPayment }" /> 원
							</c:if>
						 </div>
					</div>
				</div>
			</div>
		</div>
		<!-- [결제하기 버튼] <div class="paymentBtn">
			<button type="button" name="payBtn" id="payBtn" width="240"
				height="56" radius="3" onclick="orderFinish()">
				<span><fmt:formatNumber type="number" maxFractionDigits="3" value="${totalPayment }" /> 원 결제하기</span>
			</button>
		</div> -->
	</div>
	</div>
	<!-- footer -->
   <%@ include file="../../../css/headerFooter/shopFooter.jsp" %>
    <!-- 부트스트랩 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
	
</body>
</html>