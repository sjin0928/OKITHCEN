<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 리스트</title>

<!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/css/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/css/cssStyle/sb-admin-2.min.css" rel="stylesheet">
    
    
<!-- 아이콘 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<!-- 메뉴바 외 코드 -->
<link href="${pageContext.request.contextPath}/css/cssStyle/style.css"
	rel="stylesheet" />
<!-- 회원가입 css -->
<link
	href="${pageContext.request.contextPath}/css/cssStyle/userJoinStyle.css"
	rel="stylesheet" />
<!-- 메뉴바 부트스트랩 템플릿 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css"
	integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG"
	crossorigin="anonymous">
<!-- collection css -->
<link
	href="${pageContext.request.contextPath}/css/cssStyle/collection.css"
	rel="stylesheet" />
<!-- 챗봇 -->
<%@ include file="../chatBot/kitchenChat.jsp" %>	
<style>

* {
  box-sizing: border-box;
}

/* 맨위 */
.grand-all-area { 
  flex: 1;
  width: 100%;
}

/* 두번째 위 */
.large-all-area {
	position: relative;
}

/* 세번째 위 */
.medium-all-area {
	max-width: 1256px;
	margin: 0px auto;
	padding-right: 0px;
    padding-left: 0px;
}

/* 네번째 위 */
.small-all-area {
	position: relative;
    height: 3806px;
}
/* 다섯번째 위 */
.small2-all-area {
    width: 100%;
  	height: 100%;
  	position: absolute;
  	top: 0px;
}
/* 여섯번째 위 */
.small3-all-area {
	box-sizing: border-box;
    padding-top: 0px;
  	padding-bottom: 1891px;
  	margin-top: 0px;
}

/* 한 열 크게*/
.one-row {
	overflow-anchor: none;
}

/* 한 열 작게 */
.one-row-2 {
	/* width: 100%; */
  	display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

/* 한 열 작게 하위 모두 : 즉 한개의 컨텐츠가 한열에 4개 씩 오게*/
.one-row-2 > * {
	width: 25%;
}
/* pic에 맞게 사진 자동 조절 */
.pic {
    width: 100%;
    height: 100%;
    object-fit: cover; /* 이미지가 비율을 유지하며 부모 요소에 맞게 조절되도록 설정 */
    border-radius: 4px;
}

/* 한개 컨텐츠 테두리 */
.one-content {
	width: calc(25% - 20px); /* 각각의 간격을 조절하기 위해 여백을 뺀 크기로 설정 */
    margin-bottom: 40px; /* 각각의 간격을 조절하기 위해 하단 여백 추가 */
    box-sizing: border-box; /* 내부 여백과 테두리를 포함한 크기를 계산하도록 box-sizing 속성 설정 */
    
    background-color: #FBFBEF;
}

/* 사진 제목 큰 테두리 */
.pic-title {
	position: relative;
}

/* 사진 제목 작은 테두리 */
.pic-title-detail {
	aspect-ratio: 1 / 1;
 	margin-bottom: 10px;
}

/* 사진 */
.pic img{
  	object-fit: cover;
    width: 100%;
    height: 100%;
    border-radius: 10px;
}

/* 제목 */ 
.title {
    font-size: 16px;
    overflow: hidden;
    white-space: pre-line;
    
    font-style: oblique;
    line-height: 18px;
    color: rgb(47, 52, 56);
    text-overflow: ellipsis;
    white-space: pre-line;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    margin-bottom: 6px;
    word-break: break-all;
    font-weight: bold;
    
    
}


/* 작성자 조회수 */
.id-hit {
	
	display: flex;
    margin-top: 8px;
    -webkit-box-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    align-items: center;
}

/* 작성자 */
.id {
	font-size: 16px;
	display: flex;
    gap: 12px;
    -webkit-box-align: center;
    align-items: center;
    width: fit-content;
    max-width: 100%;
    font-weight: bold;
}

/* 아이콘 조회수 테두리  */
.hit {

}

/* 조회수아이콘 */
.hit-icon {
    display: inline-block;
    font-size: 24px;
    line-height: 1;
    color: rgb(33, 38, 41);
    margin-right: 4px;
    text-align: center;
}

/* 조회수표시 */
.hit-number {
	font-size: 24px;
    line-height: 20px;
    color: rgb(47, 52, 56);
}

/* 글쓰기 버튼 부모div */
.write-post {
	max-width: 1256px;
    display: flex;
    justify-content: flex-end;
    margin-right: 0px;
    margin-left: 0px;
    padding-right: 0px;
}


/* 이미지 호버 */
.pic img {
    transition: transform 0.3s ease-in-out;
}
.pic img:hover {
    transform: scale(1.2);
}

/* 텍스트 엔터 먹게하기 */
textarea {
    resize: none; /* 또는 resize: vertical; 등으로 설정할 수 있습니다. */
}


</style>

<script>


</script>

</head>

<body>
	<header>
	<!-- header -->
	<%@ include file="../../../css/headerFooter/shopHeader.jsp" %> <!-- 다른 곳 복사 -->
	<!-- ------------------------------------------------------------------------ -->
	</header>
	<div class="css-nu1lw1 e12kjs5e0">
	
		<div id="container" class="css-1b38o8c eakz2kp1">
			<div class="css-1azakc e13967gz1">
				<a href="${pageContext.request.contextPath }/collections/newProdList.do" >
				<img
					src="https://collection-image.kurly.com/cdn-cgi/image/width=1050,quality=85/product-collections/2451/QkPlHJ8n7HTCaEKUqsxXsr1CmPt5v5AneCEmEQhR.jpg"
					alt="배너 이미지" class="css-1217fb7 e13967gz0"></a>
			</div>
	
	
		<div class="write-post" >
			<div class="write-post-button" >
				<form action="goinsertCommunity.do" method="GET">
					<button type="submit" class="btn btn-warning" style="border-radius: 10px;">글쓰기</button>
				</form>
			</div>
		</div>
	
	<div class="grand-all-area" >
		<div class="large-all-area" >
			<div class="medium-all-area" >
				<div class="small-all-area" >
					<div class="small2-all-area" >
						<div class="small3-all-area">
							<div class="one-row">
								<div class="one-row-2">
									
									<c:forEach var="community" items="${communityList}">
									<span class="one-content">
										<div class="one-content-detail" >
											<div class="pic-title" >
												<div class="pic-title-detail">
													<div class="pic" >
														<a href="getCommunity.do?communityId=${community.communityId}"><img src="${pageContext.request.contextPath}/community/img/title/${community.commImage}" alt="대표이미지" >
													</div>
													<div class="title" >
														<a href="getCommunity.do?communityId=${community.communityId}">${community.title}</a>
													</div>
												</div>
											</div>
											<div class="id-hit" >
												<div class="id" >${community.userId}</div>
												<div id="pickIconContainer" role="button" hidden=""> <!-- 북마크 -->
											    	<i class="bi bi-bookmark-heart" style="margin-left: 20px; font-size: 25px;" ></i>
											    </div>
												<div class="hit" >
													<span class="hit-icon" ><i class="bi bi-emoji-heart-eyes"></i></span>
													<span class="hit-number" >${community.commHit}</span>
												</div>
											</div>
										</div>
									</span>
									</c:forEach>
								
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		</div>
		<!-- End of Container -->
		
	</div>
	
	
   <!-- ------------------------------------------------------------------------ -->
   <!-- footer -->
	<%@ include file="../../../css/headerFooter/shopFooter.jsp"%>
	<!-- ------------------------------------------------------------------------ -->

	<!-- 부트스트랩 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
</body>
</html>