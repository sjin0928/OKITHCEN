<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항(일반회원)</title>
	<!-- 메뉴바 외 코드 -->
	<link href="${pageContext.request.contextPath}/css/cssStyle/style.css" rel="stylesheet" />
	<!-- 로그인 css -->
	<link href="${pageContext.request.contextPath}/css/cssStyle/userMyPageStyle.css" rel="stylesheet" />
	<!-- 메뉴바 부트스트랩 템플릿 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
	<!-- jQuery import 스크립트  -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>	
	<!-- 챗봇 -->
	<%@ include file="../chatBot/kitchenChat.jsp" %>	
<style>
	.inner {
		width: 960px;
		margin: 0 auto;
		margin-right: -173px;
	}
	button.accordion-button.collapsed{
	    cursor: pointer;
	    width: 830px;
	    margin-bottom: -10px !important;
	    margin-top: 1px!important;
	    line-height: 1.34;
	    border: 1px solid;
	    border-color: #00000024;
	    background-color: white;
	    padding: 10px;
	    padding-bottom: 11px;
	    font-size: 13.5px;
	    height: 57px;
	    text-align: left;
	    padding-left: 38px;
	    font-weight: 400;
	    border-radius: 3px;
	    color: black;
	}
	button:focus{
	    outline-color: #80808082;
	}
	button.accordion-button{
		cursor: pointer;
	    width: 830px;
	    margin-bottom: -10px !important;
	    margin-top: 1px!important;
	    line-height: 1.34;
	    border: 1px solid;
	    border-color: #0000000f;
	    padding: 10px;
	    padding-bottom: 11px;
	    font-size: 13.5px;
	    height: 57px;
	    background-color: rgb(231 129 17 / 70%);
	    color: white;
	    font-weight: 400;
	    border-radius: 3px;
	}
	.accordion-body{
	    margin-bottom: 23px;
	    width: 772px;
	    margin-left: 15px;
	    margin-top: 33px;
	}
	h3{
		margin-left: 2px;
	    float: left;
	    margin-right: 15px;
	    margin-bottom: 41px;
	    margin-top: 5px;
	}
	.noticeTitle{
		margin-left: -108px;
	    color: #00000082;
    	margin-top: 13px;
	}
