<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디, 비밀번호 찾기</title>
<!-- 메뉴바 외 코드 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/seller.css">
<!-- 메뉴바 부트스트랩 템플릿 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>
<script>
function idFind() {
	location.href="sellerFindIdGo.do";
}
function pwFind() {
	location.href="sellerFindPwGo.do";
}
function sellerCancle() {
	location.href="sellerLogin.do";
}

</script>
<!-- header -->
<%@ include file="../../../../css/headerFooter/sellerHeader.jsp" %>
<div class="container" style="text-align:center" id="sellerFindContainer">
	<h2>파트너 아이디 / 비밀번호 찾기</h2>
	<button class="btn" id="sellerSigninBtn" onclick="idFind()">아이디 찾기</button>
	<button class="btn" id="sellerSigninBtn" onclick="pwFind()">비밀번호 찾기</button>
	
	<form id="sellerFind" method="post" action="sellerFindPw.do">
		<div class="container" id="sellerSignInBox">
			<div class="input-group mb-3 findInput SLinput" id="sellerIdFind">
				<div class="input-group-prepend" id="findInputId">
					<span class="input-group-text signIn-text">&nbsp아이디</span>
				</div>
				<input type="text" class="form-control SignIninputBox" placeholder="아이디를 입력해주세요" id="sellerId" name="sellerId" required>
			</div>
			<div class="input-group mb-3 findInput SLinput">
				<div class="input-group-prepend " id="findInputComName">
					<span class="input-group-text signIn-text">&nbsp상호명</span>
				</div>
				<input type="text" class="form-control SignIninputBox" placeholder="상호명을 입력해주세요" id="companyName" name="companyName" required>
			</div>

			<div class="input-group mb-3 findInput SLinput">
				<div class="input-group-prepend " id="findInputEmail">
					<span class="input-group-text signIn-text">&nbsp이메일</span>
				</div>
				<input type="text" class="form-control SignIninputBox" placeholder="이메일을 입력해주세요" id="customerEmail" name="customerEmail" required>
			</div>
			<div class="input-group mb-3 findInput SLinput">
				<div class="input-group-prepend" id="findInputRegistNum">
					<span class="input-group-text signIn-text">&nbsp사업자등록번호</span>
				</div>
				<input type="text" class="form-control SignIninputBox" placeholder="사업자등록번호를 입력해주세요(000-00-00000)" id="registNum" name="registrationNum" required>
			</div>
			<input type="submit" class="btn" id="sellerSigninBtn" onclick="sellerFind()" value="찾기">
		</div>
	</form>
	<div id="sellerCancleBox">
	<button class="btn" id="sellerCancle" onclick="sellerCancle()">취소</button>
	</div>
</div>
<!-- footer -->
<%@ include file="../../../../css/headerFooter/sellerFooter.jsp" %>

</body>
</html>