<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지(일반회원)-상품후기</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<!-- 챗봇 -->
<%@ include file="../chatBot/kitchenChat.jsp" %>

<script>
	//로그인 풀리면 로그인 페이지로 이동 
	window.onload = function () {
		if("${loginUser}" == ""){
			alert("로그인하셔야 본 서비스를 이용하실 수 있습니다.");
			location.href="/biz/user/goUserLoginPage.do";
		}
	}

    /* // 성공한 경우 부모 창 새로고침
    window.opener.location.reload();
    window.close();
    alert('리뷰가 성공적으로 등록되었습니다.'); */
</script>

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
	padding: 0px 60px;
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
    border-radius: 4px;
}

/* 제목 */ 
.title {
    font-size: 20px;
    font-style: oblique;
    line-height: 18px;
    color: rgb(47, 52, 56);
    overflow: hidden;
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
    margin: 0px auto;
    padding: 0px 60px;
    display: flex;
    justify-content: flex-end;
}

/* 이미지 호버 */
.pic img {
    transition: transform 0.3s ease-in-out;
}
.pic img:hover {
    transform: scale(1.2);
}





</style>
	<!-- 아이콘 부트스트랩 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	<!-- 메뉴바 외 코드 -->
	<link href="${pageContext.request.contextPath}/css/cssStyle/style.css" rel="stylesheet" />
	<!-- 로그인 css -->
	<link href="${pageContext.request.contextPath}/css/cssStyle/userMyPageStyle.css" rel="stylesheet" />
	<!-- 메뉴바 부트스트랩 템플릿 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
	<!-- jQuery import 스크립트  -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>	
</head>
<body>
	<!-- header -->
	<%@ include file="../../../css/headerFooter/shopHeader.jsp" %>
	<!-- ------------------------------------------------------------------------ -->
	<%@ include file="../../../css/headerFooter/shopMyPage.jsp" %>
	
	<!-- 마이페이지 커뮤니티 페이지 -->
	<div class="css-171zbec">
		<div class="css-j0lifa">
			<div class="css-fhxb3m" style="display: flex;">
				<h2 class="css-1268zpe" ><a href="/biz/community/myCommunityList.do"> 나의 게시물</a></h2>
			</div>
			<div>
				<h2 class="css-1268zpe"><a href="/biz/community/myPickedCommunity.do">나의 북마크 리스트</a></h2>
			</div>
		</div>
		<div class="css-1c8nox">
	<!-- 내가 쓴 게시물이 없을 때 -->
		<c:if test="${empty myCommunityList }">
			<br><br>
			<p style="text-align:center;">작성한 글이 없습니다.</p>
		</c:if>
		
	<!-- 내가 쓴 글 조회 -->
		<div class="grand-all-area" >
			<div class="large-all-area" >
				<div class="medium-all-area" >
					<div class="small-all-area" >
						<div class="small2-all-area" >
							<div class="small3-all-area">
								<div class="one-row">
									<div class="one-row-2">
										
										<c:forEach var="community" items="${myCommunityList}">
										<span class="one-content">
											<div class="one-content-detail" >
												<div class="pic-title" >
													<div class="pic-title-detail">
														<div class="pic" >
															<a href="/biz/community/getCommunity.do?communityId=${community.communityId}"><img src="${pageContext.request.contextPath}/community/img/title/${community.commImage}"  alt="대표이미지" >
														</div>
														<div class="title" >
															<a href="/biz/community/getCommunity.do?communityId=${community.communityId}">${community.title}</a>
														</div>
													</div>
												</div>
												<div class="id-hit" >
													<div class="id" >${community.userId}</div>
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
	</div>
	<!-- 여기 사이에 마이페이지 본문내역 들어가야 함 -->
	
	
	<!-- 마이페이지 후기페이지 끝 -->
	
	
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