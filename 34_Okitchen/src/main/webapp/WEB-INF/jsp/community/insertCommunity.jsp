<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 커뮤니티 작성하기 [uploadCommunity.jsp]</title>

	<!-- 부트스트랩 CSS 추가 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	
	<!-- 메뉴바 외 코드 -->
	<link href="${pageContext.request.contextPath}/css/cssStyle/style.css" rel="stylesheet" /> <!-- 다른 곳 복사 -->
	<!-- 메뉴바 부트스트랩 템플릿 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">

</head>
<style>

/*------------------------------------------------ 첨부파일 내역 조회 컨테이너 CSS---------------------------------------------------------------------*/
.insert {
    padding: 20px 20px;
    display: block;
    width: 80%;
    /* margin: 5vh auto; */
    height: 28vh;
    border: 1px solid #dbdbdb;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.insert .file-list {
    height: 200px;
    overflow: auto;
    border: 1px solid #989898;
    padding: 10px;
}
.insert .file-list .filebox p {
    font-size: 14px;
    margin-top: 10px;
    display: inline-block;
}
.insert .file-list .filebox .delete i{
	font-size: 24px;
    color: #ff5353;
    margin-left: 5px;
} 



/*-------------------------------------- 아이콘 CSS ------------------------------------------------ */
	#commimageInputIcon {
	    color: black; /* 세미콜론 추가 */
	    text-decoration: none;
	    border: none;
	    padding: 10px 20px;
	    cursor: pointer;
	    font-size: 30px;
	}
	#recipePhotoInputBtnIcon {
	    color: black; /* 세미콜론 추가 */
	    text-decoration: none;
	    border: none;
	    padding: 10px 20px;
	    cursor: pointer;
	    font-size: 30px;
	}
	
	#commimageInputIcon:hover {
	    border-color: black;
	    color: rgb(231, 129, 17);
	    padding: 10px 20px;
	    cursor: pointer;
	    font-size: 40px;
	}
	#recipePhotoInputBtnIcon:hover {
	    border-color: black;
	    color: rgb(231, 129, 17);
	    padding: 10px 20px;
	    cursor: pointer;
	    font-size: 40px;
	}


/* GPT가 만들어줌 */
/*------------------------------------------------ 전체나눔 시작 ---------------------------------------------------------------------*/
body {
    display: flex;
    flex-direction: column;
    align-items: center;
    font-family: 'Arial', sans-serif;
    margin: 0;
}

#photoContainer,
#contentContainer {
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 80%;
    margin: 20px auto;
    
    display: flex;
    flex-direction: column;
    align-items: center;
    border: 1px solid #ddd; /* Add border style */
    padding: 10px; /* Add padding as needed */
    background-color: #fffcf7;
}
    
}

#contentTitleArea,
#contentTextArea,
#productArea {
    width: 100%;
    margin-bottom: 20px;
}
/*------------------------------------------상품.검색 관련 CSS-------------------------*/
#productArea {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

#productInfoArea {
    display: flex;
    flex-direction: column-reverse;
}

#productInfoArea div {
    margin-right: 10px;
}

#productTitle {
    margin-bottom: 10px; /* Add margin to separate the product name and the search button */
}

#productSearchArea {
    display: flex;
    flex-direction: column; /* Display the search button below the product name */
    align-items: flex-end; /* Align the search button to the right */
}


/*---------------------------------- 작성자 표시 공간 ------------------------------------------------- */
.show-name-area p {
    margin: 0;
}

/*---------------------------------- 게시물 제목 공간 ------------------------------------------------- */
#contentTitleArea p {
    margin: 0;
}

#contentTitle {
    width: 100%;
    padding: 8px;
    box-sizing: border-box;
}

/*---------------------------------- 게시물 내용 공간 ------------------------------------------------- */
#contentTextArea textarea {
    width: 100%;
    padding: 8px;
    box-sizing: border-box;
    border-radius: 10px; /* 테두리 모서리 둥글게 설정 */
    resize: none;
}





