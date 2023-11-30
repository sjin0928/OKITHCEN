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
	function cancelReview() {
	    alert('문의 수정을 취소합니다.');
	    
	    // 팝업창을 닫습니다.
	    window.close();
	  }
</script>
<style>
	 h4 { margin-top: 50px; }


	.product-container {
	  display: flex; /* Flexbox 레이아웃 사용 */
	  align-items: center;
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
	    margin-left: 23px;
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
	    margin-right: -77px;
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
		margin-top: 14.5px;
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
	    margin-right: -77px;
	}
</style>
<style type="text/css">
/* input 숨겨준다 */
input#check_btn{
  display:none;
  }

input#check_btn + label{
  cursor:pointer;
  width: 220px;
 }

input#check_btn + label > span{
  vertical-align: middle;
  padding-left: 16px;
 }

/* label:before에 체크하기 전 상태 CSS */
input#check_btn + label:before{
content: "";
    display: inline-block;
    width: 21px;
    height: 21px;
    border: 2px solid rgb(231, 129, 17);
    border-radius: 4px;
    vertical-align: middle;
    border-radius: 100px;
  }
  
/* label:before에 체크 된 상태 CSS */  
input#check_btn:checked + label:before{
    content: "";
    background-color: #F47C7C;
    border-color: #F47C7C;
    background-image: url(../productImage/checkbox.png);
    background-repeat: no-repeat;
    background-position: 50%;
    background-size: 32px;
    background-position-x: -7.3px;
  }
  label.inquiryContent {
  	margin-top: 67px;
    margin-left: -52px;
  }
  label.contentTitle {
  	margin-top: 5px;
  }

</style>
<script>
	
	//등록을 취소할때
	function cancelReview() {
	      // 여기에 취소 버튼 클릭 시 동작할 코드를 추가합니다.
	      alert('후기 작성을 취소합니다.');
	    }
	
	// 체크박스를 선택 안했을때 value값을 N으로 바꾸기
	function handleCheckbox() {
	    var checkbox = document.getElementById("check_btn");
	    var valueToSubmit = checkbox.checked ? "Y" : "N";
	    checkbox.value = valueToSubmit;
	}

</script>
</head>
<body>
	<h3>문의 수정</h3>
	<hr>
	<!-- 후기작성창에 상품정보띄우기 -->
	<div class="product-container">
	  <div class="image-container">
	    <img src="${pageContext.request.contextPath}/productImage/title/${product.image}" alt="상품 이미지" class="product-image">
	  </div>
	  <div class="text-container">
	    <p>[ ${product.brand} ] ${product.title}</p>
	  </div>
	</div>
	<hr>

	
	<!-- 후기 작성 폼 -->
	 <form action="inquiryUpdate.do?productId=${product.productId}&userId=${loginUser.userId}&inqId=${inquiry.inqId}" id="inquiryForm" method="POST" enctype="multipart/form-data">
	 
	 <div>	
	 	<div class="content">
			<label class="contentTitle" for="inqTitle">제목</label>
		</div>
		<div>
			<textarea id="contentTitle" name="inqTitle" required>${inquiry.inqTitle }</textarea>
		</div>
		<div class="content">
			<label class="inquiryContent" for="inqContent">내용</label>
		</div>
		<div>
			<textarea id="reviewContent" name="inqContent" required>${inquiry.inqContent }</textarea>
		</div>
	</div>
	

	
	<div class="content2">
	    	<!-- 비밀글 여부체크 -->
	    	<div class="check_wrap">
			  <input type="checkbox" id="check_btn" name="inqPrivate" value="Y" onchange="handleCheckbox()" />
			  <label for="check_btn"><span>비밀글로 문의하기</span></label>
			</div>
	</div>
	
	<div class="two-button">
	<button type="submit" class="btn btn-primary btn-lg">수정</button>
	<button type="button" class="btn btn-secondary btn-lg" onclick="cancelReview()">취소</button>
	</div>

	 </form>

</body>
</html>