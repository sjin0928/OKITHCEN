<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SellerLogin</title>
<!-- 메뉴바 외 코드 -->
	<link href="../css/cssStyle/style.css" rel="stylesheet" />
	<link href="../css/cssStyle/seller.css" rel="stylesheet" />
	<!-- 메뉴바 부트스트랩 템플릿 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
</head>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	function idCheck() {

		$.ajax({
			url: "sellerIdCheck.do",
			type: "post",
			dataType: "json",
			data: {"sellerId" : $("#sellerId").val()},
			success: function(result){
				
				if($("#sellerId").val().length < 5){
					$("#checkMessage").html("아이디는 5자리 이상 입력해주세요.");
					$("#checkMessage").addClass("Xmessage");
				} else if(result == 1) {
					$("#checkMessage").html("사용중인 아이디입니다. 다른 아이디를 입력해주세요.");
					$("#checkMessage").addClass("Xmessage");
				} else if (result == 0) {
					$("#checkMessage").html("사용 가능한 아이디입니다.");
					$("#checkMessage").addClass("Omessage");
				} else if (result == -1) {
					$("#checkMessage").html("아이디를 입력해주세요.");
					$("#checkMessage").addClass("Xmessage");
				}
			},
			error: function () {
				alert("서버 요청 실패 : 담당자에게 문의하세요");
		    }
		})
	}
	function passwordCheck(){
		if($("#sellerPassword").val() == "" || $("#confirmPassword").val() == ""){
			$("#pwCheckMessage").html("비밀번호를 입력해주세요");
			$("#pwCheckMessage").addClass("Xmessage");
			
		} else if ($("#sellerPassword").length < 8){
			$("#pwCheckMessage").html("비밀번호는 8자리 이상 입력해주세요.");
			$("#pwCheckMessage").addClass("Omessage");
			
		} else if ($("#sellerPassword").val() === $("#confirmPassword").val()){
			$("#pwCheckMessage").html("비밀번호가 일치합니다.");
			$("#pwCheckMessage").addClass("Omessage");
			
		} else {
			$("#pwCheckMessage").html("비밀번호가 일치하지않습니다.");
			$("#pwCheckMessage").addClass("Xmessage");
		}
		
	}
	function registNumCheck(){
		console.log($("#registNum").val());
		var data = {
			"b_no": [$("#registNum").val()]
		}; 
		 console.log(data);
		$.ajax({
		  url: "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=4M1CU2qRmz5HF8MFRnYeN7eWnlxOsAfb7jSRFHHwwHfp00QQ4d74%2Fxkx%2BihFQbredQ8iBL2VAFQuHoLvUs0Q1w%3D%3D",  // serviceKey 값을 xxxxxx에 입력
		  type: "POST",
		  data: JSON.stringify(data), // json 을 string으로 변환하여 전송
		  dataType: "JSON",
		  contentType: "application/json",
		  accept: "application/json",
		  success: function(result) {
				console.log(result.data[0].b_stt);
				if(result.data[0].b_stt == "계속사업자") {
					var html = result.data[0].b_stt + " : 가입 가능합니다.";
				} else {
					"가입 불가능합니다. 휴업이신 경우 등록 상태를 변경하신 후 진행 해주세요.";
				}
				$("#registCheckMessage").html(html);
		  },
		  error: function(result) {
		      console.log(result.responseText); //responseText의 에러메세지 확인
		      $("#registCheckMessage").html("담당자에게 문의하세요");
		  }
		});
	}
	
	function sellerCancle() {
		location.href = "../sellerLogin.jsp";
	}
</script>
<body>
<!-- header -->
<%@ include file="../../../../css/headerFooter/sellerHeader.jsp" %>

<!-- 각자 main에 들어갈 내용 작성 -->

