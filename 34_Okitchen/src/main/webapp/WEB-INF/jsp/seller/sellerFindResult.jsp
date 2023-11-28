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
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>

<body>
<!-- header -->
<%@ include file="../../../../css/headerFooter/sellerHeader.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 각자 main에 들어갈 내용 작성 -->

<div class="container" style="text-align:center">
	<br><br>
	<div class="SLinput">
		<c:if test="${!empty sellerId }">
			<p>조회하신 ID 입니다.</p>
			<p>id : ${sellerId}</p>
		</c:if>
		<c:if test="${empty sellerId }">
			<p>일치하는 정보가 없습니다.</p>
			<p>정보를 확인하신 후 다시 입력해주세요.</p>
		</c:if>
	
		<br>
		<hr>
		<div id="sellerCancleBox">
		<button class="btn" id="sellerLoginBtn">이전</button>
		</div>
	</div>
</div>
<br>
<script>
	$(document).ready(function() {
	    $("#sellerLoginBtn").on("click", function() {
	    	location.href="${pageContext.request.contextPath}/seller/sellerFindIdGo.do";
	    });
	});
</script>
<!-- footer -->
<%@ include file="../../../../css/headerFooter/sellerFooter.jsp" %>

</body>
</html>