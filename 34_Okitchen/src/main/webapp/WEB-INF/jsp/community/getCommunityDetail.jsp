<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 상세히 보기</title>

	<!-- 메뉴바 외 코드 -->
	<link href="${pageContext.request.contextPath}/css/cssStyle/style.css" rel="stylesheet" /> <!-- 다른 곳 복사 -->
	<!-- 메뉴바 부트스트랩 템플릿 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">


<script>

window.onload = function () {
	if("${loginUser}" == ""){
		alert("로그인하셔야 본 서비스를 이용하실 수 있습니다.");
		location.href="/biz/user/goUserLoginPage.do";
	}
}
</script>
<script>

	//페이지 로드시 실행
	document.addEventListener("DOMContentLoaded", function() {
		
		//보여라 삭제버튼 함수
	    showDeleteButton();
	});
	
	
	
/* ------------------------------------북마크 함수------------------------------------------------------ */	
	 $(document).ready(function() {
		 
		 let communityId = "${oneCommunity.communityId}"
		 let userId = "${oneCommunity.userId}";
		 let loginUserId = "${sessionScope.loginUser.userId}";
		 console.log("북마크정보확인 전송할 communityId : " + communityId);
		 console.log("북마크정보확인 전송할 userId : " + userId);
		 console.log("북마크정보확인 비교할 loginUserId : " + loginUserId);
		 
		// 페이지 로드 시에 사용자 정보를 받아옴 (예: Ajax 요청)
		    $.ajax("communityPickCheck.do",{ 
		        type: 'GET',
		        data: {
		        	communityId : communityId
		        },
		        success: function(userInfo) {
		            // userInfo에서 사용자의 북마크 정보 등을 확인하여 동적으로 스타일 설정
		            
		            console.log("본인확인 함수 성공");
		            console.log(userInfo);
		            console.log(userInfo.userId);
		            
		            if (userInfo.userId === loginUserId) {
		            	$('#pickIconContainer').removeClass('noHeart').addClass('yesHeart');
		                console.log("하트되어있다");
		            } else {
		            	$('#pickIconContainer').removeClass('yesHeart').addClass('noHeart'); 
		                console.log("하트 안되어있다");
		            }
		        },
		        error: function() {
		            console.error('사용자 정보를 가져오는데 실패했습니다.');
		        }
		    });
		 
		
		
		 $('#pickIconContainer').click(function(){
		 	/* let loginUserId = "${sessionScope.loginUser.userId}";
			let communityId = "${oneCommunity.communityId}"; */
			console.log("로그인아이디 : " + loginUserId + "그리고 게시물인덱스: " + communityId);
			
			//클래스 상태를 확인하여 실행할꺼 분기점
			let isBooked = $('#pickIconContainer').hasClass('yesHeart');
			console.log("isBooked : " + isBooked);
			
			if(!isBooked){ //'noHeart'를 갖고있느냐? 그럼 추가함수 실행해야지
				$.ajax("communityPick.do",{
					type: 'post',
					data: {
						userId : loginUserId,
						communityId : communityId
					},
					success: function(response){
						
						if(response === 'pickSuccess'){
							console.log("북마크 추가 성공");
							//아이콘에 클래스 추가/제거 해서 css작업 수행하기
							//북마크가 추가된 경우
							$('#pickIconContainer').removeClass('noHeart').addClass('yesHeart');
						} else {
							console.log('서버오류');
						}
					},
					error: function() {
	                    console.error('Ajax 실행 실패임');
					}
				});
			
			} else if(isBooked){ //yesHeart 클래스를 갖고있다.
				$.ajax("communityPickDelete.do",{
					type: 'post',
					data: {
						userId : loginUserId,
						communityId : communityId
					},
					success: function(response){
						
						if(response === 'pickDeleteSuccess'){
							console.log("북마크 삭제 성공");
							//아이콘에 클래스 추가/제거 해서 css작업 수행하기
							//북마크가 추가된 경우
							$('#pickIconContainer').removeClass('yesHeart').addClass('noHeart');
						} else {
							console.log('서버오류');
						}
					},
					error: function() {
	                    console.error('Ajax 실행 실패임');
					}
				});
				
			}
			
		 });
	 });
	
	
	
