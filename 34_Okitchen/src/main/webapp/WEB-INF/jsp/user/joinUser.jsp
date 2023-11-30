<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입(일반회원)</title>
	<!-- 메뉴바 외 코드 -->
	<link href="${pageContext.request.contextPath}/css/cssStyle/style.css" rel="stylesheet" />
	<!-- 회원가입 css -->
	<link href="${pageContext.request.contextPath}/css/cssStyle/userJoinStyle.css" rel="stylesheet" />
	<!-- 메뉴바 부트스트랩 템플릿 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
	<!-- jQuery import 스크립트  -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	
<script>
// 아이디 중복확인 클릭 
$(function(){
	
    $('#idCheckBtn').click(function(){
    	var memberId = $('#memberId').val(); // 아이디 입력값
        //alert("아이디 중복확인 버튼 클릭");
        //alert(memberId);
        
        if(memberId.trim() === '') {
            alert("아이디를 입력해주세요.");
            return;
        }
        
        if($("#idMsg").css("display") === "block"){ // 보여지고 있는 제약조건 메세지가 있으면
    		alert($("#idMsg").find("p").text());
    		return;
    	}
        
        $.ajax("getCheckDuplicateId.do",{
        	type:"post",
        	dataType:"json",
        	data: { userId: memberId }, // memberId 값을 'userId' 파라미터로 전달
        	success : function (data){ // data : 종복일 경우 false , 중복 아닐 경우 true
        		//alert(data);
        		if(data == true){
        			alert("사용 가능한 아이디입니다.");
        			$('#memberId').prop('readonly', true); // 아이디 값을 readonly로 변경
        			$('#idCheckBtn').prop('disabled', true); // 중복확인 버튼 disabled로 변경
        			$('#idCheckBtn').css({'border-color': 'rgb(221, 221, 221)' ,'color': 'rgb(221, 221, 221)', 'background-color': 'rgb(255, 255, 255)'});
        			$('#idCheckSpan').css({'color':'rgb(221, 221, 221)'});
        		} else{
        			alert("사용 불가능한 아이디입니다.\n다른 아이디를 입력해주세요.");
        			$('#memberId').val(''); // 아이디 다시 입력하게 처리 (초기화)
        		}
        	},
        	error: function(){
				alert("실패");
			}
        });
        
        
    });
});

