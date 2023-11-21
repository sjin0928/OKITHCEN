<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error</title>
</head>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	$(document).ready(function() {
		if("${sellerVO.sellerId}" === ""){
			alert("아이디를 입력해주세요");
			location.href="../sellerLogin.jsp";
		}
		if("${sellerVO.sellerPassword}" === ""){
			alert("비밀번호를 입력해주세요");
			location.href="../sellerLogin.jsp";
		}
	});
</script>
<body>
	
</body>
</html>