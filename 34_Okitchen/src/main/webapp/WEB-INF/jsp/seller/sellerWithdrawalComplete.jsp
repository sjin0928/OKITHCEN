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
<script>

	function allCheck() {
  
		if($("#sellerPassword").val() == "") {
			alert("비밀번호를 입력해주세요.");
		} else {
			$("#sellerUpdate").submit();
		}
			
	}
	
</script>
<body>

<!-- 각자 main에 들어갈 내용 작성 -->
<div class="container" style="text-align:center" id="sellerSignContainer">
	<h2>파트너 회원 정보 수정</h2>

	<form id="sellerUpdate" method="post" action="sellerUpPwCheck..do">
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
				<input type="password" class="form-control SignIninputBox" placeholder="비밀번호를 입력해주세요(8~20자)" id="sellerPassword"name="sellerPassword" >
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
	    	location.href="../product/productList.do";
	    });
	});
</script>
	<!-- footer -->
	<%@ include file="../../../../css/headerFooter/sellerFooter.jsp" %>
	
</body>
</html>