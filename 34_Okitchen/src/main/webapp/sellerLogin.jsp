<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<title>sellerLogin</title>
<!-- 메뉴바 외 코드 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/seller.css">
	<!-- 메뉴바 부트스트랩 템플릿 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
</head>

<body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
function login() {
	
	if($("#sellerIdIn").val() === "") {
		alert("아이디를 입력해주세요.");
	} else if ($("#sellerPwIn").val() === "") {
		alert("비밀번호를 입력해주세요.");
	} else {

		var data = {
			sellerId : $("#sellerIdIn").val(),
			sellerPassword : $("#sellerPwIn").val()
		}; 
		$.ajax({
			url: "${pageContext.request.contextPath}/seller/sellerLogin.do", 
			type: "POST",
			data: JSON.stringify(data), // json 을 string으로 변환하여 전송
			contentType: "application/json",
			success: function(response) {
				console.log(response);
				if(response != null && response != ""){
					alert(response + "님 환영합니다.");
					location.href = "${pageContext.request.contextPath}/product/productList.do";
				} else {
					alert("회원 정보가 없습니다.");
				}
			}, 
			error: function() {
		 		alert("로그인 실패 : 아이디와 비밀번호를 확인 후 입력해주세요.");
			}
		});
	}
}

</script>
<!-- header -->
	<%@ include file="css/headerFooter/sellerLoginHeader.jsp" %>

	<!-- 각자 main에 들어갈 내용 작성 -->
	<br>
	<div class="container" id="loginBox">
		<h2>파트너 로그인</h2>
		<form action="${pageContext.request.contextPath}/seller/sellerLogin.do" method="post">
			<div class="input-group mb-3 SLinput">
				<div class="input-group-prepend">
					<span class="input-group-text login-text">
					<i class="material-icons" style="font-size:20px;">account_box</i>&nbsp아이디
					</span>
				</div>
				<input type="text" class="form-control" placeholder="id" id="sellerIdIn" name="sellerId">
			</div>
			<div class="input-group mb-3 SLinput">
				<div class="input-group-prepend">
					<span class="input-group-text login-text">
					<i class="material-icons" style="font-size:20px;">lock</i>&nbsp비밀번호</span>
				</div>
				<input type="password" class="form-control" placeholder="password" id="sellerPwIn" name="sellerPassword" >
			</div>
			<div id="sellerFindIdGoBox">
				<a href="${pageContext.request.contextPath}/seller/sellerFindIdGo.do">아이디/비밀번호 찾기</a>
			</div>
			<input type="button" class="btn" id="sellerLoginBtn" value="로그인" onclick="login()">
		</form>
		<hr>
		<form action="${pageContext.request.contextPath}/seller/sellerSignIn.do" method="get">
			<input type="submit" class="btn" id="sellerSignIn" value="회원가입">
		</form>
		
	</div>
	
	<!-- footer -->
	<%@ include file="css/headerFooter/sellerFooter.jsp" %>

	<!-- 부트스트랩 -->
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>