<div class="container" style="text-align:center">
	<h2>파트너 회원가입</h2>
	<div class="sellerSignIn" id="sellerSignInfirstBox">
	<h6>개인 사업자</h6>
		- 사업자등록증 사본 1부(사업자등록증은 최근 1년 이내 발급)<br>
		- 대표자 혹은 사업자 명의 통장(또는 계좌개설 확인서, 온라인 통장 표지) 사본 1부<br>
		- 통신판매업 신고증 사본 1부<br>
		 (가입 후 okitchen@okitchen.com으로 파일 첨부 및  제목에 상호명, 아이디 기재하여 메일 송부 부탁드립니다.)<br>
	</div>
	<div class="sellerSignIn" >
	<h6>법인 사업자</h6>
		- 사업자등록증 사본 1부(사업자등록증은 최근 1년 이내 발급)<br>
		- 법인 명의 통장 사본 1부<br>
		- 통신판매업 신고증 사본 1부<br>
		(가입 후 okitchen@okitchen.com으로 파일 첨부 및  제목에 상호명, 아이디 기재하여 메일 송부 부탁드립니다.)<br>
	</div>
	<br><br>
	<form method="post">
		<div class="container" id="sellerSignInBox">
			<div class="input-group mb-3 SIinput">
				<div class="input-group-prepend">
					<span class="input-group-text signIn-text">&nbsp아이디</span>
				</div>
				<input type="text" class="form-control SignIninputBox" placeholder="아이디를 입력해주세요" id="sellerId" name="sellerId">
				<!-- <input type="submit" class="btn" id="sellerIdConfirmBtn" value="중복 확인" onclick="idCheck()"> -->
				<button class="btn" id="sellerIdConfirmBtn" type="button" onclick="idCheck()">중복확인</button><br>
			</div>
			<div id="messageBox">
				<span id="checkMessage"></span>
			</div>	
			<div class="input-group mb-3">
				<div class="input-group-prepend SIinput">
					<span class="input-group-text signIn-text">&nbsp비밀번호</span>
				</div>
				<input type="password" class="form-control SignIninputBox" placeholder="비밀번호를 입력해주세요" id="sellerPassword"name="sellerPassword" >
			</div>
			<div class="input-group mb-3 SIinput">
				<div class="input-group-prepend">
					<span class="input-group-text signIn-text">&nbsp비밀번호 확인</span>
				</div>
				<input type="password" class="form-control SignIninputBox" placeholder="비밀번호를 확인해주세요" name="confirmPassword"  id="confirmPassword">
				<button class="btn" id="sellerPwConfirmBtn" type="button" onclick="passwordCheck()">확인</button>
			</div>
			<div id="messageBox">
				<span id="pwCheckMessage"></span>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend SIinput">
					<span class="input-group-text signIn-text">&nbsp사업자등록번호</span>
				</div>
				<input type="text" class="form-control SignIninputBox" placeholder="사업자등록번호를 입력해주세요(숫자로  10자리 입력해주세요  '-' 제외)" id="registNum" name="registrationNum" >
				<button class="btn" id="sellerRegistConfirmBtn" type="button" onclick="registNumCheck()">확인</button>
			</div>
			<div id="messageBox">
				<span id="registCheckMessage"></span>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend SIinput">
					<span class="input-group-text signIn-text">&nbsp대표자명</span>
				</div>
				<input type="text" class="form-control SignIninputBox" placeholder="대표자명을 입력해주세요" id="representName" name="representative" >
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend SIinput">
					<span class="input-group-text signIn-text">&nbsp상호명</span>
				</div>
				<input type="text" class="form-control SignIninputBox" placeholder="상호명을 입력해주세요" id="companyName" name="companyName" >
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend SIinput">
					<span class="input-group-text signIn-text">&nbsp사업자유형</span>
				</div>
				<label class="typeLabel" for="corporation">법인</label><input type="radio" class="form-control" id="corporation" name="sellerType" value="법인">
				<label class="typeLabel" for="individual">개인</label><input type="radio" class="form-control" id="individual" name="sellerType" value="개인">
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend SIinput">
					<span class="input-group-text signIn-text">&nbsp이메일</span>
				</div>
				<input type="text" class="form-control SignIninputBox" placeholder="이메일을 입력해주세요" id="customerEmail" name="customerEmail" >
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend SIinput">
					<span class="input-group-text signIn-text">&nbsp대표 연락처</span>
				</div>
				<input type="text" class="form-control SignIninputBox" placeholder="대표 연락처를 입력해주세요" id="customerCenter" name="customerCenter" >
			</div>
			<input type="submit" class="btn" id="sellerLoginBtn" onclick="allCheck()" value="회원가입">
			<button type="button" class="btn" id="sellerCancle" onclick="sellerCancle()" value="취소"></button>
		</div>
	</form>
</div>

<!-- footer -->
<%@ include file="../../../../css/headerFooter/sellerFooter.jsp" %>

<script>
function allCheck() {
	/* 회원가입 시  ajax 사용하여 응답 후 실행
	*/
	$.ajax({
		url: "sellerSignIn.do",
		type: "post",
		dataType: "json",
		data: {"sellerId" : $("#sellerId").val()},
		success: function(result){
			
		},
		error: function(result) {
		      console.log(result.responseText); //responseText의 에러메세지 확인
		      if($("#sellerId").val() == "") {
					alert("아이디를 입력해주세요.");
				} else if ($("#checkMessage").html() != "사용 가능한 아이디입니다.") {
					alert("아이디 중복확인을 해주세요.");
				} else if ($("#sellerPassword").val() == "") {
					alert("비밀번호를 입력해주세요.");
				} else if($("#pwCheckMessage").html() != "비밀번호가 일치합니다.") {
					alert ("비밀번호 확인 버튼을 클릭해주세요.");
				} else if($("#registCheckMessage").html() != "계속사업자 : 가입 가능합니다.") {
					alert ("사업자등록번호 확인 버튼을 클릭해주세요.");
				} else if($("#representName").val() == "") {
					alert ("사업자명을 입력해주세요.");
				} else if($("#companyName").val() == "") {
					alert ("상호명을 입력해주세요.");
				} else if($("#corporation").val() == "" && $("#individual").val() == "") {
					alert ("사업자 유형을 선택해주세요.");
				} else if($("#customerEmail").val() == "") {
					alert ("이메일을 입력해주세요.");
				} else if($("#customerCenter").val() == "") {
					alert ("대표 연락처를 입력해주세요.");
				}
				 $("#sellerId").val($("#sellerId").val());
		  }
		});
	}
</script>
<!-- 부트스트랩 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>