<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인(일반회원)</title>
<!-- 메뉴바 외 코드 -->
<link href="${pageContext.request.contextPath}/css/cssStyle/style.css"
	rel="stylesheet" />
<!-- 로그인 css -->
<link href="${pageContext.request.contextPath}/css/cssStyle/userLoginStyle.css" rel="stylesheet" />
<!-- 메뉴바 부트스트랩 템플릿 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
<!-- jQuery import 스크립트  -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<script>
	// 로그인 버튼 클릭 -----------------------------------------------
	$(function() {
		$('#loginBtn').click(function() {
			//alert("로그인 버튼 클릭");
			var userLoginForm = $("#userLoginForm").serialize(); // 로그인 폼 데이터 
			var userId = $('#userIdInput').val(); // 아이디 입력값
			var userPwd = $('#userPwdInput').val(); // 비밀번호 입력값

			//유효성 검사 (로그인이나 비밀번호 입력하지 않았을 경우)
			if (userId.trim() === '' || userPwd.trim() === '') {
				alert("아이디 또는 비밀번호를 입력해주세요.");
				return;
			}

			$.ajax("userLogin.do", {
				type : "post",
				dataType : "json",
				data : userLoginForm,
				success : function(data) {
					if (data == true) { // 로그인 성공 
						location.href = "/biz/index.do";
					} else { // 로그인 실패 
						alert("아이디,비밀번호를 확인해주세요.");
					}
				},
				error : function() {
					alert("로그인에 실패하였습니다.\n 다시 시도해주세요.");
				}
			});

		});

	});
</script>
<body>
	<!-- header -->
	<%@ include file="../../../css/headerFooter/shopHeader.jsp"%>
	<!-- ------------------------------------------------------------------------ -->

	<div class="css-1bb6q2p">
		<div class="css-a7gihu">로그인</div>
		<div class="css-1axolzg">
			<!-- <form id="userLoginForm" action="userLogin.do"> -->
			<form id="userLoginForm">
				<div class="css-46b038">
					<div class="css-1accgqb">
						<div class="css-176lya2">
							<!-- 아이디 입력 -->
							<input data-testid="input-box" id="userIdInput" name="userId" placeholder="아이디를 입력해주세요" type="text"
								class="css-u52dqk">
						</div>
					</div>

					<!-- 비밀번호 입력 -->
					<div class="css-1accgqb">
						<div class="css-176lya2">
							<input data-testid="input-box" id="userPwdInput" name="userPassword" placeholder="비밀번호를 입력해주세요" type="password"
								autocomplete="off" class="css-u52dqk">
						</div>
					</div>
				</div>

				<div class="css-1vjdduq">
					<a class="css-i4t6me" href="goFindIdPage.do">아이디 찾기</a> <span
						class="css-1cgn39v"></span>
					<!-- 비밀번호 찾기 보류!!!!! -->
					<a class="css-i4t6me" href="goFindPwdPage.do">비밀번호 재설정</a>
				</div>

				<!-- 로그인 버튼 -->
				<div class="css-s4i9n2">
					<button class="css-qaxuc4" id="loginBtn" type="button" height="54"
						radius="3">
						<span class="css-nytqmg">로그인</span>
					</button>

					<!-- 회원가입 버튼 -->
					<a href="/biz/user/goJoinPage.do">
						<button class="css-hxorrg" type="button" height="54" radius="3">
					 <span class="css-nytqmg"
						style="color: rgb(231, 129, 17); font-weight: bold;">회원가입</span>
					</button>
					</a>
				</div>
			</form>
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