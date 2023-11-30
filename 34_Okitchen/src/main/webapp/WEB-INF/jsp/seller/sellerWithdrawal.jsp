<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파트너 회원 탈퇴</title>
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
		if("${sellerVO.sellerId}" == ("") ||"${sellerVO.sellerId}" == (null)){
			alert("세션만료 : 다시 로그인 해주세요.")
			location.href="${pageContext.request.contextPath}/sellerLogin.jsp";
		}
	}
	function allCheck() {
  		
		if($("#sellerPassword").val() == "") {
			alert("비밀번호를 입력해주세요.");
			
		} else {
			console.log($("#sellerId").val());
			console.log($("#sellerPassword").val());
			var data = {
				sellerId : $("#sellerId").val(),
				sellerPassword : $("#sellerPassword").val()
			}; 
			$.ajax({
				url: "sellerWithdrawal.do", 
				type: "POST",
				data: JSON.stringify(data), // json 을 string으로 변환하여 전송
				contentType: "application/json",
				success: function(result) {
					console.log(result);
					if(result === 1){
						alert("회원 탈퇴 되었습니다. 감사합니다.");
						location.href = "${pageContext.request.contextPath}/sellerLogin.jsp";
					}
					else {
						alert("비밀번호가  틀렸습니다.");
					}
				}, 
				error: function() {
			 		alert("서버오류 : 담당자에게 문의하세요");
				}
			});
		}
	}
	
</script>
<body>

<!-- 각자 main에 들어갈 내용 작성 -->
<div class="container" style="text-align:center" id="sellerSignContainer">
	<h2>파트너 회원 탈퇴</h2>

	<form id="sellerWithdrawal" method="post" action="sellerWithdrawal.do">
		<div class="container" id="sellerSignInBox">
			<div class="input-group mb-3 SLinput">
				<div class="input-group-prepend">
					<span class="input-group-text signIn-text">&nbsp아이디</span>
				</div>
				<input type="text" class="form-control SignIninputBox" id="sellerId" name="sellerId" value="${sellerVO.sellerId }" readonly>
			</div>
			<div id="messageBox">
				<span id="checkMessage"></span>
			</div>	
			<div class="input-group mb-3 SLinput">
				<div class="input-group-prepend">
					<span class="input-group-text signIn-text">&nbsp비밀번호</span>
				</div>
				<input type="password" class="form-control SignIninputBox" placeholder="비밀번호를 입력해주세요(8~20자)" id="sellerPassword"name="sellerPassword" >
			</div>
			
			<input type="button" class="btn" id="sellerSigninBtn" onclick="allCheck()" value="회원 탈퇴">
		</div>
	</form>
	<div id="sellerCancleBox">
	<button class="btn" id="sellerCancle">취소</button>
	</div>
</div>
<script>
	$(document).ready(function() {
	    $("#sellerCancle").on("click", function() {
	    	location.href="../product/productList.do";
	    });
	});
</script>
	<!-- footer -->
	<%@ include file="../../../../css/headerFooter/sellerFooter.jsp" %>
	
</body>
</html>