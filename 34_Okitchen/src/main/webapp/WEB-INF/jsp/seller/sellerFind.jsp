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
	alert("idFind");
	var html = "";
	$("#id").html(html);
}
function pwFind() {
	alert("pwFind");
    var html = '<div class="input-group-prepend" >'
					+'<div class="input-group mb-3 SIinput">'
						+'<div class="input-group-prepend">'
							+'<span class="input-group-text signIn-text">&nbsp아이디</span>'
						+'</div>'
					+'<input type="text" class="form-control SignIninputBox" placeholder="아이디를 입력해주세요" id="sellerId" name="sellerId">'
					+'</div>'
				+'</div>';
	$("#id").html(html);
}
function sellerCancle() {
    // 취소 버튼을 눌렀을 때의 동작을 여기에 추가
    alert("취소 버튼이 클릭되었습니다.");

}

function allCheck() {
	var sellerId = $("#sellerId").val();
	if($("#sellerId").val() == "") {
		alert("아이디를 입력해주세요.");
	} else if($("#companyName").val() == "") {
		alert ("상호명을 입력해주세요.");
	} else if($("#customerEmail").val() == "") {
		alert ("이메일을 입력해주세요.");
	} else if($("#customerCenter").val() == "") {
		alert ("대표 연락처를 입력해주세요.");
	} else {
		$("#sellerFind").submit();
	}
}
</script>
<!-- header -->
<%@ include file="../../../../css/headerFooter/sellerLoginHeader.jsp" %>
<div class="container" style="text-align:center" id="sellerFindContainer">
	<h2>파트너 아이디 / 비밀번호 찾기</h2>
	<button class="btn" id="sellerSigninBtn" onclick="idFind()">아이디 찾기</button>
	<button class="btn" id="sellerSigninBtn" onclick="pwFind()">비밀번호 찾기</button>
	<form id="sellerFind" method="post" action="sellerFind.do">
		<div class="container" id="sellerSignInBox">
			<div class="input-group mb-3 SIinput" id="id">
				
					
				
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend SIinput">
					<span class="input-group-text signIn-text">&nbsp상호명</span>
				</div>
				<input type="text" class="form-control SignIninputBox" placeholder="상호명을 입력해주세요" id="companyName" name="companyName" >
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
			<input type="button" class="btn" id="sellerSigninBtn" onclick="sellerFind()" value="찾기">
		</div>
	</form>
	<div id="sellerCancleBox">
	<button class="btn" id="sellerCancle" onclick="sellerCancle()">취소</button>
	</div>
</div>
<!-- footer -->
<%@ include file="../../../../css/headerFooter/sellerFooter.jsp" %>


<!-- 부트스트랩 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

</body>
</html>