//-----------------------------------------보여라 삭제버튼----------------------------------------------
	function showDeleteButton(){
		let writerId = "${oneCommunity.userId}";
		console.log("게시물 작성자 Id : " + writerId);
		
		let loginUserId = "${sessionScope.loginUser.userId}";
		console.log("로그인한 유저 Id : " + loginUserId);
		
		
		if (writerId === loginUserId){
			let deleteButton = document.getElementById('deleteButton');
			if (deleteButton) {
		        deleteButton.style.display = 'block';
		    }
		} 
		
	}
	
/*------------------------------ 삭제하기------------------------------------------------------------- */
	function confirmDelete(){
		
		let isConfirmed = confirm("정말로 삭제하시겠습니까?");
		
		if(isConfirmed){
			let communityId = "${oneCommunity.communityId}";
			window.location.href = "/biz/community/deleteCommunity.do?communityId=" + communityId;
		}
	}
	
//------------------자식창에서 부모창으로 값 가져오기-----------------------------------------------------------
function handleSelectedProduct(productId, title) {

	console.log("Received Product ID in parent window:", productId);
    console.log("Received Title in parent window:", title);

}
//------------------ 접속시 이벤트 창 (재미)----------------------------------------------------------------------
 
/* window.addEventListener('load', function() {
  window.open('https://point-partner.com/wp-content/uploads/2022/05/%ED%8F%AC%EC%9D%B8%ED%8A%B8%ED%99%80%EB%8D%A4-%EC%9D%B4%EB%B2%A4%ED%8A%B8-1.jpg', 'popupWindow', 'width=700,height=700');
}); */ 

//-------------------------------------------------------------------------------------------------------

/* 이미지 슬라이드 */
let currentImageIndex = 0;

function changeImage(n) {
    showImage(currentImageIndex += n);
}

function showImage(index) {
    const images = document.querySelectorAll('.slider-image');

    if (index >= images.length - 1) {
        currentImageIndex = images.length - 1;
        document.querySelector('.next-btn').style.display = 'none';
    } else {
        document.querySelector('.next-btn').style.display = 'block';
    }

    if (index <= 0) {
        currentImageIndex = 0;
        document.querySelector('.prev-btn').style.display = 'none';
    } else {
        document.querySelector('.prev-btn').style.display = 'block';
    }

    for (let i = 0; i < images.length; i++) {
        images[i].style.display = 'none';
    }

    images[currentImageIndex].style.display = 'block';
}

document.addEventListener('DOMContentLoaded', function () {
    showImage(currentImageIndex);
});

//---------------------------------- 목록으로 돌아가기 -----------------------
function redirectToCommunityList() {
	
	const goBackUrl = "${pageContext.request.contextPath}/community/getCommunityList.do"
	window.location.href = goBackUrl;
}
</script>

<style>

/* 북마크 하트 CSS : Ajax에서 토글로 생성하는 클래스 */

#pickIconContainer {
	font-size: 32px;
}

#pickIconContainer.yesHeart i {
	
	color: red;
}

#pickIconContainer.noHeart i {
	color: black;
}

/* ---------------------------------------구조CSS------------------------------------- */
/* 공통 스타일 */
body {
    font-family: 'Arial', sans-serif;
    background-color: #fafafa;
    margin: 0;
    padding: 0;
}

.contents-box {
    display: flex;
    flex-direction: column; /* 컨텐츠를 세로로 배열 */
    max-width: 800px; /* 원하는 최대 폭으로 설정 */
    margin: 0 auto; /* 가운데 정렬을 위해 추가 */
}
.contents-box-2{
	display: flex;
    flex: 1;
    flex-direction: column;
    flex-wrap: nowrap;
    justify-content: space-around;
    align-items: center;
}

