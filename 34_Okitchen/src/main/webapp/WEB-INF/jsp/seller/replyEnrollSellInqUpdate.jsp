<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script>

	window.onload = function() {
		if("${sellerVO.sellerId}" === ("") ||"${sellerVO.sellerId}" === (null)){
			alert("세션만료 : 다시 로그인 해주세요.")
			location.href="${pageContext.request.contextPath}/sellerLogin.jsp";
		}
	}

	function cancelReview() {
	    alert('문의 답변 수정을 취소합니다.');
	    
	    // 팝업창을 닫습니다.
	    window.close();
	  }
</script>
<style>
	 	h4 { 
	 margin-top: 34px;
    margin-bottom: 34px;
    text-align: center;
	 }

	.product-container {
	  display: flex; /* Flexbox 레이아웃 사용 */
	}
	
	.image-container {
	  margin-right: 10px; /* 이미지와 텍스트 사이의 간격을 조절 */
	}
	
	.product-image {
	    max-width: 100px;
	    max-height: 100px;
	    margin-top: 7px;
	    width: 49px;
	    height: auto;
	    border-radius: 5px;
	}
	
	#inquiryForm {
      max-width: 600px;
    }

    #reviewContent {
	    height: 200px;
	    resize: none;
	    border-radius: 5px;
	    border-color: #0c0c0c52;
	    width: 95%;
	    margin-top: 30px;
	    float: right;
	    margin-right: -90px;
	}

 	#fileInput {
  	  	display: none;
  	}
  	.img-box {
		border: 1px solid #00000057;
	    width: 60px;
	    border-radius: 5px;
	    margin-top: 52px;
	    float: left;
	    margin-left: -100px;
  	}

  	.content { 
  		margin-top: 30px;
    	float: left;
   	 	margin-left: 20px;
  	 }
  	
  	.content2 {
	  	float: left;
	    width: 33%;
	    margin-top: 50px;
	    margin-left: 20px;
	}
  	
  	.btn.btn-primary.btn-lg { 
  		background-color: rgb(231, 129, 17);
  		border-color: rgb(231, 129, 17);
  	}
  	
  	.btn.btn-secondary.btn-lg {
  	  	background-color: transparent;
    	color: rgb(231, 129, 17);
    	border-color: rgb(231, 129, 17);
  	}
	
	.two-button {
		margin-left: 298px;
	    margin-top: 77px;
	    float: inline-start;
	    margin-bottom: 25px;
	}

	html {
		margin: 25px;
		margin-top: 35px;
	}
	p {
    	margin-top: 24.5px;
    	margin-left: 10px;
	}
	
	img {
		max-height: 136px;
		margin-top: 0px;
	}
	
	div.check_wrap {
		margin-left: 97px;
	    margin-top: -23px;
	}
	
	textarea#contentTitle {
		height: 37px;
	    resize: none;
	    border-radius: 5px;
	    border-color: #0c0c0c52;
	    width: 95%;
	    margin-top: 30px;
	    float: right;
	    margin-right: -90px;
	}
	#ansContent{
		height: 200px;
	    resize: none;
	    border-radius: 5px;
	    border-color: #0c0c0c52;
	    width: 95%;
	    margin-top: 30px;
	    float: right;
	    margin-right: -89px;
	    padding-left: 5px;
	}
	label{
		display: inline-block;
	    margin-bottom: 0.5rem;
	    margin-left: -7px;
	}
</style>

</head>
<body>
	<%
	//임의로 아이디값 세션에 넣어서 사용
	HttpSession session2 = request.getSession();
	String sellerId = "seller1"; // 임의 아이디 넣기
	session.setAttribute("sellerId", sellerId);
	
	sellerId = (String)session.getAttribute("sellerId");
	%>


	<h3>문의답변</h3>
	
	<hr>
	<!-- 후기작성창에 상품정보띄우기 -->
	<div class="product-container">
	  <div class="text-container">
	    <p>제목 :  [ ${ inquiry.inqTitle} ]</p>
	    <p>내용 :  ${ inquiry.inqContent}</p>
	  </div>
	</div>
	<hr>
	
	<div class="review-example">
	<h4>문의 답변 수정</h4>
	<hr>
	
	<!-- 후기 작성 폼 -->
	 <form action="inqAnsUpdate.do?inqId=${inquiry.inqId }" id="inquiryForm" method="POST" enctype="multipart/form-data">
	 
	 <div>	
		<div class="content">
			<label for="ansContent">수정 내용</label>
		</div>
		<div>
			<textarea id="ansContent" name="ansContent" rows="4" cols="50" required>${inquiryAns.ansContent }</textarea>
		</div>
	</div>
	
	<div>
	
	<div class="two-button">
	<button type="submit" class="btn btn-primary btn-lg">수정</button>
	<button type="button" class="btn btn-secondary btn-lg" onclick="cancelReview()">취소</button>
	</div>

	 </form>

</body>
</html>