</style>
</head>
<body>

	<!-- header -->
	<%@ include file="../../../css/headerFooter/shopHeader.jsp" %>
	<!-- ------------------------------------------------------------------------ -->
	<%@ include file="../../../css/headerFooter/shopCustomerService.jsp" %>

	<!-- 여기 사이에 고객센터 본문내역 들어가야 함 -->
	<div class="inner">
		<h3>자주하는 질문</h3>
		<div class='noticeTitle'>고객님들께서 가장 자주하시는 질문들을 모았습니다.</div>
		<div class="accordion accordion-flush" id="accordionFlushExample">
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingOne">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
						aria-expanded="false" aria-controls="flush-collapseOne">
						[상품] 친환경/유기농/무농약이 어떻게 다른가요?</button>
				</h2>
				<div id="flush-collapseOne" class="accordion-collapse collapse"
					aria-labelledby="flush-headingOne"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						■ 친환경 인증이란?<br>
						<br> 친환경 농산물은 인체와 생태환경에 해로운 화학비료, 농약, 제초제 등을 최대한 사용하지 않고 재매한
						농산물을<br> 일컬으며 이 중, 화학비료와 농약 사용량에 따라 저농약, 무농약, 유기농으로 구분됩니다.<br>
						<br> - 저농약 : 일반 농산물 대비 적은 양의 농약을 사용한 농산물<br><br> - 무농약 : 농약은
						사용하지 않되, 화학비료를 사용한 농산물<br><br> - 유기농 : 화학비료와 농약을 일체 사용하지 않고 재배한
						농산물<br>
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingTwo">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
						aria-expanded="false" aria-controls="flush-collapseTwo">
						[배송] 택배배송 주문마감 시간이 변동 될 수 있나요?</button>
				</h2>
				<div id="flush-collapseTwo" class="accordion-collapse collapse"
					aria-labelledby="flush-headingTwo"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						■ 택배배송은 주문마감시간 그대로 유지<br>
						<br> - 주문마감시간의 유동적 정책은 택배배송 지역은 해당되지 않습니다.<br><br> - 다만, 조만간
						서비스 확장이 될 예정이므로 참고 부탁드립니다.
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingThree">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseThree"
						aria-expanded="false" aria-controls="flush-collapseThree">
						[회원] 아이디, 비밀번호를 잊어버렸습니다.</button>
				</h2>
				<div id="flush-collapseThree" class="accordion-collapse collapse"
					aria-labelledby="flush-headingThree"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						■ 아이디, 비밀번호 찾기 안내<br>
						<br> - 하기 경로를 통해 아이디 및 비밀번호 찾기가 가능하며, 임시 비밀번호의 경우 회원가입 시 등록한
						이메일 주소로 발송 됩니다.<br>
						<br> 오키친홈 상단 [로그인] > 화면 아래 [아이디 찾기] [비밀번호 찾기]<br>
						<br> [참고]<br>
						<br> ▣ 가입시 기재한 메일 주소가 기억나지 않으시거나 오류가 발생하는 경우 고객센터로 문의 바랍니다.<br>
						<br> ▣ 상담시에는 고객님의 개인정보보호를 위해 기존에 사용하시던 비밀번호는 안내가 불가합니다.
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingFore">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseFore"
						aria-expanded="false" aria-controls="flush-collapseFore">
						[회원] 회원가입에 제한이 있나요?</button>
				</h2>
				<div id="flush-collapseFore" class="accordion-collapse collapse"
					aria-labelledby="flush-headingFore"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						■ 회원가입 조건<br>
						<br> 오키친 회원 가입 시, 별도의 조건은 없으며 무료인 점 참고 바랍니다.<br>
						<br> 회원가입 후 다양한 혜택과 상품을 만나보세요!<br>
						<br>
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingFive">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseFive"
						aria-expanded="false" aria-controls="flush-collapseFive">
						[취소/교환/환불] 주문을 취소 하고 싶습니다.</button>
				</h2>
				<div id="flush-collapseFive" class="accordion-collapse collapse"
					aria-labelledby="flush-headingFive"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						■ 주문 취소 방법 안내<br>
						<br> - 주문 취소는 배송 단계별로 상이하오니 아래 내용 참고 바랍니다.<br>
						<br> ㄴ[주문완료] : 마이키친>주문내역>주문번호 클릭>상세페이지 맨 하단에서 [직접취소] 진행<br>

						ㄴ[배송준비중] 이후 : 고객센터로 문의 바랍니다.<br> <br>[참고]<br>
						<br> ▣ 배송이 시작 된 [배송준비중] 이후 단계에서는 취소가 일부 제한되는 점 고객님의 양해
						부탁드립니다.<br><br> ▣ 비회원은 모바일 APP 또는 모마일 WEB 에서 [마이컬리>비회원 주문조회] 에서
						취소 가능합니다.<br><br> ▣ 일부 예약상품은 배송 3~4일 전에만 취소 가능합니다.<br><br> ▣
						주문상품의 부분 취소는 불가합니다. 전체 취소 이 후, 재구매 바랍니다.<br>
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingSix">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseSix"
						aria-expanded="false" aria-controls="flush-collapseSix">
						[서비스 이용] 오키친은 어떤 회사인가요?</button>
				</h2>
				<div id="flush-collapseSix" class="accordion-collapse collapse"
					aria-labelledby="flush-headingSix"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						■ About 키친<br>
						<br> 오키친에서는 사람을 소중히 하는 마음으로, 산지에서 친환경 혹은 유기농 인증을 받은 제품들을 꼼꼼히
						선택하여 판매합니다.<br>
						<br> 제품을 최대한 신선하게 배송해 드리기 위해, 밤 11시까지 주문한 경우 택배 시스템을 통해 다음날 밤
						11시 전까지 제품을 배송해 드립니다.<br>
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingSeven">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseSeven"
						aria-expanded="false" aria-controls="flush-collapseSeven">
						[시스템 오류] 최종 결제처리 후, [결제완료] 창으로 넘어가지 않습니다.</button>
				</h2>
				<div id="flush-collapseSeven" class="accordion-collapse collapse"
					aria-labelledby="flush-headingSeven"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						■ 오키친 결제단계에서 오류 발생 시<br>
						<br> 아래[점검 사항]을 따라 자체 점검하여도 오류 반복 확인 시 오키친 고객센터로 문의 부탁드리 오키친홈
						상단 [로그인] > 화면 아래 [아이디 찾기] [비밀번호 찾기]<br>
						<br> [참고]<br>
						<br> ▣ 가입시 기재한 메일 주소가 기억나지 않으시거나 오류가 발생하는 경우 고객센터로 문의 바랍니다.<br>
						<br> ▣ 상담시에는 고객님의 개인정보보호를 위해 기존에 사용하시던 비밀번호는 안내가 불가합니다.
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- ------------------------------------------------------------------------ -->
	<!-- footer -->
	<%@ include file="/css/headerFooter/shopFooter.jsp" %>
	<!-- ------------------------------------------------------------------------ -->

	<!-- 부트스트랩 -->
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>