//이메일 중복확인 클릭 
$(function(){
	$('#emailCheckBtn').click(function(){
		//alert("이메일 중복확인 버튼 클릭");
		var email = $('#email').val(); // 이메일 입력값
		
        if(email.trim() === '') {
            alert("이메일을 입력해주세요.");
            return;
        }
        
        if($("#emailMsg").css("display") === "block"){ // 보여지고 있는 제약조건 메세지가 있으면
    		alert($("#emailMsg").find("p").text());
    		return;
    	}
		
		//alert(email);
		$.ajax("getCheckDuplicateEmail.do",{
			type:"post",
        	dataType:"json",
        	data: { userEmail: email }, // email 값을 'userEmail' 파라미터로 전달
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
// 핸드폰 인증 ----------------------------------
var code2 ="";  // 인증번호 
$(function(){
	$('#phoneNumberBtn').click(function(){
	//alert("인증번호 발송 버튼 클릭 ");
	
	
	var mobileNumber = $("#mobileNumber").val();
	if(mobileNumber.trim() ===""){
		alert("핸드폰 번호를 입력해주세요.");
		return;
	}
	
	$.ajax("sendAuthenticationMsg.do",{
		type:"post",
    	dataType:"text",
    	data: { userPhonenum: mobileNumber }, // mobileNumber 값을 'userPhonenum' 파라미터로 전달
    	success : function (data){ // 인증번호 전송 완료 시 
    		//alert(data);
    		if(data === "no"){
    			alert("이미 가입된 핸드폰 번호입니다.");
    			//$("#mobileNumber").val("");
    		} else {
	    		$("#authenticationNum").attr("disabled",false); // 인증 번호 입력 disabled false 처리 
	    		$("#mobileNumber").prop("readonly",true); // 핸드폰 입력 창 readonly로 변경 (문자 인증 후 번호 변경 방지)
	    		$("#phoneNumberBtn").attr("disabled",true); // 인증번호 받기 버튼 비활성화 
	    		// 인증번호 받기 버튼 색상 변경 (주->흰)
	    		$("#phoneNumberBtn").css({'border-color':'rgb(221, 221, 221)'});
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

// 휴대폰 인증번호 확인 --------------------------
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
// 가입하기 버튼 클릭 -------------------
$(function(){
	$('#joinBtn').click(function() {
		var formSubmitGo = false;
		
	     //alert("가입하기버튼 클릭");
	     // 주소와 상세주소를 하나의 문자열로 만들어서 hidden으로 보내기 
	     var userAddress = $('#numberAddress').val() + ' ' + $('#subAddress').val();
	     $('#realUserAddress').val(userAddress); // 히든 주소 값 설정
	     var userJoinForm = $("#userJoinForm").serialize(); // 폼 데이터 
	     
	     var hasBlockElement = false; // 변수를 추가해서 block 요소를 체크
		
	     // 보여지고 있는 제약조건 메세지가 있다면
	     $(".css-shoa2s").each(function() {
	    	 if ($(this).css("display") === "block") { // 보여지고 있는 제약조건 메세지가 있다면
	    	      alert($(this).find('p').text());
	    	      formSubmitGo = true;
	    	      return false; // 반복문에서 빠져나오고 함수도 종료됨 (form 제출 안 됨 !)
	    	    }
	   	 });
	     if(formSubmitGo){
	    	 return;
	     }
	     // 아이디 중복확인 안 했을 경우 
	     if (!$('#idCheckBtn').prop('disabled')) {
	    	    alert('아이디 중복 확인을 먼저 진행해주세요.');
	    	    return;
	     }
	  	 // 비밀번호 입력 안 했을 경우 
	     if($("#password").val().trim()=== ""){
	    	 alert("비밀번호를 입력해주세요.");
	    	 return;
	     }
	  	 // 이름 입력 안 했을 경우 
	     if($("#name").val().trim()=== ""){
	    	 alert("이름을 입력해주세요.");
	    	 return;
	     }
	     // 이메일 중복확인 안 했을 경우 
	     if (!$('#emailCheckBtn').prop('disabled')) {
	    	    alert('이메일 중복 확인을 먼저 진행해주세요.');
	    	    return;
	     }
	  	 // 핸드폰 번호 입력 안 헀을 경우
	     if($("#mobileNumber").val().trim()=== ""){
	    	 alert("핸드폰 본인인증을 진행해주세요.");
	    	 return;
	     }
	     // 주소 입력 안 했을 경우
	     if($("#numberAddress").val().trim()=== ""){
	    	 alert('주소를 입력해주세요.');
	    	 return;
	     }
	     // 생년월일 선택 안 했을 경우
	     if($("#birthDayInput").val().trim() === ""){
			alert("생년월일을 선택해주세요.");
			return;
		 }
	     // 이용약관 모두 동의 안 했을 경우
	     if (!$('#allselect').prop('checked')) {
	        alert('이용약관에 모두 동의해주세요.');
	        return;
	     }
	     
	     $.ajax("userJoin.do",{
	    	 type:"post",
	    	 dataType:"json",
	    	 data : userJoinForm,
	    	 success : function (data){
	    		 if(data === 1){ // 회원가입 성공 
	    			 alert("회원가입에 성공하였습니다.\n로그인 후 이용해주세요.");
	    			 location.href = "goUserLoginPage.do";
	    		 } else {
	    			 alert("회원가입에 실패했습니다. \n다시 시도해주세요");
	    			 location.href = "/biz/index.do";
	    		 }
	    	 },
	    	 error: function(){
	    		 alert("회원가입에 실패했습니다. \n다시 시도해주세요");
	    	 }
	     });
		
	});
	
});
</script>
</head>
<body>
	<!-- header -->
	<%@ include file="../../../css/headerFooter/shopHeader.jsp" %>
	<!-- ------------------------------------------------------------------------ -->
	
	<div class="css-pculus">
	<div class="css-o5dw7d">회원가입</div>
	<div class="css-mhmtvt">
	<div class="css-rb0i47">
	<span class="css-qq9ke6">*</span> 필수입력사항
	</div>
	
	<!-- 아이디 -->
	<!-- <form action="userJoin.do" method="post" id="userJoinForm"> -->
	<form id="userJoinForm">
	<div class="css-y8aj3r">
	<div class="css-1pjgd36">
	<div class="css-1y8737n">
	<label class="css-1obgjqh">아이디
	<span class="css-qq9ke6">*</span>
	</label>
	</div>
	<div class="css-82a6rk">
	<div class="css-jmalg">
	<div class="css-176lya2">
	<!-- 아이디 데이터 -->
	<!-- 한글 및 특수문자 입력 불가능하게 처리함(onkeypress,oninput) -->
	<input data-testid="input-box" id="memberId" name="userId" placeholder="아이디를 입력해주세요" type="text" required class="css-u52dqk"
	   onkeypress="return /[a-zA-Z0-9]/.test(event.key)" >
	</div>
	</div>
	
	<!-- 제약조건에 해당하면 사라지게 처리 -->
	<div class="css-shoa2s" id="idMsg" style="display: none;">
	<p class="css-1ozil7i">6자 이상 16자 이하의 영문 혹은 영문과 숫자를 조합</p>
	</div>
	<!-- ======================= -->
	
	</div>
	<!-- 아이디 중복확인 버튼 -->
	<!-- 중복확인 후 사용하지 못하게 처리(색상변경) -->
	<div class="css-1w0ksfz">
	<button class="css-ufulao" id="idCheckBtn" type="button" style="border-color: rgb(231, 129, 17);">
	<span class="css-nytqmg" id="idCheckSpan" style="color: rgb(231, 129, 17);">중복확인
	</span>
	</button>
	</div>
	</div>
	<!-- 비밀번호 -->
	<div class="css-1pjgd36">
	<div class="css-1y8737n">
	<label class="css-1obgjqh">비밀번호
	<span class="css-qq9ke6">*</span>
	</label>
	</div>
	<div class="css-82a6rk">
	<div class="css-jmalg">
	<div class="css-176lya2">
	<!-- 비밀번호 데이터 -->
	<input data-testid="input-box" id="password" required name="userPassword" placeholder="비밀번호를 입력해주세요" type="password" autocomplete="off" class="css-u52dqk">
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
	<!-- 비밀번호 확인 -->
	<div class="css-1pjgd36">
	<div class="css-1y8737n">
	<label class="css-1obgjqh">비밀번호확인
	<span class="css-qq9ke6">*</span>
	</label>
	</div>
	<div class="css-82a6rk">
	<div class="css-jmalg">
	<div class="css-176lya2">
	
	<!-- 비밀번호 확인 데이터 -->
	<input data-testid="input-box" id="passwordConfirm" name="userPasswordConfirm" placeholder="비밀번호를 한번 더 입력해주세요" type="password" autocomplete="off" class="css-u52dqk" required>
	</div>
	</div>
	
	<!-- 제약조건에 해당하면 사라지게 처리 -->
	<div class="css-shoa2s" id="passwordConfirmMsg" style="display: none;">
	<p class="css-1ozil7i">동일한 비밀번호를 입력</p>
	</div>
	<!-- ======================= -->
	
	</div>
	<div class="css-1w0ksfz">
	</div>
	</div>
	<!-- 이름 -->
	<div class="css-1pjgd36">
	<div class="css-1y8737n">
	<label class="css-1obgjqh">이름
	<span class="css-qq9ke6">*</span>
	</label>
	</div>
	<div class="css-82a6rk">
	<div class="css-jmalg">
	<div class="css-176lya2">
	<!-- 이름 데이터 -->
	<input data-testid="input-box" id="name" name="userName" placeholder="이름을 입력해 주세요" type="text" required class="css-u52dqk">
	</div>
	</div>
	</div>
	<div class="css-1w0ksfz"></div>
	</div>
	<!-- 이메일 -->
	<div class="css-1pjgd36">
	<div class="css-1y8737n">
	<label class="css-1obgjqh">이메일
	<span class="css-qq9ke6">*</span>
	</label>
	</div>
	<div class="css-82a6rk">
	<div class="css-jmalg">
	<div class="css-176lya2">
	<!-- 이메일 데이터 -->
	<input data-testid="input-box" id="email" name="userEmail" placeholder="예: okitchen@naver.com" type="text" required class="css-u52dqk">
	</div>
	</div>
	
	<!-- 제약조건에 해당하면 사라지게 처리 -->
	<div class="css-shoa2s" id="emailMsg" style="display: none;">
	<p class="css-1ozil7i">이메일 형식으로 입력해 주세요.</p>
	</div>
	<!-- ======================= -->
	
	</div>
	<div class="css-1w0ksfz">
	<!-- 이메일 중복확인 버튼 -->
	<!-- 중복확인 후 사용하지 못하게 처리(색상변경) -->
	<button class="css-ufulao" id="emailCheckBtn" type="button" style="border-color: rgb(231, 129, 17);">
	<span class="css-nytqmg" id="emailCheckSpan" style="color: rgb(231, 129, 17);">중복확인</span>
	</button>
	</div>
	</div>
	<!-- 휴대폰 -->
	<div class="css-1pjgd36">
	<div class="css-1y8737n">
	<label class="css-1obgjqh">휴대폰
	<span class="css-qq9ke6">*</span>
	</label>
	</div>
	<div class="css-82a6rk">
	<div class="css-jmalg">
	<div class="css-176lya2">
	<!-- 휴대폰 데이터 -->
	<input data-testid="input-box" type="tel" id="mobileNumber" name="userPhonenum" placeholder="숫자만 입력해주세요." required class="css-u52dqk e1uzxhvi2">
	</div>
	</div>
	
	<!-- 휴대폰 11자리 입력 시 사라지게 처리 -->
	<div class="css-shoa2s" id="phoneInputMsg" style="display: none;">
	<p class="css-1ozil7i" id="phoneInputMsgP">휴대폰 번호 11자리를 입력해주세요</p>
	</div>
	
	</div>
	<!-- 인증번호 받기 버튼  -->
	<div class="css-1w0ksfz">
	<button class="css-ufulao" id="phoneNumberBtn" type="button" style="border-color: rgb(221, 221, 221);">
	<span class="css-nytqmg" id="phoneNumberSpan" style="color: rgb(221, 221, 221);">
	인증번호 받기</span>
	</button>
	</div>
	</div>
	
	<!-- 인증번호 확인 -->
	<div class="css-1pjgd36">
	<div class="css-82a6rk">
	<div class="css-jmalg">
	<div class="css-176lya2">
	<input data-testid="input-box" name="authCode" id="authenticationNum" type="text" required class="css-u52dqk" disabled>
	</div>
	</div>
	
	<!-- 인증번호 받기 클릭시 보임 -->
	<div class="css-shoa2s" id="authenticationNumMsg" style="display: none;">
	<p class="css-1ozil7i" id="authenticationNumP">인증번호를 입력 후 인증번호 확인을 눌러주세요</p>
	</div>
	
	</div>
	<div class="css-1w0ksfz">
	<!-- 인증번호 확인 버튼 -->
	<button class="css-ufulao" id="checkAuthenticationBtn" type="button" disabled style="border-color: rgb(221, 221, 221);">
	<span class="css-nytqmg" id="checkAuthenticationSpan" style="color: rgb(221, 221, 221);">인증번호 확인</span>
	</button>
	</div>
	</div>
	<!-- 인증번호 확인(끝) -->
	<!-- 주소 -->
	<div class="css-1pjgd36">
	<div class="css-1y8737n">
	<label class="css-1obgjqh">주소
	<span class="css-qq9ke6">*</span>
	</label>
	</div>
	<div class="css-82a6rk">
	<div class="css-1yjqrpx">
	<div class="css-176lya2">
	<!-- 주소 데이터 -->
	<input data-testid="input-box" id="numberAddress" name="address" placeholder="주소를 검색해 주세요" type="text" readonly class="css-u52dqk e1uzxhvi2">
	</div>
	</div>
	<div class="css-jmalg">
	<div class="css-176lya2">
	<!-- 상세주소 데이터 (주소 + 상세주소 데이터가 하나의 데이터로 넘어가야 함? 넘어가서 합치기) -->
	<input data-testid="input-box" id="subAddress" name="subAddress" placeholder="나머지 주소를 입력해주세요" type="text" class="css-u52dqk e1uzxhvi2">
	<!-- 주소와 상세주소의 하나의 문자열(데이터)로 넘어가야 함  -->
	<input type="hidden" name="userAddress" id="realUserAddress">
	</div>
	</div>
	</div>
	<div class="css-1w0ksfz">
	<!-- 주소 검색 버튼 -->
	<button class="css-ufulao" type="button" onclick="goDaumPostcode()">
	<span class="css-nytqmg">
	<img src="${pageContext.request.contextPath}/css/img/search.png" alt="주소 검색 돋보기" class="css-1m3kac1 e4nu7ef0">
	주소검색</span>
	</button>
	</div>
	</div>
	<!-- 성별 -->
	<div class="css-1pjgd36">
	<div class="css-1y8737n">
	<label class="css-1obgjqh">성별</label>
	<span class="css-qq9ke6">*</span>
	</div>
	<div class="css-82a6rk">
	<div class="css-14wodj6">
	<!-- radio 영역(시작) -->
	<label class="css-z9g6s0" for="gender-man">
	<!-- 성별 : 남자 -->
	<input data-testid="radio-MALE" value="MALE" id="gender-man" name="userGender" type="radio" class="css-1pes2r6">
	<span class="css-198i9ca">
	<div class="css-1dahn5m" style="background-color: white;"></div>
	</span>
	<span aria-labelledby="gender-man" class="css-mgd87h">남자</span>
	</label>
	
	<label class="css-z9g6s0" for="gender-woman">
	<!-- 성별 : 여자 -->
	<input data-testid="radio-FEMALE" value="FEMALE" id="gender-woman" name="userGender" type="radio" class="css-1pes2r6">
	<span class="css-198i9ca">
	<div class="css-1dahn5m"  style="background-color: white;"></div>
	</span>
	<span aria-labelledby="gender-woman" class="css-mgd87h">여자</span>
	</label>
	<label class="css-z9g6s0" for="gender-none">
	<!-- 성별 : 선택 안 함 -->
	<input data-testid="radio-NONE" value="NONE" id="gender-none" name="userGender" type="radio" class="css-1pes2r6" checked="checked">
	<span class="css-5xw1m2">
	<div class="css-1vic0rk"></div>
	</span>
	<span aria-labelledby="gender-none" class="css-mgd87h">선택안함</span>
	</label>
	<!-- radio 영역(끝) -->
	
	</div>
	</div>
	<div class="css-1w0ksfz"></div>
	</div>
	<!-- 생년월일 -->
	
	<div class="css-1pjgd36">
	<div class="css-1y8737n">
	<label class="css-1obgjqh">생년월일</label>
	<span class="css-qq9ke6">*</span>
	</div>
	
	<div class="css-82a6rk">
	<div class="css-82a6rk">
	<div class="css-18n8lnw">
	<input data-testid="input-box" name="userBirth" id="birthDayInput" type="date" class="css-151eme7">
	</div>
	</div>
	
	<!-- 만 14세 이상 시 사라지게 처리  -->
	<div class="css-shoa2s" id="birthInputMsg" style="display: none;">
	<p class="css-1ozil7i" id="birthInputMsgP">만 14세 미만은 가입이 불가합니다.</p>
	</div>
	</div>
	
	<div class="css-1w0ksfz"></div>
	</div>
	</div>
	<div class="css-1eo0fey"></div>
	<!-- 이용약관 동의 시작 -->
	<!-- 이용약관동의 라벨  -->
	<div class="css-y8aj3r">
	<div class="css-2yzr8b">
	<div class="css-1y8737n">
	<label class="css-1obgjqh">이용약관동의
	<span class="css-qq9ke6">*</span>
	</label>
	</div>
	<!-- 이용약관 감싸는 div -->
	<div class="css-82a6rk">
	<!-- 전체선택 -->
	<div class="css-ov2xfu">
	<div class="css-s5xdrg">
	<label class="css-1mjkje9" for="allselect">
	<input id="allselect" required  type="checkbox" class="css-agvwxo">
	<div class="css-79hxr7 e1dcessg1">
	<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
	<path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd" fill="rgb(231, 129, 17);"></path>
	<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
	</svg>
	</div>
	<span style="font-size: 16px; font-weight: bolder;">전체선택</span>
	</label>
	<span class="css-64z8en"></span>
	</div>
	<!-- 이용약관동의 (필수) -->
	<div class="css-ov2xfu">
	<div class="css-s5xdrg">
	<label class="css-1mjkje9" for="RequiredTermsCondition">
	<input id="RequiredTermsCondition" required  type="checkbox" class="css-agvwxo">
	<div class="css-79hxr7">
	<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
	<path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd" fill="rgb(231, 129, 17);"></path>
	<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
	</svg>
	</div>
	<span>이용약관 동의</span>
	</label>
	<span class="css-64z8en">(필수)</span>
	</div>
<!-- 	<a class="css-7chi73 e1sjmfnv3">약관보기</a> -->
	</div>
	<!-- 개인정보 수집/이용 동의(필수) -->
	<div class="css-ov2xfu">
	<div class="css-s5xdrg">
	<label class="css-1mjkje9" for="RequiredTermsOfPrivacy">
	<input id="RequiredTermsOfPrivacy" required type="checkbox" class="css-agvwxo">
	<div class="css-79hxr7">
	<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
	<path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd" fill="rgb(231, 129, 17);"></path>
	<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
	</svg>
	</div>
	<span>개인정보 수집∙이용 동의</span>
	</label>
	<span class="css-64z8en">(필수)</span>
	</div>
<!-- 	<a class="css-7chi73 e1sjmfnv3">약관보기</a> -->
	</div>
	<!-- 만14세 이상 (필수) -->
	<div class="css-ov2xfu">
	<div class="css-s5xdrg">
	<label class="css-1mjkje9" for="RequiredSignupAge">
	<input id="RequiredSignupAge" required type="checkbox" class="css-agvwxo">
	<div class="css-79hxr7">
	<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
	<path d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z" stroke="#ddd" fill="rgb(231, 129, 17);"></path>
	<path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
	</svg>
	</div>
	<span>본인은 만 14세 이상입니다.</span>
	</label>
	<span class="css-64z8en">(필수)</span>
	</div>
	</div>
	</div>
	</div>
	</div>
	<!-- 가입하기 버튼 -->
	<div class="css-ud3rkg">
	<button class="css-18m884r" id="joinBtn" type="button" width="240" height="56" radius="3" style="background-color: rgb(231, 129, 17);">
	<span class="css-nytqmgt">가입하기</span>
	</button>
	</div>
	</div>
	</div>
	</form>

<script>
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

//체크박스 색상 변경 처리 및 전체 선택 처리 --------------------------------------
const allSelectCheckbox = document.getElementById('allselect');
const otherCheckboxes = document.querySelectorAll('.css-ov2xfu input[type="checkbox"]:not(#allselect)');

const applyCheckboxColor = (checkbox, color) => {
    const circle = checkbox.parentNode.querySelector('svg');
    if (checkbox.checked) {
        circle.setAttribute('fill', color);
    } else {
        circle.setAttribute('fill', 'none');
    }
};

allSelectCheckbox.addEventListener('change', function() {
    otherCheckboxes.forEach(checkbox => {
        checkbox.checked = this.checked;
        applyCheckboxColor(checkbox, 'rgb(231, 129, 17)');
    });

    applyCheckboxColor(allSelectCheckbox, 'rgb(231, 129, 17)');
});

otherCheckboxes.forEach(checkbox => {
    checkbox.addEventListener('change', function() {
        const allSelected = [...otherCheckboxes].every(cb => cb.checked);
        allSelectCheckbox.checked = allSelected;

        applyCheckboxColor(checkbox, 'rgb(231, 129, 17)');
        applyCheckboxColor(allSelectCheckbox, 'rgb(231, 129, 17)');
    });
});
//인증번호 입력란 숫자만 & 최대 4글자 지정 -----------------------------



// 핸드폰 입력 숫자만 들어오게 처리 ------------------
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

// 비밀번호 및 비밀번호 확인 17자리 이상 입력 불가 처리 ---------------------------
const passwordInput = document.getElementById('password'); // 비밀번호 
const confirmPasswordInput = document.getElementById('passwordConfirm'); // 비밀번호 확인

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
const passwordConfirmMsg = document.getElementById('passwordConfirmMsg'); // 비밀번호 확인 제약조건 메세지

 function checkPasswords() {
	 if (passwordInput.value !== confirmPasswordInput.value) { // 작성한 비밀번호 입력 다를 경우 
         passwordConfirmMsg.style.display = 'block';// 보여좀
     } else { // 비밀번호 같을 경우 
         passwordConfirmMsg.style.display = 'none'; // 숨김
     }
}
 passwordInput.addEventListener('input', checkPasswords);
 confirmPasswordInput.addEventListener('input', checkPasswords);

//아이디 17자리 미만 처리 ----------------------------------
const memberIdInput = document.getElementById('memberId');
const idShowMessage = document.querySelector('.css-shoa2s');

memberIdInput.addEventListener('input', function(event) {
    if (event.target.value.length > 16) {
        event.target.value = event.target.value.slice(0, 16);
    }
 // 6자 이하 작성할 경우 , 한글 입력했을 경우 메세지 표시 
    if(event.target.value.length < 6 || /[ㄱ-ㅎㅏ-ㅣ가-힣]/.test(event.target.value)){ 
    	idShowMessage.style.display = 'block'; // 보여줌
    } else {
    	idShowMessage.style.display = 'none'; // 숨김
    }
});

// 이메일 형식 지키지 않았을 경우 메세지 표시 (형식에 맞으면 메세지 숨김) -------------
 const emailInput = document.getElementById('email'); // 이메일 
 const emailMsg = document.getElementById('emailMsg'); // 이메일 메세지
 
 function validateEmail(email) {
	  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; // 이메일 형식 검증 
      return emailRegex.test(email); 
 }
 emailInput.addEventListener('input', function () {
     if (!validateEmail(emailInput.value)) {
    	 emailMsg.style.display = 'block';
     } else {
    	 emailMsg.style.display = 'none';
     }
 });

// 생년월일 : 만 14세 이상만 가입하도록 설정 -----------------
// 함수: 주어진 날짜가 14세 이상인지 확인
function isOverFourteen(dateString) {
  const today = new Date();
  const birthDate = new Date(dateString);
  const diff = today - birthDate;
  const age = Math.floor(diff / (1000 * 60 * 60 * 24 * 365.25));
  return age >= 14;
}

// 함수: 날짜 입력 상태 확인 후 메시지 표시/숨김 처리
function toggleMessageDisplay() {
  const birthInput = document.getElementById('birthDayInput');
  const birthMsg = document.getElementById('birthInputMsg');

  if (isOverFourteen(birthInput.value)) {
    birthMsg.style.display = 'none'; // 14세 이상인 경우 메시지 숨김
  } else {
    birthMsg.style.display = 'block'; // 14세 미만인 경우 메시지 표시
  }
}

// 이벤트: 날짜 선택 시 메시지 확인 및 처리
document.getElementById('birthDayInput').addEventListener('change', toggleMessageDisplay); 

</script>
	
<!-- 카카오 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function goDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    //document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    //document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                //document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("numberAddress").value = addr; // 주소 
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("subAddress").focus(); // 상세주소 
            }
        }).open();
    }
    

</script>	
		
	
	<!-- ------------------------------------------------------------------------ -->
	<!-- footer -->
	<%@ include file="/css/headerFooter/shopFooter.jsp" %>
	<!-- ------------------------------------------------------------------------ -->

	<!-- 부트스트랩 -->
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>