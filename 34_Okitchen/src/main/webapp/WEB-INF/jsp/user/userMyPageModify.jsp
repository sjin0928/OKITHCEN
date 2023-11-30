<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지(개인정보수정)</title>
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
// 기존에 선택한 성별 선택되어지도록 처리
$(function() {
    var userGender = "${loginUser.userGender}"; // 사용자 성별 값
    //alert("성별 : " + userGender);
    //console.log($("#gender-woman"))
    // 사용자 성별 값에 따라 라디오 버튼 선택
    if (userGender == "MALE") {
        $("#gender-man").prop("checked", true);
    } else if (userGender == "FEMALE") {
        $("#gender-woman").prop("checked", true);
    } else if (userGender == "NONE") {
        $("#gender-none").prop("checked", true);
    }
});
// 이메일 인증 클릭 ----------------------------
$(function() {
	$('#emailCheckBtn').click(function() {
		var emailInputValue = $('#email').val(); // 이메일 입력값 
        var initialEmailValue = "${loginUser.userEmail}"; // 초기 이메일 값

        // 입력값과 초기 입력값 비교
        if (emailInputValue === initialEmailValue) {
            alert("기존과 같은 이메일입니다.");
            $('#emailCheckBtn').prop('disabled', true); // 중복확인 버튼 disabled로 변경
			$('#emailCheckBtn').css({'border-color': 'rgb(221, 221, 221)' ,'color': 'rgb(221, 221, 221)', 'background-color': 'rgb(255, 255, 255)'});
			$('#emailCheckSpan').css({'color':'rgb(221, 221, 221)'});
            return;
        }
        
        // 이후 이메일 인증 
        $.ajax("getCheckDuplicateEmail.do",{
			type:"post",
        	dataType:"json",
        	data: { userEmail: emailInputValue }, // email 값을 'userEmail' 파라미터로 전달
        	success : function (data){
        		if(data == true){
        			//alert(data);
        			alert("사용 가능한 이메일입니다.");
        			$('#email').prop('readonly', true); // 이메일 값을 readonly로 변경
        			$('#emailCheckBtn').prop('disabled', true); // 중복확인 버튼 disabled로 변경
        			$('#emailCheckBtn').css({'border-color': 'rgb(221, 221, 221)' ,'color': 'rgb(221, 221, 221)', 'background-color': 'rgb(255, 255, 255)'});
        			$('#emailCheckSpan').css({'color':'rgb(221, 221, 221)'});
        		} else{
        			alert("사용 불가능한 이메일입니다.\n다른 이메일을 입력해주세요.");
        			$('#email').val(''); // 이메일 다시 입력하게 처리 (초기화)
        		}
        	},
        	error: function(){
				alert("실패");
			}
		});
	});
});
// 다른 번호 인증 클릭 & 인증번호 받기 -------------------
var code2 ="";  // 인증번호 
var mobileNumber = "";
$(function() {
    $("#phoneNumberBtn").on("click", function() {
    	mobileNumber = $("#mobileNumber").val();
        //alert("다른번호 인증 클릭");
        if(mobileNumber === "${loginUser.userPhonenum}"){
        	$("#mobileNumber").val("");
        	//alert("기존과 동일한 번호입니다.");
        	//retrun;
        }
        $("#mobileNumber").prop("readonly", false);
        $("#phoneNumberBtn").attr("disabled", true); // 인증번호 받기 버튼 비활성화
        // 인증번호 받기 버튼 색상 변경 (주->흰)
        $("#phoneNumberBtn").css({'border-color':'rgb(221, 221, 221)'});
        $("#phoneNumberSpan").css({'color':'rgb(221, 221, 221)'});
        $("#phoneNumberSpan").text("인증하기");
        $("#phoneNumberBtn").attr("id", "newPhoneNumberBtnID"); // 인증하기 전용 id 만듦
    });

    // 인증하기 클릭 (Event Delegation 적용)
    $(document).on("click", "#newPhoneNumberBtnID", function() {
        //alert("인증하기 클릭");
        mobileNumber = $("#mobileNumber").val();
        if (mobileNumber === "") { // 기존과 동일한 번호일 경우 
            alert("기존과 동일한 번호입니다.");
            return;
        }
        // 인증번호 보내기 
        $.ajax("sendAuthenticationMsg.do",{
    		type:"post",
        	dataType:"text",
        	data: { userPhonenum: mobileNumber }, // mobileNumber 값을 'userPhonenum' 파라미터로 전달
        	success : function (data){ // 인증번호 전송 완료 시 
        		if(data === "no"){
        			alert("이미 가입된 핸드폰 번호입니다.");
        			$("#mobileNumber").val("");
        		} else {
	        		$("#authenticationNum").attr("disabled",false); // 인증 번호 입력 disabled false 처리 
	        		$("#mobileNumber").prop("readonly",true); // 핸드폰 입력 창 readonly로 변경 (문자 인증 후 번호 변경 방지)
	        		$("#newPhoneNumberBtnID").attr("disabled",true); // 인증번호 받기 버튼 비활성화 
	        		// 인증번호 받기 버튼 색상 변경 (주->흰)
	        		$("#newPhoneNumberBtnID").css({'border-color':'rgb(221, 221, 221)'});
	        		$("#phoneNumberSpan").css({'color':'rgb(221, 221, 221)'});
	        		$("#authenticationNumMsg").css("display", "block"); // 인증번호 입력 메세지 표시 
	        		code2 = data; // 인증번호 저장
	        		$("#checkAuthenticationBtn").prop("disabled",false);// 인증번호 확인 버튼 disabled false 처리 
	        		$("#checkAuthenticationBtn").css({'border-color':'rgb(231, 129, 17)'}); // 인증번호 확인 버튼 style 변경 (흰->주)
	        		$("#checkAuthenticationSpan").css({'color':'rgb(231, 129, 17)'});
        		}
        	},
        	error: function(){
    			alert("휴대폰 번호가 올바르지 않습니다."); // 유효한 번호가 아닐 경우 메세지 표시 
    			$("#phoneInputMsg").css("display", "block");
    			$("#phoneInputMsgP").text("유효한 번호를 입력해주세요.");
    		}
    	});
        
    });
});
// 휴대폰 인증
$(function(){
	$("#checkAuthenticationBtn").click(function(){ // 인증번호 확인 클릭 
		
		if($("#authenticationNum").val() == code2){ // 인증번호 일치 
			//$("#authenticationNumP").text("인증번호가 일치합니다.");
			$("#authenticationNumMsg").css('display', 'none');
			$("#authenticationNum").attr("disabled", true); 
			// 버튼 비활성화 및 버튼 색상 변경 
			$("#checkAuthenticationBtn").prop("disabled",true);// 인증번호 확인 버튼 disabled false 처리 
    		$("#checkAuthenticationBtn").css({'border-color':'rgb(221, 221, 221)'});// 인증번호 확인 버튼 style 변경 (흰->주)
    		$("#checkAuthenticationSpan").css({'color':'rgb(221, 221, 221)'});
    		alert("인증에 성공하였습니다.");
		} else { // 인증번호 비일치
			$("#authenticationNumP").text("인증번호가 일치하지 않습니다. 확인 후 다시 입력해주세요");
			$(this).attr("autofocus",true); // this : 인증번호 입력란
		}
	});
});
// 수정하기 버튼 클릭 ----------------------------
$(function(){
	$("#modifyBtn").click(function() {
		var formSubmitGo = false;
		//alert("수정하기 버튼 클릭");
		var userJoinForm = $("#userJoinForm").serialize(); // 폼 데이터 
		var password = $("#password").val(); // 현재 비밀번호
		var newPassword = $("#newPassword").val(); // 새 비밀번호
        var newPasswordConfirm = $("#newPasswordConfirm").val(); // 새 비밀번호 확인
        
         // 보여지고 있는 제약조건 메세지가 있다면
	    $(".css-shoa2s").each(function() {
	    	 if ($(this).css("display") === "block") { // 보여지고 있는 제약조건 메세지가 있다면
	    	      alert($(this).find('p').text());
	    	      formSubmitGo = true;
	    	      return false; // 반복문에서 빠져나오고 함수도 종료됨 (form 제출 안 됨 !)
	    	    }
	   	 });
        
    	// 새 비밀번호와 새 비밀번호 확인이 빈 문자열이 아니고, 입력값이 서로 동일한지 확인
        if (newPassword.trim() !== '' && newPassword === newPasswordConfirm) {
        	if (password.trim() === '') { // 비밀번호 변경할 때 현재 비밀번호 입력 안 했을 경우 
                alert("비밀번호 변경 시 현재 비밀번호를 입력해주세요.");
                return;
            }
        }
     	// 이름 입력 안 했을 경우 
	     if($("#name").val().trim()=== ""){
	    	 alert("이름을 입력해주세요.");
	    	 return;
	     }
	  	 // 핸드폰 번호 입력 안 했을 경우 
	     if($("#mobileNumber").val().trim()=== ""){
	    	 alert("핸드폰 인증을 진행해주세요.");
	    	 return;
	     }
    	
        // 폼 제출 로직 ------------
        $.ajax("modifyUser.do",{
        	type:"post",
	    	 dataType:"json",
	    	 data : userJoinForm,
	    	 success : function (data){
	    		 //alert("data : " + data);
	    		 if(data == true){
	    			 alert("개인정보를 수정하였습니다.");
	    			 // 다시 개인정보수정(비밀번호 확인하는 페이지로 이동)
	    			 location.href = "modifyConfirm.do"
	    		 } else {
	    			 alert("현재 비밀번호를 확인해주세요.");
	    		 }
	    	 },
	    	 error: function(){
	    		 alert("개인정보 수정에 실패했습니다. \n다시 시도해주세요");
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
		<div class="css-ya8of1">
			<!-- form -->
			<form id="userJoinForm">
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label for="userId" class="css-1obgjqh">아이디</label>
					</div>
					<div class="css-82a6rk">
						<div class="css-1waqr6j">
							<div class="css-176lya2">
								<!-- 아이디 : 수정 불가 -->
								<input data-testid="input-box" value="${loginUser.userId }"
									id="memberId" name="userId" type="text" readonly
									class="css-u52dqk">
							</div>
						</div>
					</div>
					<div class="css-1w0ksfz"></div>
				</div>
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label for="password" class="css-1obgjqh">현재 비밀번호</label>
					</div>
					<div class="css-82a6rk">
						<div class="css-1waqr6j">
							<div class="css-176lya2">
								<!-- 현재 비밀번호 -->
								<input data-testid="input-box" id="password" name="userPassword"
									placeholder="비밀번호를 입력해 주세요" type="password" autocomplete="off"
									class="css-u52dqk">
							</div>
						</div>
					</div>
					<div class="css-1w0ksfz"></div>
				</div>
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label for="newPassword" class="css-1obgjqh">새 비밀번호</label>
					</div>
					<div class="css-82a6rk">
						<div class="css-1waqr6j">
							<div class="css-176lya2">
								<!-- 새 비밀번호 -->
								<input data-testid="input-box" id="newPassword"
									name="newPassword" placeholder="새 비밀번호를 입력해 주세요"
									type="password" autocomplete="off" class="css-u52dqk"
									data-gtm-form-interact-field-id="4">
							</div>
						</div>

						<!-- 제약조건에 해당하면 사라지게 처리 -->
						<div class="css-shoa2s" id="passwordMsg" style="display: none;">
							<p class="css-1ozil7i">최소 10자 이상 입력</p>
						</div>
						<!-- ======================= -->

					</div>
					<div class="css-1w0ksfz"></div>
				</div>
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label for="newPasswordConfirm" class="css-1obgjqh">새 비밀번호
							확인</label>
					</div>
					<div class="css-82a6rk">
						<div class="css-1waqr6j">
							<div class="css-176lya2">
								<!-- 새 비밀번호 확인 -->
								<input data-testid="input-box" id="newPasswordConfirm"
									name="newPasswordConfirm" placeholder="새 비밀번호를 다시 입력해 주세요"
									type="password" autocomplete="off" class="css-u52dqk"
									data-gtm-form-interact-field-id="5">
							</div>
						</div>
						<!-- 제약조건에 해당하면 사라지게 처리 -->
						<div class="css-shoa2s" id="newPasswordConfirmMsg"
							style="display: none;">
							<p class="css-1ozil7i">동일한 비밀번호를 입력.</p>
						</div>
						<!-- ======================= -->
					</div>
					<div class="css-1w0ksfz"></div>
				</div>
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label for="name" class="css-1obgjqh">이름</label>
					</div>
					<div class="css-82a6rk">
						<div class="css-1waqr6j">
							<div class="css-176lya2">
								<!-- 이름 : 수정 가능 -->
								<input data-testid="input-box" id="name" name="userName"
									value="${loginUser.userName }" placeholder="이름을 입력해 주세요"
									type="text" class="css-u52dqk">
							</div>
						</div>
					</div>
					<div class="css-1w0ksfz"></div>
				</div>
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label for="email" class="css-1obgjqh">이메일</label>
					</div>
					<div class="css-82a6rk">
						<div class="css-1waqr6j">
							<div class="css-176lya2">
								<!-- 이메일 : 기존 값에서 변경하면 중복확인 버튼 활성화 후 중복확인해야 함 -->
								<input data-testid="input-box" id="email" name="userEmail"
									value="${loginUser.userEmail }" placeholder="이메일을 입력해 주세요"
									type="text" class="css-u52dqk">
							</div>
						</div>
						<!-- 제약조건에 해당하면 사라지게 처리 -->
						<div class="css-shoa2s" id="emailMsg" style="display: none;">
							<p class="css-1ozil7i">이메일 형식으로 입력해 주세요.</p>
						</div>
						<!-- ======================= -->

					</div>
					<!-- 중복확인 버튼 -->
					<div class="css-1w0ksfz">
						<button class="css-ufulao" id="emailCheckBtn" type="button"
							disabled style="border-color: rgb(221, 221, 221);">
							<!-- 클래스 변경 -->
							<span class="css-btnspan" id="emailCheckSpan"
								style="color: rgb(221, 221, 221);">중복확인</span>
						</button>
					</div>
				</div>
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label for="mobileNumber" class="css-1obgjqh">휴대폰</label>
					</div>
					<div class="css-82a6rk">
						<div class="css-1waqr6j">
							<div class="css-176lya2">
								<!-- 핸드폰 번호 : 다른번호 인증 버튼 누르면 입력값 초기화 및 인증하기 버튼으로 변경 -->
								<!-- 핸드폰 인증 후 버튼 비활성화/핸드폰 번호 입력란 readonly -->
								<input data-testid="input-box" value="${loginUser.userPhonenum}"
									id="mobileNumber" name="userPhonenum" placeholder="숫자만 입력해 주세요"
									type="tel" readonly class="css-u52dqk">
							</div>
						</div>

						<!-- 다른번호 인증 누르면 활성화 휴대폰 11자리 입력 시 사라지게 처리 -->
						<div class="css-shoa2s" id="phoneInputMsg" style="display: none;">
							<p class="css-1ozil7i" id="phoneInputMsgP">휴대폰 번호 11자리를
								입력해주세요</p>
						</div>

					</div>

					<!-- 핸드폰 버튼 -->
					<div class="css-1w0ksfz">
						<button class="css-ufulao" id="phoneNumberBtn" type="button">
							<!-- 클래스변경 -->
							<span class="css-btnspan" id="phoneNumberSpan">다른번호 인증</span>
						</button>
					</div>
					<!-- ============= -->

				</div>
				<!-- 인증번호 입력란 -->
				<!-- 인증하기 누르면 활성화 -->
				<div class="css-1pjgd36">
					<div class="css-82a6rk">
						<div class="css-1waqr6j">
							<div class="css-176lya2">
								<input data-testid="input-box" id="authenticationNum" disabled
									name="authCode" type="text" required class="css-u52dqk">
							</div>
						</div>

						<!-- 인증번호 받기 클릭시 보임 -->
						<div class="css-shoa2s" id="authenticationNumMsg"
							style="display: none;">
							<p class="css-1ozil7i" id="authenticationNumP">인증번호를 입력 후
								인증번호 확인을 눌러주세요</p>
						</div>

						<!-- 인증번호 확인 버튼 -->
					</div>
					<div class="css-1w0ksfz">
						<button class="css-ufulao" id="checkAuthenticationBtn"
							type="button" disabled style="border-color: rgb(221, 221, 221);">
							<span class="css-btnspan" id="checkAuthenticationSpan"
								style="color: rgb(221, 221, 221);">인증번호 확인</span>
						</button>
					</div>
				</div>
				<!-- 성별 : 선택값으로 선택되어지게 하기 -->
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label class="css-1obgjqh">성별</label>
					</div>
					<div class="css-82a6rk">
						<div class="css-14wodj6">
							<!-- radio 영역(시작) -->
							<label class="css-z9g6s0" for="gender-man"> <!-- 성별 : 남자 -->
								<input data-testid="radio-MALE" value="MALE" id="gender-man"
								name="userGender" type="radio" class="css-1pes2r6"> <span
								class="css-198i9ca">
									<div class="css-1dahn5m" style="background-color: white;"></div>
							</span> <span aria-labelledby="gender-man" class="css-mgd87h">남자</span>
							</label> <label class="css-z9g6s0" for="gender-woman"> <!-- 성별 : 여자 -->
								<input data-testid="radio-FEMALE" value="FEMALE"
								id="gender-woman" name="userGender" type="radio"
								class="css-1pes2r6"> <span class="css-198i9ca">
									<div class="css-1dahn5m" style="background-color: white;"></div>
							</span> <span aria-labelledby="gender-woman" class="css-mgd87h">여자</span>
							</label> <label class="css-z9g6s0" for="gender-none"> <!-- 성별 : 선택 안 함 -->
								<input data-testid="radio-NONE" value="NONE" id="gender-none"
								name="userGender" type="radio" class="css-1pes2r6"> <span
								class="css-198i9ca">
									<div class="css-1vic0rk"></div>
							</span> <span aria-labelledby="gender-none" class="css-mgd87h">선택안함</span>
							</label>
							<!-- radio 영역(끝) -->

						</div>
					</div>
					<div class="css-1w0ksfz"></div>
				</div>
				<!-- 생년월일 -->
				<div class="css-1pjgd36">
					<div class="css-1y8737n">
						<label for="birthYear" class="css-1obgjqh">생년월일</label>
					</div>

					<div class="css-82a6rk">
						<div class="css-82a6rk">
							<div class="css-18n8lnw">
								<input data-testid="input-box" name="userBirth"
									id="birthDayInput" value="${loginUser.userBirth }"
									id="birthDayInput" type="date" class="css-151eme7">
							</div>
						</div>

						<!-- 만 14세 이상 시 사라지게 처리  -->
						<div class="css-shoa2s" id="birthInputMsg" style="display: none;">
							<p class="css-1ozil7i" id="birthInputMsgP">만 14세 미만은 가입이
								불가합니다.</p>
						</div>
					</div>
				</div>
				<div class="css-1w0ksfz"></div>
		</div>



		<div class="css-14332pf">
			<a href="goUserWithdraw.do"> <!-- 탈퇴하기 버튼 -->
				<button class="css-ufulao" id="withdrawBtn" type="button">
					<!-- 클래스 변경 -->
					<span class="css-btnspan">탈퇴하기</span>
				</button>
			</a>
			<!-- 수정하기 버튼 -->
			<button class="css-1qirdbn" id="modifyBtn" type="button">
				<span class="css-nytqmg">회원정보수정</span>
			</button>
		</div>
		</form>
	</div>
	</div>





	<!-- 여기 사이에 마이페이지 본문내역 들어가야 함 -->


	</div>
	</div>




	<script>
//핸드폰 입력 숫자만 들어오게 처리 ------------------
const inputBox = document.getElementById('mobileNumber'); // 핸드폰 번호 
const phoneNumberBtn = document.getElementById('phoneNumberBtn'); // 인증하기 버튼
const phoneNumberSpan = document.getElementById('phoneNumberSpan'); // 인증하기 글씨 
const phoneInputMsg = document.getElementById('phoneInputMsg'); // 핸드폰 입력 메세지

inputBox.addEventListener('input', function(event) {
  const inputValue = event.target.value;
	
  // 숫자만 입력하도록 처리
  if (/\D/.test(inputValue)) {
    event.target.value = inputValue.replace(/\D/g, '');
    return;
  }

  // 입력값이 없는 경우 버튼을 비활성화, 입력 시작 후 11자리 입력할 때까지 메세지 표시 
  if (inputValue.length < 11) {
    phoneNumberBtn.disabled = true;
    phoneInputMsg.style.display = 'block';// 메세지 보여줌
    phoneNumberBtn.style.borderColor = 'rgb(221, 221, 221)';
    phoneNumberSpan.style.color = 'rgb(221, 221, 221)';
  } else { // 11자리 입력
    phoneNumberBtn.disabled = false; // 버튼 활성화
    phoneInputMsg.style.display = 'none'; // 메세지 숨김
    phoneNumberBtn.style.borderColor = 'rgb(231, 129, 17)';
    phoneNumberSpan.style.color = 'rgb(231, 129, 17)';
  }
});

// 핸드폰 입력 12자리 미만 처리
inputBox.addEventListener('input', function(event) {
  const enteredValue = event.target.value;

  if (enteredValue.length > 11) {
    event.target.value = enteredValue.slice(0, 11);
  }
});

//이메일 형식 지키지 않았을 경우 메세지 표시 (형식에 맞으면 메세지 숨김) -------------
//입력값 변동 시 버튼 활성화 
const emailInput = document.getElementById('email'); // 이메일 입력란
const emailMsg = document.getElementById('emailMsg'); // 이메일 메세지
const emailCheckBtn = document.getElementById('emailCheckBtn'); // 중복확인 버튼

function validateEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; // 이메일 형식 검증을 위한 정규식
    return emailRegex.test(email);
}

emailInput.addEventListener('input', function () {
    if (!validateEmail(emailInput.value)) {
        emailMsg.style.display = 'block'; // 이메일 형식이 유효하지 않은 경우 메세지 표시
        emailCheckBtn.disabled = true; // 버튼 비활성화
        emailCheckBtn.style.borderColor = 'rgb(221, 221, 221)'; // 버튼 테두리 색상 변경
        document.getElementById('emailCheckSpan').style.color = 'rgb(221, 221, 221)'; // 버튼 내 텍스트 색상 변경
    } else {
        emailMsg.style.display = 'none'; // 이메일 형식이 유효한 경우 메세지 숨기기
        emailCheckBtn.disabled = false; // 버튼 활성화
        emailCheckBtn.style.borderColor = 'rgb(231, 129, 17)'; // 버튼 테두리 색상 변경
        document.getElementById('emailCheckSpan').style.color = 'rgb(231, 129, 17)'; // 버튼 내 텍스트 색상 변경
    }
});

//비밀번호 및 비밀번호 확인 17자리 이상 입력 불가 처리 ---------------------------
const passwordInput = document.getElementById('newPassword'); // 새 비밀번호 
const confirmPasswordInput = document.getElementById('newPasswordConfirm'); // 비밀번호 확인

const pwMaxLength = 16; // 최대 입력 16자 

passwordInput.addEventListener('input', function(event) {
    if (event.target.value.length > pwMaxLength) {
        event.target.value = event.target.value.slice(0, pwMaxLength);
    }
});

confirmPasswordInput.addEventListener('input', function(event) {
    if (event.target.value.length > pwMaxLength) {
        event.target.value = event.target.value.slice(0, pwMaxLength);
    }
});

//비밀번호 10자 미만 입력했을 경우 메세지 표시 -------------------------------
const passwordMsg = document.getElementById('passwordMsg'); // 비밀번호 제약조건 메세지 

passwordInput.addEventListener('input', function () {
	 if (passwordInput.value.length < 10) {
		 passwordMsg.style.display = 'block'; // 보여줌
	 } else {
		 passwordMsg.style.display = 'none'; // 보여줌
	 }
});

//비밀번호 확인 / 비밀번호 다를 경우 메세지 표시 -----------------------------
const passwordConfirmMsg = document.getElementById('newPasswordConfirmMsg'); // 비밀번호 확인 제약조건 메세지

 function checkPasswords() {
	 if (passwordInput.value !== confirmPasswordInput.value) { // 작성한 비밀번호 입력 다를 경우 
         passwordConfirmMsg.style.display = 'block';// 보여좀
     } else { // 비밀번호 같을 경우 
         passwordConfirmMsg.style.display = 'none'; // 숨김
     }
}
 passwordInput.addEventListener('input', checkPasswords);
 confirmPasswordInput.addEventListener('input', checkPasswords);

//성별 요소 하나만 선택하도록 처리 -----------------------------
const radioButtons = document.querySelectorAll('input[type="radio"][name="userGender"]'); // 성별 라디오 버튼 요소 

radioButtons.forEach(radioButton => {
    radioButton.addEventListener('click', function() {
        // 모든 라디오 버튼들을 확인하고 현재 클릭된 버튼이 아닌 나머지 버튼들을 선택 해제
        radioButtons.forEach(rb => {
            if (rb !== radioButton) {
                rb.nextElementSibling.style.backgroundColor = 'white'; // 선택되지 않은 배경색 흰색으로 변경
            }
        });

        // 선택된 라디오 버튼에만 배경색 변경
        radioButton.nextElementSibling.style.backgroundColor = 'rgb(231, 129, 17)'; // 선택된 요소 배경색 변경
    });
});
//생년월일 : 만 14세 이상만 가입하도록 설정 -----------------
//함수: 주어진 날짜가 14세 이상인지 확인
function isOverFourteen(dateString) {
const today = new Date();
const birthDate = new Date(dateString);
const diff = today - birthDate;
const age = Math.floor(diff / (1000 * 60 * 60 * 24 * 365.25));
return age >= 14;
}

//함수: 날짜 입력 상태 확인 후 메시지 표시/숨김 처리
function toggleMessageDisplay() {
const birthInput = document.getElementById('birthDayInput');
const birthMsg = document.getElementById('birthInputMsg');

if (isOverFourteen(birthInput.value)) {
 birthMsg.style.display = 'none'; // 14세 이상인 경우 메시지 숨김
} else {
 birthMsg.style.display = 'block'; // 14세 미만인 경우 메시지 표시
}
}
//이벤트: 날짜 선택 시 메시지 확인 및 처리
document.getElementById('birthDayInput').addEventListener('change', toggleMessageDisplay); 
</script>

	<!-- ------------------------------------------------------------------------ -->
	<!-- footer -->
	<%@ include file="/css/headerFooter/shopFooter.jsp"%>
	<!-- ------------------------------------------------------------------------ -->

	<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>