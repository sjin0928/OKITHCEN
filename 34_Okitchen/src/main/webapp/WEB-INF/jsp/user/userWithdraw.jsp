<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>탈퇴페이지(일반회원)</title>
<!-- 메뉴바 외 코드 -->
<link href="${pageContext.request.contextPath}/css/cssStyle/style.css" rel="stylesheet" />
<!-- 마이페이지 css -->
<link href="${pageContext.request.contextPath}/css/cssStyle/userMyPageStyle.css" rel="stylesheet" />
<!-- 메뉴바 부트스트랩 템플릿 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
<!-- jQuery import 스크립트  -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<!-- 챗봇 -->
<%@ include file="../chatBot/kitchenChat.jsp" %>
<script>
	//로그인 풀리면 로그인 페이지로 이동 
	window.onload = function () {
		if("${loginUser}" == ""){
			alert("로그인하셔야 본 서비스를 이용하실 수 있습니다.");
			location.href="/biz/user/goUserLoginPage.do";
		}
	}
	// 확인 버튼 클릭 ------ 
	$(function() {
		$("#confirmBtn").click(function() {
			var passwordValue = $("#passwordInput").val(); // 비밀번호 입력값
			var userConfirmForm = $("#userConfirmForm").serialize(); // 비밀번호 확인 폼 데이터 

			// 비밀번호 입력값이 비어있는지 확인
			if (passwordValue.trim() === '') {
				alert("비밀번호를 입력해주세요.");
				return;
			}

			// 비밀번호 확인 & 상태 업데이트
			$.ajax("confirmPassword.do", {
				type : "post",
				dataType : "json",
				data : userConfirmForm,
				success : function(data) {
					if (data == true) { // 비밀번호 확인 성공
						alert("탈퇴가 성공적으로 처리되었습니다.");
						location.href = "userWithdraw.do"
					} else {
						alert("비밀번호가 일치하지 않습니다.");
					}
				},
				error : function() {
					alert("비밀번호 확인에 실패하였습니다.\n 다시 시도해주세요.");
				}
			});

		});

	});
</script>
</head>
<body>
	<!-- header -->
	<%@ include file="../../../css/headerFooter/shopHeader.jsp"%>
	<!-- ------------------------------------------------------------------------ -->

	<div class="css-191mpdx">
		<div class="css-1n0iowd">회원탈퇴안내</div>
		<div class="css-lmufyc">
			<div class="css-w9v2bl">
				<div class="css-1y8737n">
					<label class="css-1obgjqh">회원탈퇴안내</label>
				</div>
				<div class="css-82a6rk">
					<div class="css-542elh">
						고객님께서 회원 탈퇴를 원하신다니 저희 쇼핑몰의 서비스가 많이 부족하고 미흡했나 봅니다. 불편하셨던 점이나 불만사항을
						알려주시면 적극 반영해서 고객님의 불편함을 해결해 드리도록 노력하겠습니다. <strong
							class="css-11v4spm">아울러 회원 탈퇴시의 아래 사항을 숙지하시기 바랍니다.</strong>
						<ul class="css-0e114s4r91">
							<li class="css-0e114s4r90">1. 회원 탈퇴 시 고객님의 정보는 상품 반품 및 A/S를
								위해 전자상거래 등에서의 소비자 보호에 관한 법률에 의거한 고객정보 보호정책에따라 관리 됩니다.</li>
							<li class="css-0e114s4r90">2. 탈퇴 시 고객님께서 보유하셨던 적립금은 모두 삭제
								됩니다.</li>
							<li class="css-0e114s4r90">3. 회원 탈퇴 후 3개월간 재가입이 불가능합니다.</li>
							<li class="css-0e114s4r90">4. 회원 탈퇴 시 컬리패스 해지는 별도로
								고객행복센터(1644-1107)를 통해서 가능합니다. 직접 해지를 요청하지 않으면 해지 처리가 되지 않습니다.</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<form id="userConfirmForm">
			<div class="css-1pjgd36">
				<div class="css-1y8737n">
					<label for="password" class="css-1obgjqh">비밀번호 입력</label>
				</div>
				<div class="css-82a6rk">
					<div class="css-rfi9gs">
						<div class="css-176lya2">
							<input data-testid="input-box" id="passwordInput"
								name="userPassword" placeholder="현재 비밀번호를 입력해주세요"
								type="password" class="css-u52dqk">
						</div>
					</div>
				</div>
				<div class="css-1w0ksfz"></div>
			</div>

			<div class="css-1fb6x3">
				<!-- 취소버튼 : 개인정보수정페이지로 이동(이전페이지) -->
				<button class="css-h1qqcg" type="button" id="cancleBtn" height="44">
					<span class="css-btnspan">취소</span>
				</button>

				<button class="css-1vv342v" type="button" id="confirmBtn"
					height="44">
					<span class="css-nytqmg">탈퇴</span>
				</button>
			</div>
		</form>
	</div>


<script>
document.getElementById("cancleBtn").addEventListener("click",function() {
	history.back();
});
</script>
	<!-- ------------------------------------------------------------------------ -->
	<!-- footer -->
	<%@ include file="/css/headerFooter/shopFooter.jsp"%>
	<!-- ------------------------------------------------------------------------ -->

	<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>