/*---------------------------------- 상품소개 공간 ------------------------------------------------- */
#productArea {
    display: flex;
    flex-direction: column;
    align-items: center;
}

#productInfoArea,
#productSearchArea {
    width: 100%;
    margin-top: 20px;
}

#productInfoArea img {
    max-width: 100%;
    /* margin-top: 10px; */
}

#productSearchButton {
    padding: 10px;
    cursor: pointer;
    background-color: rgb(231, 129, 17);
    color: white;
    border: none;
    border-radius: 5px;
}

#productSearchButton:hover {
    background-color: #0056b3;
}

/*--------------------------------- 미리보기 꾸미기 ------------------------------------------------*/
#viewImageFile {
	width: 400px;
	height: 300px;
    border: 1px solid #ddd;
    padding: 5px;
    box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
    background-color: white;
    display: flex;
    align-items: center;
    justify-content: center;
}

#viewImageFile img {
    max-width: 100%;
    max-height: 100%;
    object-fit: contain; /* Maintain aspect ratio */
}



#image{
    height: 200px;
    border: 1px solid #ddd;
    padding: 5px;
    box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
    background-color: white;
    display: flex;
    align-items: center;
    justify-content: center;
}

#image img {
    max-width: 100%;
    max-height: 100%;
    object-fit: contain; /* Maintain aspect ratio */
}

/*등록버튼*/
#submitButton {
	background-color: rgb(231, 129, 17);
    align-self: flex-end; /* 등록 버튼을 컨테이너의 오른쪽에 정렬 */
    margin-right: 20px; /* 오른쪽 여백 추가 */
    border-radius: 5px;
}


/* 미업로드 게시물 빨간 보더 */
.product-pic red-border,
.img-thumbnail red-border {
	border: 1px solid red;
}

.error-message {
	color: red;
    display: none;
    font-size: 13px;
}

.item-value {
	width: 400px;
}
.submit-button-area{
    display: flex;
    width: 88px;
    flex-direction: row;
    justify-content: flex-end;
}

#productSearchArea {
    display: flex;
    flex-direction: row;
    justify-content: space-around;
}


</style>
<script>
	
// -------------------------------------  송신 : 게시물 작성 끝--------------------------------------------

	$(document).ready(function() {
		
	    $('#submitButton').on('click', function () {
	        alert("게시물을 업로드합니다");
	        
	        let mainImgCheck = $('#viewImageFile').attr('src'); //$('#viewImageFile img')라고 하면 img만 검사하게된다.
	        
	        if (mainImgCheck === undefined || mainImgCheck === null || mainImgCheck === "") {
	        	alert("대표 이미지가 없습니다. 이미지를 등록해 주세요.")
	        	return false;
	        }
	        
	        let productImgCheck = $('#productTitle').val();
	        
	        if (productImgCheck === null || productImgCheck === "") {
	        	alert("상품이 등록되지 않았습니다. \n상품을 검색후 등록해 주세요.")
	        	return false;
	        }
	        
	        let checkTitle = $('#contentTitle').val();
	        let titleError = $('.error-message');

	        if (!checkTitle.trim()) {
	            titleError.css('display', 'block');
	            return false;
	        } else {
	            titleError.css('display', 'none');
	        }
	        
	        
	
	        submitForm();
	    });
	
	    function submitForm() {
	        // Your form submission logic here
	        $('#postForm').submit();
	    }
	});
	    
// ------------------------------------- 사진 배경 클릭시 사진 업로드 함수 호출 -----------------------------------------------
	function openFileInput(element) {
		console.log("openFileInput(element) 실행");
    	document.querySelector('.photo-class').click();
	}


//--------------------------------- 대표 이미지 업로드 미리보기 -----------------------------------------

	function previewImage(event) {
	     var preview = document.getElementById('viewImageFile');
	     var fileInput = event.target;
	     var file = fileInput.files[0];
	
	     if (file) {
	         var reader = new FileReader();
	
	         reader.onload = function(e) {
	             preview.src = e.target.result;
	         };
	
	         reader.readAsDataURL(file);
	     }
	}

	
        
