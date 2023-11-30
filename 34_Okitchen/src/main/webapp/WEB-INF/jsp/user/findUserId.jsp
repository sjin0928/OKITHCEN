<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디찾기(일반회원)</title>
<!-- 메뉴바 외 코드 -->
<link href="${pageContext.request.contextPath}/css/cssStyle/style.css" rel="stylesheet" />
<!-- 로그인 css -->
<link href="${pageContext.request.contextPath}/css/cssStyle/userJoinStyle.css" rel="stylesheet" />
<!-- 메뉴바 부트스트랩 템플릿 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
<!-- jQuery import 스크립트  -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<script>
	// 로그인 버튼 클릭 ------------	
	$(document).on('click', '#loginBtn', function() {
	    location.href="/biz/user/goUserLoginPage.do";
	});
	// 핸드폰 인증 ------------------
	// 인증번호 받기 클릭 
	var code2 = ""; // 인증번호 
	$(function() {
		$('#phoneNumberBtn').click(function() { // 휴대폰 데이터 id : findPhoneNumber
			//alert("인증번호 발송 버튼 클릭 ");
			var userFindIdForm = $('#userFindIdForm').serialize(); // 폼데이터 
			var findPhoneNumber = $("#findPhoneNumber").val(); // 핸드폰 번호 
			var findUserName = $("#findName").val();// 이름 
			//alert(findPhoneNumber);

			if (findPhoneNumber.trim() === '' || findUserName.trim() === '') {
				alert("이름 또는 휴대폰 번호를 입력해주세요.");
				return;
			}

			$.ajax("findSendAuthenticationMsg.do", {
				type : "post",
				dataType : "text",
				data : userFindIdForm,
				success : function(data) { // 인증번호 전송 완료 시 
					if (data == "no") {
						alert("가입 시 입력하신 회원 정보가 맞는지 다시 한 번 확인해주세요.");
					} else {
						$("#authenticationNum").attr("disabled", false); // 인증 번호 입력칸 활성화 
						$("#findPhoneNumber").prop("readonly", true); // 핸드폰 입력 창 readonly로 변경 (문자 인증 후 번호 변경 방지)
						$("#phoneNumberBtn").attr("disabled", true); // 인증번호 받기 버튼 비활성화 
						code2 = data; // 인증번호 저장
						// 아이디 찾기 버튼 활성화 및 색상 변경 
						$("#findIdBtn").attr("disabled", false);
						$("#findIdBtn").css({
							'background-color' : 'rgb(231, 129, 17)'
						});

					}
				},
				error : function() {
					alert("가입 시 입력하신 회원 정보가 맞는지 다시 한 번 확인해주세요.");
				}
			});
		});
	});

	// 아이디 찾기 버튼 클릭 --------------------------------
	$(function() {
		$('#findIdBtn').click(function() {
			var authenticationNum = $("#authenticationNum").val(); // 인증번호 
			var userFindIdForm = $('#userFindIdForm').serialize(); // 폼데이터 

			// 유효성 검사 
			if (authenticationNum.trim() === '') {
				alert("인증번호를 입력해주세요.");
				return;
			} else if (authenticationNum != code2) {
				alert("인증번호가 일치하지 않습니다. 확인 후 다시 입력해주세요");
				return;
			}
			// 아이디 찾는 로직 
			$.ajax("showFoundUserId.do", {
				type : "post",
				dataType : "json",
				data : userFindIdForm,
				success : function(data) { // success면 무조건 회원 정보 다 넘어옴 ! 
					var userDate = new Date(parseInt(data.userDate));
					let dispTag = '<div class="css-140915z">';
					dispTag += '<div class="css-6mht10">';
					dispTag += '<div class="css-1ymrnwr">고객님의 오키친 계정을 찾았습니다.';
					dispTag += '<div class="css-1jlgal3">아이디 확인 후 로그인해 주세요.</div></div>';
					dispTag += '<ul class="css-14o5m2r"><li class="css-1qp8f6i">';
					dispTag += '<img class="css-ate73y" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDAiIGhlaWdodD0iNDAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxjaXJjbGUgZmlsbD0iI0Y1RjVGNSIgY3g9IjIwIiBjeT0iMjAiIHI9IjIwIi8+CiAgICAgICAgPHBhdGggZD0iTTIwIDE5YzQuNjUzIDAgOC41IDMuNDc2IDguNSA3LjcyIDAgLjQzLS4zNDYuNzgtLjc3My43OEgxMi4yNzNhLjc3Ni43NzYgMCAwIDEtLjc3My0uNzhjMC00LjI4NSAzLjgyNC03LjcyIDguNS03Ljcyem0wLTguNWEzLjQgMy40IDAgMSAxIDAgNi44IDMuNCAzLjQgMCAwIDEgMC02Ljh6IiBzdHJva2U9IiNDQ0MiIGZpbGw9IiNDQ0MiLz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="정보보기">';
					dispTag += '<div class="css-yzpdz"><div class="css-1kkr6j1">';
					dispTag += data.userId;
					dispTag += '</div><div class="css-1081952">가입일 : ';
					dispTag += userDate.toLocaleDateString();
					dispTag += '</div></div></li></ul><div class="css-gyfngb">';
					dispTag += '<button class="css-1qirdbn" type="button" id="loginBtn">';
					dispTag += '<span class="css-nytqmg" style="color:white;">로그인</span></button>';
					
					
					dispTag += "</div>";
					dispTag += "</div>";
					dispTag += "</div>";
					$("#showId").html(dispTag);
				},
				error : function() {
					alert("아이디 찾기를 실패했습니다. \n다시 시도해주세요");
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

	<div id="showId">
	<div class="css-pculus">
		<div class="css-o5dw7d">아이디 찾기</div>
		<div class="css-mhmtvt">

			<!-- 이름 -->
			<!-- <form action="userJoin.do" method="post" id="userJoinForm"> -->
			<form id="userFindIdForm">
				<div class="css-y8aj3r">

					<!-- 이름 -->
					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label class="css-1obgjqh">이름 </label>
						</div>
						<div class="css-82a6rk">
							<div class="css-jmalg">
								<div class="css-176lya2">
									<!-- 이름 데이터 -->
									<input data-testid="input-box" id="findName" name="userName" placeholder="이름을 입력해 주세요" type="text" required
										class="css-u52dqk">
								</div>
							</div>
						</div>
						<div class="css-1w0ksfz"></div>
					</div>

					<!-- 휴대폰 -->
					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label class="css-1obgjqh">휴대폰 </label>
						</div>
						<div class="css-82a6rk">
							<div class="css-jmalg">
								<div class="css-176lya2">
									<!-- 휴대폰 데이터 -->
									<input data-testid="input-box" type="tel" id="findPhoneNumber" name="userPhonenum" placeholder="숫자만 입력해주세요." required
										class="css-u52dqk">
								</div>
							</div>

							<!-- 휴대폰 11자리 입력 시 사라지게 처리 -->
							<!-- 핸드폰 번호 입력할 때부터 보여져야 함 -->
							<div class="css-shoa2s" id="phoneInputMsg" style="display: none;">
								<p class="css-1ozil7i" id="phoneInputMsgP">휴대폰 번호 11자리를 입력해주세요</p>
							</div>

						</div>
						<!-- 인증번호 받기 버튼  -->
						<div class="css-1w0ksfz">
							<button class="css-ufulao" id="phoneNumberBtn" type="button"
								style="border-color: rgb(221, 221, 221);">
								<span class="css-nytqmg" id="phoneNumberSpan" style="color: rgb(221, 221, 221);"> 인증번호 받기</span>
							</button>
						</div>
					</div>


					<!-- 인증번호 확인(수정 필요 : 인증번호 받기를 눌렀을 때 생겨야 함) -->
					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label class="css-1obgjqh">인증번호 확인 </label>
						</div>
						<div class="css-82a6rk">
							<div class="css-jmalg">
								<div class="css-176lya2">
									<!-- 인증번호 데이터 -->
									<input data-testid="input-box" type="tel"
										id="authenticationNum" disabled name="authenticationNum"
										required class="css-u52dqk" disabled>
								</div>
							</div>


						</div>
						<!-- 인증번호 확인 버튼  -->
						<div class="css-1w0ksfz"></div>
					</div>
					<!-- 인증번호 확인(끝) -->

				</div>

				<!-- 이용약관 동의 시작 -->
				<!-- 이용약관동의 라벨  -->
				<div class="css-y8aj3r">

					<!-- 아이디 찾기 버튼 -->
					<div class="css-ud3rkg">
						<button class="css-18m884r" id="findIdBtn" type="button" radius="3" style="background-color: #ddd; width: 52%" disabled>
							<span class="css-nytqmgt">아이디 찾기 </span>
						</button>
					</div>


				</div>
		</div>
		</form>
	</div>
</div>

	<script>
		//핸드폰 입력 숫자만 들어오게 처리 ------------------
		const inputBox = document.getElementById('findPhoneNumber'); // 핸드폰 번호 
		const findName = document.getElementById('findName'); // 이름 입력값 
		const phoneNumberBtn = document.getElementById('phoneNumberBtn'); // 인증하기 버튼(활성화, 색상변경)
		const phoneNumberSpan = document.getElementById('phoneNumberSpan'); // 인증하기 글씨 (색상변경)
		const phoneInputMsg = document.getElementById('phoneInputMsg'); // 핸드폰 입력 메세지

		// 입력값이 변경될 때마다 실행되는 함수
		function updateButtonState() {
			const inputValue = inputBox.value;
			const nameValue = findName.value.trim();

			// 숫자만 입력하도록 처리
			if (/\D/.test(inputValue)) {
				inputBox.value = inputValue.replace(/\D/g, '');
				return;
			}

			// 입력값이 없는 경우 또는 11자리 미만일 때
			if (inputValue.length < 11 || nameValue === "") {
				//phoneNumberBtn.disabled = true;
				phoneInputMsg.style.display = 'block'; // 메세지 보여줌
				phoneNumberBtn.style.borderColor = 'rgb(221, 221, 221)';
				phoneNumberSpan.style.color = 'rgb(221, 221, 221)';
			} else { // 11자리 입력이면서 이름 입력값이 있는 경우
				//phoneNumberBtn.disabled = false; // 버튼 활성화
				phoneInputMsg.style.display = 'none'; // 메세지 숨김
				phoneNumberBtn.style.borderColor = 'rgb(231, 129, 17)';
				phoneNumberSpan.style.color = 'rgb(231, 129, 17)';
			}
		}

		// 핸드폰 번호 입력값이 변경될 때마다 실행
		inputBox.addEventListener('input', updateButtonState);
		// 이름 입력값이 변경될 때마다 실행
		findName.addEventListener('input', updateButtonState);
	</script>
	<!-- ------------------------------------------------------------------------ -->
	<!-- footer -->
	<%@ include file="/css/headerFooter/shopFooter.jsp"%>
	<!-- ------------------------------------------------------------------------ -->

	<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>