.container {
    max-width: 450px;
    margin: 0 auto;
}

/* 헤더 스타일 */
.header {
    background-color: #fff;
    border-bottom: 1px solid #e0e0e0;
    padding: 15px;
    text-align: center;
}

/* 이미지 슬라이더 스타일 */


.image-slider-container {
    width: 100%;
    max-height: 100%; /* Set max-height to 100% to match the right content */
    overflow: hidden;
    position: relative;
}


.image-slider {
    display: flex;
    transition: transform 0.5s ease-in-out;
    width: 500px;
    flex-direction: column;
    flex-wrap: nowrap;
}

.slider-image {
    width: 100%;
    height: 300px;
    object-fit: contain;
}

.arrow-buttons {
    position: absolute;
    top: 50%;
    width: 100%;
    display: flex;
    justify-content: space-between;
}

.prev-btn,
.next-btn {
    font-size: 30px;
    background: none;
    border: none;
    cursor: pointer;
    outline: none;
    color: red;
}
.prev-btn {
    transform: translateY(-50%);
    left: 10px;
}

.next-btn {
    transform: translateY(-50%);
    right: 10px;
}
.slider-image {
    width: 100%;
    height: 100%;
    object-fit: contain;
}

/* 내용 컨테이너 스타일 */
.contents-container {
	flex: 1;
    background-color: #fff;
    padding: 15px;
    margin-top: 15px;
    box-sizing: border-box;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* 사용자 정보 스타일 */
.content-id-title-delete {
      display: flex;
	  flex-direction: row;
	  justify-content: space-evenly;
	  align-items: center;
	  margin-bottom: 30px;
	  border-bottom: 1px solid #ccc;
   	  padding-bottom: 20;

}

.content-id,
.content-title,
.content-delete-box {
    width: 100%;
}

.delete-button {
    background-color: #e74c3c;
    color: #fff;
    padding: 8px 12px;
    border: none;
    cursor: pointer;
}

/* 내용 및 날짜 스타일 */
.content-content-date-box {
   display: flex;
    flex-direction: column-reverse;
    align-content: center;
    flex-wrap: wrap;
    justify-content: center;
    align-items: flex-end;
}

.content-content,
.content-date {
    flex: 1;
    margin-bottom: 20px;
}

/* 북마크, 조회수, 뒤로 가기 버튼 스타일 */
.content-pick-hit-goback {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 15px;
}

.content-pick,
.hit-box,
.content-goback-box {
    flex: 1;
    text-align: center;
}

/* 상품 정보 스타일 */
.go-to-product-box {
    margin-top: 15px;
}

.product-box {
    background-color: #fff;
    padding: 15px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.detail-item {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.item-label,
.item-value {
    flex: 1;
}


.photo-container {
    flex: 1;
    max-height: 350px;
    overflow: hidden;
    position: relative;
}
.big-row {
    display: flex;
    justify-content: center; /* 가로 중앙 정렬 */
    align-items: center; /* 세로 중앙 정렬 */
    height: 100vh; /* 뷰포트 높이에 맞게 확장 */
}

.delete-button-container {
	display: flex; 
	justify-content: flex-end;
}
.content-content-date-box {
	border-bottom: 1px solid #ccc;
	padding-bottom: 20;
}
.content-content{
	width: 340px;
}

.go-back-to-list {
	margin-left: 80px;
}

/* 이미지 크기 조절 */
.detail-image {
	max-width: 500px;
    max-height: 340px;
	width: 100%;
    height: 100%;
}


</style>
</head>
<body>
	<header>
	<!-- header -->
	<%@ include file="../../../css/headerFooter/shopHeader.jsp" %> <!-- 다른 곳 복사 -->
	<!-- ------------------------------------------------------------------------ -->
	<br><br><br><br>
	</header>
	<section class="section-community">
		<div class="top-container" >
			<div class="top-container-2" >
				<div class="big-row" >
					<div class="contents-box" >
						<div class="contents-box-2" >
									<!-- ------------------------- 사진 시작 ------------------------ -->
							<div class="photo-container"> 
								<div class="photo-comeon" >
									<div class="image-slider-container">
								        <div class="image-slider">
								            <div class="image-container">
								                <!-- 대표 사진 추가 -->
								                <span class="slider-image">
								                    <img src="${pageContext.request.contextPath}/community/img/title/${oneCommunity.commImage}" alt="대표 이미지" class="detail-image">
								                </span>
								
								                <!-- 나머지 상세 이미지 및 상품 이미지 -->
								                <c:forEach var="photo" items="${detailImageList}">
								                    <span class="slider-image">
								                        <img src="${pageContext.request.contextPath}/community/img/detail/${photo.recipePhoto}" alt="게시물 이미지" class="detail-image">
								                    </span>
								                </c:forEach>
								
								                <!-- 상품 이미지 추가 -->
								                <span class="slider-image">
								                    <img src="${pageContext.request.contextPath}/productImage/title/${communityProduct.image}" alt="상품 이미지" class="detail-image">
								                </span>
								            </div>
								        </div>
								
								        <div class="arrow-buttons">
								            <!-- 이전, 다음 화살표 버튼 -->
								            <button class="prev-btn" onclick="changeImage(-1)" style="display: none">&#10094;</button>
								            <button class="next-btn" onclick="changeImage(1)">&#10095;</button>
								        </div>
								    </div>
								</div>
							</div>
							
							<div class="contents-container"> <!-- 다른내용 -->
							
								<div class="content-id-title-delete" >
									<div class="content-id" >
										<span class="item-label">작성자:</span>
	           							<span class="item-value">${oneCommunity.userId}</span>
									</div>
									<div class="content-title" >
	           							<span class="item-value">${oneCommunity.title}</span>
									</div>
									<div class="content-delete-box">
										<div class="content-delete" >
										<!-- 삭제버튼 -->
										    <div class="delete-button-container" >
										        <button id="deleteButton" class="delete-button" style="display: none;" onclick="confirmDelete()">삭제</button>
										    </div>
										</div>
									</div>	
								</div>
								
								<div class="content-content-date-box" >
									<div class="content-content" >
	           	 						<pre class="item-value">${oneCommunity.commContent}</pre>
									</div>
									<div class="content-date">
							            <span class="item-value">${oneCommunity.commDate}</span>
							        </div>
								</div>
								
								<div class="content-pick-hit-goback" >
								
									<div class="content-pick-box" >
										<div class="content-pick" >
											 <!-- 북마크 -->
										    <div id="pickIconContainer" role="button">
										    	<i class="bi bi-bookmark-heart"></i>
										    </div>
										</div>
									</div>
										<div class="hit-box" >
										<div class="detail-item">
								            <span class="item-label" style="margin-left: 40px;">조회수:</span>
								            <span class="item-value">${oneCommunity.commHit}회</span>
								        </div>
									</div>
									
									<div class="content-goback-box" >
										<div class="content-goback" >
										<div class="go-back-to-list" >
									    	<button onclick="redirectToCommunityList()" >더 보러가기</button>
									    </div>
										</div>
									</div>
									
								</div>
								
								<div class="go-to-product-box" >
									<div class="product-box" >
										<div class="detail-item">
								            <span class="item-label">상품이름:</span>
								            <a href="/biz/product/prodDetail.do?productId=${communityProduct.productId }" class="item-value">${communityProduct.title}</a> <!-- 맨밑 -->
								            
								        </div>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	    
	</section>
		
	<br><br><br><br><br><br><br><br><br><br><br>
	<!-- ------------------------------------------------------------------------ -->
	<!-- footer -->
	<%@ include file="/css/headerFooter/shopFooter.jsp" %>
	<!-- ------------------------------------------------------------------------ -->
	
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>