<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SellerLogin</title>
<!-- 메뉴바 외 코드 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/seller.css">
	<!-- 메뉴바 부트스트랩 템플릿 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
</head>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	function idCheck() {

		$.ajax({
			url: "sellerIdCheck.do",
			type: "POST",
			data: {"sellerId" : $("#sellerId").val()},
			success: function(result){
				var regex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]+$/;
				console.log(regex.test($("#sellerId").val()));
				if (!(regex.test($("#sellerId").val()))) {
					$("#checkMessage").removeClass("Omessage");
					$("#checkMessage").html("아이디는 영어, 숫자를 포함해야합니다.");
					$("#checkMessage").addClass("Xmessage");
				} else if($("#sellerId").val().length < 5 || $("#sellerId").val().length > 20){
					$("#checkMessage").removeClass("Omessage");
					$("#checkMessage").html("아이디는 5자리 이상 20자리 이하로 입력해주세요.");
					$("#checkMessage").addClass("Xmessage");
				} else if(result == 1) {
					$("#checkMessage").removeClass("Omessage");
					$("#checkMessage").html("사용중인 아이디입니다. 다른 아이디를 입력해주세요.");
					$("#checkMessage").addClass("Xmessage");
				} else if (result == 0 && regex.test($("#sellerId").val())) {
					$("#checkMessage").removeClass("Xmessage");
					$("#checkMessage").html("사용 가능한 아이디입니다.");
					$("#checkMessage").addClass("Omessage");
					$("#sellerId").prop("readonly", true);
				} else if (result == -1) {
					$("#checkMessage").removeClass("Omessage");
					$("#checkMessage").html("아이디를 입력해주세요.");
					$("#checkMessage").addClass("Xmessage");
				}
			},
			error: function (jqXHR, textStatus, errorThrown){
				console.log("HTTP 상태 코드: " + jqXHR.status);
		        console.log("서버 응답 내용: " + jqXHR.responseText);
		        console.log("에러 종류: " + textStatus);
		        console.log("에러 객체: ", errorThrown);
				alert("서버 요청 실패 : 담당자에게 문의하세요");
		    }
		});
	}
	function passwordCheck(){
		var regexPw = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]+$/;
		
		if (!regexPw.test($("#sellerPassword").val())){
			$("#pwCheckMessage").removeClass("Omessage");
			$("#pwCheckMessage").html("비밀번호는 영어, 숫자, 특수문자를 모두 포함해야 합니다.");
			$("#pwCheckMessage").addClass("Xmessage");
			
		} else if($("#sellerPassword").val() == "" || $("#confirmPassword").val() == ""){
			$("#pwCheckMessage").removeClass("Omessage");
			$("#pwCheckMessage").html("비밀번호, 비밀번호 확인을 입력해주세요");
			$("#pwCheckMessage").addClass("Xmessage");
			
		} else if ($("#sellerPassword").val().length < 8){
			$("#pwCheckMessage").removeClass("Omessage");
			$("#pwCheckMessage").html("비밀번호는 8자리 이상 입력해주세요.(최대 20자)");
			$("#pwCheckMessage").addClass("Xmessage");
			
		} else if ($("#sellerPassword").val().length > 20){
			$("#pwCheckMessage").removeClass("Omessage");
			$("#pwCheckMessage").html("비밀번호는 20자리 이하 입력해주세요.");
			$("#pwCheckMessage").addClass("Xmessage");

		} else if ($("#sellerPassword").val() === $("#confirmPassword").val()){
			$("#pwCheckMessage").removeClass("Xmessage");
			$("#pwCheckMessage").html("비밀번호가 일치합니다.");
			$("#pwCheckMessage").addClass("Omessage");
			$("#sellerPassword").prop("readonly", true);
			$("#confirmPassword").prop("readonly", true);
			
		} else if ($("#sellerPassword").val() != $("#confirmPassword").val()){
			$("#pwCheckMessage").removeClass("Omessage");
			$("#pwCheckMessage").html("비밀번호가 일치하지않습니다.");
			$("#pwCheckMessage").addClass("Xmessage");
		}
		
	}
	function registNumCheck(){
		console.log($("#registNum").val());
		var data = {
			"b_no": [$("#registNum").val().replace(/-/g, '')]
		}; 
		
		var data2 = {
				"registrationNum" : $("#registNum").val()
			}; 
		var regexRegistNum = /^[0-9]{3}-[0-9]{2}-[0-9]{5}$/;
		
		 console.log("data : " + data.b_no);
		 
		 if(!regexRegistNum.test($("#registNum").val())) {
			 	alert ("사업자등록번호의 입력 양식은 000-00-00000 입니다.");
		 } else {
			$.ajax({
			  url: "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=4M1CU2qRmz5HF8MFRnYeN7eWnlxOsAfb7jSRFHHwwHfp00QQ4d74%2Fxkx%2BihFQbredQ8iBL2VAFQuHoLvUs0Q1w%3D%3D",  // serviceKey 값을 xxxxxx에 입력
			  type: "POST",
			  data: JSON.stringify(data), // json 을 string으로 변환하여 전송
			  contentType: "application/json",
			  accept: "application/json",
			  success: function(result) {
				  
					$.ajax({
						url: "sellerFindregistNum.do?registrationNum=" + $("#registNum").val(),
						type : "POST",
						data: JSON.stringify(data2), // json 을 string으로 변환하여 전송
						contentType: "application/json",
						success: function(result2) {
							console.log("result : " + result2)
							
							console.log(result.data[0].b_stt);
							if(result2 == 0 && result.data[0].b_stt == "계속사업자") {
								var html = result.data[0].b_stt + " : 가입 가능합니다.";
								$("#registNum").prop("readonly", true);
								$("#registCheckMessage").addClass("Omessage");
							} else if (result2 == 1) {
								var html = "가입되어있는 사업자등록번호입니다. 아이디/비밀번호 찾기를 진행해주세요.";
								$("#registCheckMessage").addClass("Xmessage");
							} else {
								var html = "등록되어있지 않은 사업자등록번호 입니다. 휴업이신 경우 등록 상태를 변경하신 후 진행해주세요.";
								$("#registCheckMessage").addClass("Xmessage");
							}
							$("#registCheckMessage").html(html);
					
						},
						error: function (jqXHR, textStatus, errorThrown){
							console.log("HTTP 상태 코드: " + jqXHR.status);
					        console.log("서버 응답 내용: " + jqXHR.responseText);
					        console.log("에러 종류: " + textStatus);
					        console.log("에러 객체: ", errorThrown);
						}
					});
					
			  },
			  error: function(result) {
			      console.log(result.responseText); //responseText의 에러메세지 확인
			      $("#registCheckMessage").html("담당자에게 문의하세요");
			  }
			});
		 }
	}
	function validateForm() {
		var regexPhone1 = /^[0-9]{3}-[0-9]{3,4}-[0-9]{4}$/;
		var regexPhone2 = /^[0-9]{2}-[0-9]{4}-[0-9]{4}$/;
		var regexEmail = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
		var regexId = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]+$/;
		var regexPw= /^(?=.*[A-Za-z])(?=.*\d)(?=.*[!@#$%^&*()_+-=])[A-Za-z\d!@#$%^&*()_+-=]+$/;
		
		console.log(!regexPhone1.test($("#customerCenter").val()));
		console.log(!regexPhone2.test($("#customerCenter").val()));
		if(!regexId.test($("#sellerId").val())) {
			alert("아이디는 영어+숫자로 입력해주세요.(5~20자)");
			return false;
		} else if ($("#checkMessage").html() != "사용 가능한 아이디입니다.") {
			alert("아이디 중복확인을 해주세요.");
			return false;
		} else if (!regexPw.test($("#sellerPassword").val())) {
			alert("비밀번호는 영어, 숫자, 특수문자를 혼합하여 입력해주세요.(8~20자)");
			return false;
		} else if($("#pwCheckMessage").html() != "비밀번호가 일치합니다.") {
			alert ("비밀번호 확인 버튼을 클릭해주세요.");
			return false;
		} else if($("#registCheckMessage").html() != "계속사업자 : 가입 가능합니다.") {
			alert ("사업자등록번호 확인 버튼을 클릭해주세요.");
			return false;
		} else if($("input[name='sellerType']:checked").val() == "") {
			alert ("사업자 유형을 선택해주세요.");
			return false;
		} else if (!regexEmail.test($("#customerEmail").val())) {
			alert ("이메일 양식은 xxx@xxx.xxx입니다.");
			return false;
		} else if(!regexPhone1.test($("#customerCenter").val()) && !regexPhone2.test($("#customerCenter").val())) {
			alert ("연락처의 입력 양식은 000-0000-0000 or 000-000-0000 or 00-0000-0000 입니다.");
			return false;
		} else {
			return true;
		}
	}
	
	
</script>
<body>
<!-- header -->
<%@ include file="../../../../css/headerFooter/sellerHeader.jsp" %>

<!-- 각자 main에 들어갈 내용 작성 -->

<div class="container" style="text-align:center" id="sellerSignContainer">
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
	<form id="signIn" method="post" action="sellerSignIn.do" onsubmit="return validateForm()">
		<div class="container" id="sellerSignInBox">
			<div class="input-group mb-3 SIinput">
				<div class="input-group-prepend">
					<span class="input-group-text signIn-text">&nbsp아이디</span>
				</div>
				<input type="text" class="form-control SignIninputBox" placeholder="아이디를 입력해주세요(영어+숫자)"
					id="sellerId" name="sellerId" pattern="(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]+" required>
				<button class="btn" id="sellerIdConfirmBtn" type="button" onclick="idCheck()">중복확인</button><br>
			</div>
			<div id="messageBox">
				<span id="checkMessage"></span>
			</div>	
			<div class="input-group mb-3 SIinput">
				<div class="input-group-prepend">
					<span class="input-group-text signIn-text">&nbsp비밀번호</span>
				</div>
				<input type="password" class="form-control SignIninputBox" placeholder="비밀번호를 입력해주세요(영어 +숫자, 8~20자)"
					id="sellerPassword" name="sellerPassword" pattern="(?=.*[A-Za-z])(?=.*\d)(?=.*[!@#$%^&*()_+-=])[A-Za-z\d!@#$%^&*()_+-=]+" required>
			</div>
			<div class="input-group mb-3 SIinput">
				<div class="input-group-prepend">
					<span class="input-group-text signIn-text">&nbsp비밀번호 확인</span>
				</div>
				<input type="password" class="form-control SignIninputBox" placeholder="비밀번호를 확인해주세요"
					id="confirmPassword" name="confirmPassword" pattern="(?=.*[A-Za-z])(?=.*\d)(?=.*[!@#$%^&*()_+-=])[A-Za-z\d!@#$%^&*()_+-=]+" required>
				<button class="btn" id="sellerPwConfirmBtn" type="button" onclick="passwordCheck()">확인</button>
			</div>
			<div id="messageBox">
				<span id="pwCheckMessage"></span>
			</div>
			<div class="input-group mb-3 SIinput">
				<div class="input-group-prepend">
					<span class="input-group-text signIn-text">&nbsp사업자등록번호</span>
				</div>
				<input type="text" class="form-control SignIninputBox" placeholder="사업자등록번호를 입력해주세요(000-00-00000)" pattern="[0-9]{3}-[0-9]{2}-[0-9]{5}" id="registNum" name="registrationNum" required>
				<button class="btn" id="sellerRegistConfirmBtn" type="button" onclick="registNumCheck()">확인</button>
			</div>
			<div id="messageBox">
				<span id="registCheckMessage"></span>
			</div>
			<div class="input-group mb-3 SIinput">
				<div class="input-group-prepend">
					<span class="input-group-text signIn-text">&nbsp대표자명</span>
				</div>
				<input type="text" class="form-control SignIninputBox" placeholder="대표자명을 입력해주세요" id="representName" name="representative" required>
			</div>
			<div class="input-group mb-3 SIinput">
				<div class="input-group-prepend">
					<span class="input-group-text signIn-text">&nbsp상호명</span>
				</div>
				<input type="text" class="form-control SignIninputBox" placeholder="상호명을 입력해주세요" id="companyName" name="companyName" required>
			</div>
			<div class="input-group mb-3 SIinput sellerTypeBox">
				<div class="input-group-prepend">
					<span class="input-group-text signIn-text">&nbsp사업자유형</span>
				</div>
				<label class="typeLabel" for="corporation">법인</label><input type="radio" class="form-control" id="corporation" name="sellerType" value="법인" required>
				<label class="typeLabel" for="individual">개인</label><input type="radio" class="form-control" id="individual" name="sellerType" value="개인" required>
			</div>
			<div class="input-group mb-3 SIinput">
				<div class="input-group-prepend">
					<span class="input-group-text signIn-text">&nbsp이메일</span>
				</div>
				<input type="email" class="form-control SignIninputBox" placeholder="이메일을 입력해주세요(xx@xxx.xxx)" id="customerEmail" name="customerEmail" required>
			</div>
			<div class="input-group mb-3 SIinput">
				<div class="input-group-prepend">
					<span class="input-group-text signIn-text">&nbsp대표 연락처</span>
				</div>
				<input type="tel" class="form-control SignIninputBox" placeholder="대표 연락처를 입력해주세요(000-0000-0000 or 000-000-0000 or 00-0000-0000)" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}"  id="customerCenter" name="customerCenter" required>
			</div>
			<input type="submit" class="btn" id="sellerSigninBtn" value="회원가입">
		</div>
	</form>
	<hr>
	<div id="sellerCancleBox">
		<button class="btn" id="sellerCancle">취소</button>
	</div>
</div>
<script>
	$(document).ready(function() {
	    $("#sellerCancle").on("click", function() {
	    	location.href="${pageContext.request.contextPath}/sellerLogin.jsp"
	    });
	});
</script>
<!-- footer -->
<%@ include file="../../../../css/headerFooter/sellerFooter.jsp" %>

</body>
</html>