//-------------------------------아이콘으로 함수 기능 대체------------------------------------
	function commimageInputFileInput() {
	    document.getElementById('commimageInput').click();
	    
	}
 
	function productPhotoFileInput() {
		document.getElementById('recipePhotoInputBtn').click();
	}	
 
 

</script>

<body>
	<header>
	<!-- header -->
	<%@ include file="../../../css/headerFooter/shopHeader.jsp" %> <!-- 다른 곳 복사 -->
	<!-- ------------------------------------------------------------------------ -->
	<br><br><br><br>
	</header>
	
	
	<form id="postForm" action="/biz/community/insertCommunity.do" method="POST" enctype="multipart/form-data">
	    <div> <!-- 전체나눔 시작 -->
	    	<div id="photoContainer"> <!-- 사진 미리보기 공간 -->
	    		<div id="previewImageFile"> <!-- 대표사진 공간 --> <!-- 대표사진 없으면 등록 안되게 하는 코드 추가필요 (11/12) -->
	    			<div>
	    				<img id="viewImageFile"  src="" class="img-thumbnail" alt="대표사진 미리보기" role="button" onclick="commimageInputFileInput()">
	    			</div>
	    		</div> <!-- 대표사진 공간 끝 -->
	    	
	    		<div class="select-photos" >
		    		<input type="file" id="commimageInput" accept="image/*" name="imageFile" style="display: none"  onchange="previewImage(event)" ><p>
	    		</div>
	    		
	    		<div class="insert"> <!-- productPhotoFile 이미지 첨부파일 목록창 -->
			        <div class="file-list"></div>
		    		<div>
		    			<p>Sub Pics<i id="recipePhotoInputBtnIcon" class="bi bi-images" onclick="productPhotoFileInput()"></i>
		    			<input type="file" id="recipePhotoInputBtn" name="productPhotoFile" onchange="addFile(this)" accept="image/*" style="display: none" multiple  ></p>
		    		</div>
	    	</div> <!-- photoContainer 끝 -->
	    	
	    	
	    	
	    	
	    	<div id="contentContainer"> <!-- 사진외 나머지 공간 -->
	    		<div class="show-name-area"><!-- 작성자 표시 공간 -->
	    			<p><input name="userId" value="${loginUserId}" style="color: #999" hidden></p>
	    		</div>
	    		<div id="contentTitleArea"> <!-- 게시물 제목 공간 -->
	    			<div class="input-group mb-3">
					  <input type="text" class="form-control" placeholder="제목을 입력해보세요!" aria-label="Title" aria-describedby="basic-addon1" id="contentTitle" name="title" style="background-color: white; border-color: black;" required>
					  <span class="error-message" id="title-error">제목을 입력해 주세요.</span>
					</div>
	    		</div>
	    		<div id="contentTextArea"> <!-- 게시물 내용 공간 -->
	    			<textarea id="contentText" name="commContent" rows="8" cols="40" placeholder="오늘은 어떤 재미난 일이 있으셨나요?"></textarea>
	    		</div>
	    		<div id="productArea"> <!-- 상품소개 공간 -->
	    			<div id="productInfoArea">
	    				<div>
							<input type="text" id="productId" name="productId" readonly style="display: none">
	    				</div>
	    				<div>
	    					<input type="text" id="productTitle" name="productTitle" placeholder="제품 이름이 담깁니다" style="width: 200px;" readonly >  <!-- 등록한 제품 이름 표시용 -->
	    				</div>
	    				<div>
	    					<img id="image" class="product-pic" alt="상품 사진" src="" style="display: none">
	    				</div>
	    			</div>
	    			<div id="productSearchArea">
	    				<input type="button" value="상품검색"  id="productSearchButton" >
	    			</div>
	    		</div> <!-- 상품소개 공간 끝 -->
	    	</div><!-- 사진외 나머지 공간 끝 -->
	    	
		    <div class="submit-button-area">
		    	<button type="submit" id="submitButton" >등록</button>
		    </div>
	    </div><!-- 전체나눔 끝 -->
	</form>   
