<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항(일반회원)</title>
	<!-- 메뉴바 외 코드 -->
	<link href="${pageContext.request.contextPath}/css/cssStyle/style.css" rel="stylesheet" />
	<!-- 로그인 css -->
	<link href="${pageContext.request.contextPath}/css/cssStyle/userMyPageStyle.css" rel="stylesheet" />
	<!-- 메뉴바 부트스트랩 템플릿 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
	<!-- jQuery import 스크립트  -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>	
	<!-- 챗봇 -->
	<%@ include file="../chatBot/kitchenChat.jsp" %>
 <script>
 
 	function goBack() {
        window.history.back();
    }
</script>
<style>
	.inner {
	width: 773px;
    margin: 0 auto;
    margin-right: 7px;
	}
	th {
		background-color: #f7f7f7;
		width: 138px;
		border-left: 1px solid rgb(0 0 0 / 14%);
	}
	.title {
		margin-bottom: 37px;
    	text-align: center;
    	color: #8a8f93;
	} 
	h3 {
		text-align: center;
    	margin-bottom: 16px;
	}
	.noticeContent{
	    height: 311px;
	    border-left: 1px solid rgb(0 0 0 / 14%);
   		border-right: 1px solid rgb(0 0 0 / 14%);
  		border-bottom: 1px solid rgb(0 0 0 / 14%);
	}
	.btn.btn-primary{
		background-color: rgb(231, 129, 17) !important;
    	border-radius: 5px;
    	padding-top: 9px;
	    padding-bottom: 9px;
	    padding-right: 14px;
	    padding-left: 14px;
	}
	.table td{
		border-right: 1px solid rgb(0 0 0 / 14%);
		border-bottom: 1px solid rgb(0 0 0 / 14%);
		    border-top: 1px solid rgb(0 0 0 / 14%);
		    border-left: 1px solid rgb(0 0 0 / 14%);
	}
	hr{
		border-color: rgb(0 0 0 / 41%);
	}
</style>
</head>
<body>

	<!-- header -->
	<%@ include file="../../../css/headerFooter/shopHeader.jsp" %>
	<!-- ------------------------------------------------------------------------ -->
	<%@ include file="../../../css/headerFooter/shopCustomerService.jsp" %>
	
	<!-- 여기 사이에 고객센터 본문내역 들어가야 함 -->
	
	
	
	<!-- 여기 사이에 고객센터 본문내역 들어가야 함 -->
<div class="inner">
	<h3>공지사항</h3>
	<div class="title">오키친의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</div>
	<hr>
	
	<table class="table">
	  <thead>
	    <tr>
	      <th scope="col">제목</th>
	      <td scope="col">${ noticeDetail.noticeTitle }</td>
	    </tr>
	        <tr>
	      <th scope="col">작성자</th>
	      <td scope="col">오키친</td>
	    </tr>
	        <tr>
	      <th scope="col">작성일</th>
	      <td scope="col">${ noticeDetail.noticeDate }</td>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <td class="noticeContent" scope="row" colspan="2">${ noticeDetail.noticeContent }</td>
	    </tr>
	  </tbody>
	</table>
        <div class="text-center">
            <button onclick="goBack()" class="btn btn-primary">뒤로가기</button>
        </div>

</div>


	</div>
	</div>
	<!-- ------------------------------------------------------------------------ -->
	<!-- footer -->
	<%@ include file="/css/headerFooter/shopFooter.jsp" %>
	<!-- ------------------------------------------------------------------------ -->

	<!-- 부트스트랩 -->
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>