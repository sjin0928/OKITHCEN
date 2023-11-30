<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지(개인정보수정-비밀번호확인)</title>
<!-- 메뉴바 외 코드 -->
<link href="${pageContext.request.contextPath}/css/cssStyle/style.css" rel="stylesheet" />
<!-- 마이페이지 css -->
<link href="${pageContext.request.contextPath}/css/cssStyle/userMyPageStyle.css" rel="stylesheet" />
<!-- 메뉴바 부트스트랩 템플릿 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
<!-- jQuery import 스크립트  -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<script>
	//로그인 풀리면 로그인 페이지로 이동 
	window.onload = function () {
		if("${loginUser}" == ""){
			alert("로그인하셔야 본 서비스를 이용하실 수 있습니다.");
			location.href="/biz/user/goUserLoginPage.do";
		}
	}
	$(function() {
		$('#confirmBtn').click(function() {
			var passwordValue = $("#passwordInput").val(); // 비밀번호 입력값
			var userConfirmForm = $("#userConfirmForm").serialize(); // 비밀번호 확인 폼 데이터 

			// 비밀번호 입력값이 비어있는지 확인
			if (passwordValue.trim() === '') {
				alert("비밀번호를 입력해주세요.");
				return;
			}

			$.ajax("confirmPassword.do", {
				type : "post",
				dataType : "json",
				data : userConfirmForm,
				success : function(data) {
					if (data == true) { // 비밀번호 확인 성공
						location.href = "goUserMyPageModify.do"
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
	<%@ include file="../../../css/headerFooter/shopMyPage.jsp"%>

	<!-- 여기 사이에 마이페이지 본문내역 들어가야 함 -->

	<div class="css-171zbec">
		<div class="css-j0lifa">
			<div class="css-fhxb3m">
				<h2 class="css-1268zpe">개인 정보 수정</h2>
			</div>
		</div>
		<div class="css-1492bdb">
			<h4 class="css-z4258j">비밀번호 재확인</h4>
			<p class="css-1fup356">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인해주세요.</p>
			<form id="userConfirmForm">
				<div class="css-14gj3aw">
					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label for="userId" class="css-1obgjqh">아이디</label>
						</div>
						<div class="css-82a6rk">
							<div class="css-1waqr6j">
								<div class="css-176lya2">
									<!-- 아이디 (readonly) -->
									<input data-testid="input-box" id="userIdInput" name="userId"
										type="text" readonly class="css-u52dqk"
										value="${loginUser.userId }">
								</div>
							</div>
						</div>
						<div class="css-1w0ksfz"></div>
					</div>
					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label for="password" class="css-1obgjqh">비밀번호 <span
								class="css-qq9ke6">*</span>
							</label>
						</div>
						<div class="css-82a6rk">
							<div class="css-1waqr6j">
								<div class="css-176lya2">
									<!-- 비밀번호 입력 -->
									<input data-testid="input-box" id="passwordInput"
										name="userPassword" placeholder="현재 비밀번호를 입력해주세요"
										type="password" autocomplete="off" class="css-u52dqk">
								</div>
							</div>
						</div>
						<div class="css-1w0ksfz"></div>
					</div>
				</div>
				<div class="css-144iql5">
					<button class="css-18m884r" id="confirmBtn" type="button"
						width="240" height="56" radius="3">
						<span class="css-nytqmg">확인</span>
					</button>
				</div>
			</form>
		</div>
	</div>





	<!-- 여기 사이에 마이페이지 본문내역 들어가야 함 -->


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