<!-- ----------------------------------- 상품 검색 팝업창 ---------------------------------------- -->	
<script>

$('#productSearchButton').click(function() {
	window.open("/biz/community/goSearchProduct.do", "상품검색조회등록", "width=800, height=600, left=100, top=50");
});

/*--------------------------- 세션 만료시 재로그인-------------------------------------------------- */
	//로그인 풀리면 로그인 페이지로 이동 
	window.onload = function () {
		if("${loginUser}" == ""){
			alert("로그인하셔야 본 서비스를 이용하실 수 있습니다.");
			location.href="/biz/user/goUserLoginPage.do";
		}
	}

    // 성공한 경우 부모 창 새로고침
    window.opener.location.reload();
    window.close();
    alert('게시물이 성공적으로 등록되었습니다.');

</script>	
	
 <!-- --------------------------맨 아래에 놔야 안정적으로 구동-------------------------------- -->
<script>

 	var filesArr = new Array();
	
	//첨부파일 추가 
	function addFile(obj){
	    var maxFileCnt = 6;   // 첨부파일 최대 개수
	    var attFileCnt = document.querySelectorAll('.filebox').length;    // 기존 추가된 첨부파일 개수
	    var remainFileCnt = maxFileCnt - attFileCnt;    // 추가로 첨부가능한 개수
	    var curFileCnt = obj.files.length;  // 현재 선택된 첨부파일 개수
	    
	 	// 함수 내에서 fileNo 유지
	    var fileNo = 0;
	    
	
	    // 첨부파일 개수 확인
	    if (curFileCnt > remainFileCnt) {
	        alert("첨부파일은 최대 " + maxFileCnt + "개 까지 첨부 가능합니다.");
	    } else {
	        for (const file of obj.files) {
	            // 첨부파일 검증
	            if (validation(file)) {
	            	
	
	                // 목록 추가
	                let htmlData = '';
	                htmlData += '<div id="file' + fileNo + '" class="filebox">';
	                htmlData += '   <p class="name">' + file.name + '</p>';
	                htmlData += '   <a class="delete" onclick="deleteFile(' + fileNo + ');"><i class="bi bi-patch-minus"></i></a>';
	                htmlData += '</div>';
	                $('.file-list').append(htmlData);
	                fileNo++;
	            } else {
	                continue;
	            }
	        }
	    }
	    // 초기화
	    //document.getElementById("recipePhotoInputBtn").value = "";
	}
	
	//첨부파일 검증
	function validation(obj){
	    const fileTypes = ['application/pdf', 'image/gif', 'image/jpeg', 'image/png', 'image/bmp', 'image/tif', 'application/haansofthwp', 'application/x-hwp'];
	    if (obj.name.length > 100) {
	        alert("파일명이 100자 이상인 파일은 제외되었습니다.");
	        return false;
	    } else if (obj.size > (100 * 1024 * 1024)) {
	        alert("최대 파일 용량인 100MB를 초과한 파일은 제외되었습니다.");
	        return false;
	    } else if (obj.name.lastIndexOf('.') == -1) {
	        alert("확장자가 없는 파일은 제외되었습니다.");
	        return false;
	    } else if (!fileTypes.includes(obj.type)) {
	        alert("첨부가 불가능한 파일은 제외되었습니다.");
	        return false;
	    } else {
	        return true;
	    }
	}
	
	//첨부파일 삭제 
	function deleteFile(num) {
	    document.querySelector("#file" + num).remove();
	    filesArr[num].is_delete = true;
	}

	
	
</script>

<br><br><br><br><br><br><br><br><br><br><br>
	<!-- ------------------------------------------------------------------------ -->
	<!-- footer -->
	<%@ include file="/css/headerFooter/shopFooter.jsp" %>
	<!-- ------------------------------------------------------------------------ -->
	
	<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>