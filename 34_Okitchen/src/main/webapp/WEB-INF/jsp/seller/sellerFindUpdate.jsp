<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sellerFindResult</title>
<!-- 메뉴바 외 코드 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/seller.css">
	<!-- 메뉴바 부트스트랩 템플릿 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
</head>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
function passwordCheck(){
	if($("#sellerPassword").val() == "" || $("#confirmPassword").val() == ""){
		$("#pwCheckMessage").html("비밀번호, 비밀번호 확인을 입력해주세요");
		$("#pwCheckMessage").addClass("Xmessage");
		
	} else if ($("#sellerPassword").val().length < 8){
		$("#pwCheckMessage").html("비밀번호는 8자리 이상 입력해주세요.(최대 20자)");
		$("#pwCheckMessage").addClass("Xmessage");
		
	} else if ($("#sellerPassword").val().length > 20){
		$("#pwCheckMessage").html("비밀번호는 20자리 이하 입력해주세요.");
		$("#pwCheckMessage").addClass("Xmessage");
		
	} else if ($("#sellerPassword").val() === $("#confirmPassword").val()){
		$("#pwCheckMessage").html("비밀번호가 일치합니다.");
		$("#pwCheckMessage").addClass("Omessage");
		
	} else if ($("#sellerPassword").val() != $("#confirmPassword").val()){
		$("#pwCheckMessage").html("비밀번호가 일치하지않습니다.");
		$("#pwCheckMessage").addClass("Xmessage");
	}
}

function check() {
	if ($("#sellerPassword").val() == "") {
		alert("비밀번호를 입력해주세요.");
	} else if($("#pwCheckMessage").html() != "비밀번호가 일치합니다.") {
		alert ("비밀번호 확인 버튼을 클릭해주세요.");
	} else {
		$("#passwordUpdate").submit();
	}
		
}

</script>
</script>
</head>
<body>
<!-- header -->
<%@ include file="../../../../css/headerFooter/sellerHeader.jsp" %>

<!-- 각자 main에 들어갈 내용 작성 -->

<div class="container" style="text-align:center">
	<br><br>
	<div>
		<p>비밀번호를 변경해주세요</p>
		<form id="passwordUpdate" method="post" action="sellerPwUpdate.do">
			<div class="input-group mb-3">
				<div class="input-group-prepend SIinput">
					<span class="input-group-text signIn-text">&nbsp비밀번호</span>
				</div>
				<input type="password" class="form-control SignIninputBox" placeholder="비밀번호를 입력해주세요(8~20자)" id="sellerPassword"name="sellerPassword" >
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
			<input type="button" class="btn" id="sellerSigninBtn" onclick="check()" value="변경">
		</form>
		
	</div>
	<br><br>
	<div>
	<button class="btn" id="sellerLoginBtn">이전</button>
	</div>
</div>
<script>
	$(document).ready(function() {
	    $("#sellerLoginBtn").on("click", function() {
	    	window.history.back();
	    });
	});
</script>
<!-- footer -->
<%@ include file="../../../../css/headerFooter/sellerFooter.jsp" %>

</body>
</html>