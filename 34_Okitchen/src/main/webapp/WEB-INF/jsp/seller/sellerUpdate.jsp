<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파트너 회원 정보 수정</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/seller.css">
	<!-- 메뉴바 부트스트랩 템플릿 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
</head>
<body>
<!-- header -->
<%@ include file="../../../../css/headerFooter/sellerLogoutHeader.jsp" %>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	window.onload = function() {
		if("${sellerVO}" == ("") ||"${sellerVO}" == (null)){
			alert("세션만료 : 다시 로그인 해주세요.")
			location.href="${pageContext.request.contextPath}/sellerLogin.jsp";
		}
	}
	function passwordCheck(){
		if($("#sellerPassword").val() == "" || $("#confirmPassword").val() == ""){
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
			
		} else if ($("#sellerPassword").val() != $("#confirmPassword").val()){
			$("#pwCheckMessage").removeClass("Omessage");
			$("#pwCheckMessage").html("비밀번호가 일치하지않습니다.");
			$("#pwCheckMessage").addClass("Xmessage");
		}
	}

	function allCheck() {
  
		if($("#sellerPassword").val() == "") {
			alert("비밀번호를 입력해주세요.");
		} else if($("#pwCheckMessage").html() != "비밀번호가 일치합니다.") {
			alert ("비밀번호 확인 버튼을 클릭해주세요.");
		} else if($("#customerEmail").val() == "") {
			alert ("이메일을 입력해주세요.");
		} else if($("#customerCenter").val() == "") {
			alert ("대표 연락처를 입력해주세요.");
		} else {
			console.log($("#sellerPassword").val(), $("#customerEmail").val(),$("#customerCenter").val());
			var data = {
				sellerId: "${sellerVO.sellerId}",
				sellerPassword : $("#sellerPassword").val(),
				customerEmail : $("#customerEmail").val(),
				customerCenter : $("#customerCenter").val()
			}
			console.log(data);
			$.ajax({
				url: "sellerUpdate.do",
				type: "POST",
				data: JSON.stringify(data),
				contentType: "application/json",
				success: function (response) {
					alert("정보 수정 되었습니다.");
					location.href="sellerUpdateGo.do";
					
				},
				error: function (jqXHR, textStatus, errorThrown){
					console.log("HTTP 상태 코드: " + jqXHR.status);
			        console.log("서버 응답 내용: " + jqXHR.responseText);
			        console.log("에러 종류: " + textStatus);
			        console.log("에러 객체: ", errorThrown);
					alert("정보 수정 오류 : 담당자에게 문의주세요.");
				}	
				
			});
		}		
	}
	
</script>
<body>

<!-- 각자 main에 들어갈 내용 작성 -->
<div class="container" style="text-align:center" id="sellerSignContainer">
	<h2>파트너 회원 정보 수정</h2>
	<h6>[사업자 정보 수정은 사업자등록증을 okithcen@ockithen.com으로 메일 발송 후 연락부탁드립니다.]</h6>
	<form id="sellerUpdate" method="post" action="sellerUpdate.do">
		<div class="container" id="sellerSignInBox">
			<div class="input-group mb-3">
				<div class="input-group-prepend SIinput">
					<span class="input-group-text signIn-text">&nbsp아이디</span>
				</div>
				<input type="text" class="form-control SignIninputBox" id="sellerId" name="sellerId" value="${sellerVO.sellerId }" disabled>
			</div>
			<div id="messageBox">
				<span id="checkMessage"></span>
			</div>	
			<div class="input-group mb-3">
				<div class="input-group-prepend SIinput">
					<span class="input-group-text signIn-text">&nbsp비밀번호</span>
				</div>
				<input type="password" class="form-control SignIninputBox" placeholder="비밀번호를 입력해주세요(8~20자)" id="sellerPassword"name="sellerPassword">
			</div>
			<div class="input-group mb-3 SIinput">
				<div class="input-group-prepend">
					<span class="input-group-text signIn-text">&nbsp비밀번호 확인</span>
				</div>
				<input type="password" class="form-control SignIninputBox" placeholder="비밀번호를 확인해주세요" id="confirmPassword" name="confirmPassword">
				<button class="btn" id="sellerPwConfirmBtn" type="button" onclick="passwordCheck()">확인</button>
			</div>
			<div id="messageBox">
				<span id="pwCheckMessage"></span>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend SIinput">
					<span class="input-group-text signIn-text">&nbsp사업자등록번호</span>
				</div>
				<input type="text" class="form-control SignIninputBox" id="registNum" name="registrationNum" value="${sellerVO.registrationNum }" disabled>
			</div>
			<div id="messageBox">
				<span id="registCheckMessage"></span>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend SIinput">
					<span class="input-group-text signIn-text">&nbsp대표자명</span>
				</div>
				<input type="text" class="form-control SignIninputBox" id="representName" name="representative" value="${sellerVO.representative }" disabled>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend SIinput">
					<span class="input-group-text signIn-text">&nbsp상호명</span>
				</div>
				<input type="text" class="form-control SignIninputBox" placeholder="상호명을 입력해주세요" id="companyName" name="companyName"
						value="${sellerVO.companyName }" disabled>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend SIinput">
					<span class="input-group-text signIn-text">&nbsp사업자유형</span>
				</div>
				<label class="typeLabel" for="corporation">법인</label><input type="radio" class="form-control" id="corporation" name="sellerType"
						value="법인 " ${sellerVO.sellerType eq '법인' ? 'checked' : ''} disabled>
				<label class="typeLabel" for="individual">개인</label><input type="radio" class="form-control" id="individual" name="sellerType" 
						value="개인" ${sellerVO.sellerType eq '개인' ? 'checked' : ''} disabled>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend SIinput">
					<span class="input-group-text signIn-text">&nbsp이메일</span>
				</div>
				<input type="email" class="form-control SignIninputBox" placeholder="이메일을 입력해주세요" id="customerEmail" name="customerEmail"
						value="${sellerVO.customerEmail }">
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend SIinput">
					<span class="input-group-text signIn-text">&nbsp대표 연락처</span>
				</div>
				<input type="text" class="form-control SignIninputBox" placeholder="대표 연락처를 입력해주세요" id="customerCenter" name="customerCenter"
						value="${sellerVO.customerCenter }">
			</div>
			<input type="button" class="btn" id="sellerSigninBtn" onclick="allCheck()" value="정보 수정">
		</div>
	</form>
	<div id="sellerCancleBox">
	<button class="btn" id="sellerCancle">취소</button>
	</div>
</div>
<script>
	$(document).ready(function() {
	    $("#sellerCancle").on("click", function() {
	    	location.href="productList.do";
	    });
	});
	
</script>
	<!-- footer -->
	<%@ include file="../../../../css/headerFooter/sellerFooter.jsp" %>
	
</body>
</html>
