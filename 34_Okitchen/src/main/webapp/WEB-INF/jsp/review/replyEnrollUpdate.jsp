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
<style>
	 h4 { margin-top: 50px; }
	 
	 .review-example {
	   text-align: center; /* 텍스트를 수평 가운데 정렬 */
	   margin: auto; /* 블록 요소를 수직 가운데 정렬 */
	   width: 90%; /* 필요에 따라 적절한 너비 지정 */
	 }
	.review-image {
  		margin-bottom: 50px;
  		width: 55%;
    	height: auto;
    	margin-bottom: 50px;
    	margin-top: 20px;
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
	    margin-left: 23px;
	}
	
	#reviewForm {
      max-width: 600px;
    }

    #imagePreview {
      max-width: 100%;
      height: auto;
      margin-top: 10px;
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
 	img {
	  	max-height: 100px; /* 이미지의 최대 높이 */
	 	margin-top: 7px;
    	height: 230px;
	}
	
	  /* 카메라 아이콘 */
  	#cameraIcon {
   		cursor: pointer;
   		width: 40px;
    	height: 40px;
    	margin-left: 8px;
    	margin-bottom: 2px;
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
  	.upload-image {
	    max-height: 100px;
	    max-width: 100px;
	    overflow: hidden;
	    float: left;
	    margin-top: 52px;
	    border-style: groove;
	    border-color: #d3d3d336;
	    border-radius: 5px;
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
    	margin-top: 80px;
    	float: inline-start;
    	margin-bottom: 25px;
	}

	html {
		margin: 25px;
	}
	
	p {
    	margin-top: 24.5px;
    	margin-left: 10px;
	}
	
	img {
		max-height: 136px;
		margin-top: 0px;
	}
</style>
<script>
	function cancelReview() {
	    alert('후기 수정을 취소합니다.');
	    
	    // 팝업창을 닫습니다.
	    window.close();
	}
	
	//리뷰사진 등록 시 미리보기
	function setThumbnail(event) {
        var reader = new FileReader();

        reader.onload = function(event) {
          var img = document.createElement("img");
          img.setAttribute("src", event.target.result);
          img.style.Width = "30px"; // 최대 너비
          img.style.Height = "30px"; // 최대 높이
          document.querySelector("div#image_container").appendChild(img);
        };

        reader.readAsDataURL(event.target.files[0]);
      }
	
	  // 카메라 아이콘이 클릭되었을 때 파일 업로드 실행
	  function triggerFileUpload() {
	    document.getElementById('fileInput').click();
	  }
	

</script>
</head>
<body>
	<h3>후기수정</h3>
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
	
	<div class="review-example">
	<h4>후기는 이렇게 작성해보세요</h4>
	<div>제품의 맛, 향, 크기, 사용감 등을 설명해주세요</div>
	<div>좋았던 점, 아쉬웠던 점도 솔직하게 얘기해주세요</div>
	<img src="${pageContext.request.contextPath}/productImage/리뷰 설명.png" alt="후기예시" class="review-image">
	</div>
	<hr>
	
	<!-- 후기 작성 폼 -->
	 <form action="reviewUpdate.do?productId=${product.productId}&orderDetailId=${ orderDetailId }&userId=${loginUser.userId}" id="reviewForm" method="POST" enctype="multipart/form-data">
	 
	 <div>	
		<div class="content">
			<label for="reviewContent">내용</label>
		</div>
		<div>
			<textarea id="reviewContent" name="reviewContent" rows="4" cols="50">${reviewView.reviewContent }</textarea>
		</div>
	</div>
	
	<div>
	<div class="content2">사진첨부</div>
		<div>	
	    	<!-- 파일 업로드 버튼 대신 카메라 아이콘 사용 -->
	    	<div class="img-box">
	    	<img id="cameraIcon" src="${pageContext.request.contextPath}/productImage/리뷰사진.png" alt="카메라 아이콘" onclick="triggerFileUpload()">
	    	<input type="file" id="fileInput" name="uploadFile" accept="image/*" onchange="setThumbnail(event);" />
	    	</div>
	    	<div id="image_container" class="upload-image"></div>
		</div>
	</div>
	
	<div class="two-button">
	<button type="submit" class="btn btn-primary btn-lg">수정</button>
	<button type="button" class="btn btn-secondary btn-lg" onclick="cancelReview()">취소</button>
	</div>

	 </form>

</body>
</html>