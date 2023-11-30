<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<title>상품상세정보</title>
<!-- 메뉴바 외 코드 -->
   <link href="${pageContext.request.contextPath}/css/cssStyle/style.css" rel="stylesheet" />
<!-- 회원가입 css -->
<link
	href="${pageContext.request.contextPath}/css/cssStyle/userJoinStyle.css"
	rel="stylesheet" />   
<!-- 메뉴바 부트스트랩 템플릿 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
<!-- detail css -->
<link href="${pageContext.request.contextPath}/css/cssStyle/detail.css"
	rel="stylesheet" />
<!-- prodDetailInfo css -->
<link
	href="${pageContext.request.contextPath}/css/cssStyle/prodDetailInfo.css"
	rel="stylesheet" />
<!-- 챗봇 -->
<%@ include file="../chatBot/kitchenChat.jsp" %>
<!-- 리뷰를 쓰고 돌아왔을때 성공여부와 팝업창 닫기 -->
<c:if test="${success}">
    <script>
        // 성공한 경우 부모 창 새로고침
        window.opener.location.reload();
        window.close();
        alert('리뷰가 성공적으로 등록되었습니다.');
    </script>
</c:if>

	<!-- 문의를 쓰고 돌아왔을때 성공여부와 팝업창 닫기 -->
	<c:if test="${successInquiry }">
	    <script>
	        // 성공한 경우 부모 창 새로고침
	        window.opener.location.reload();
	        window.close();
	        alert('문의가 성공적으로 등록되었습니다.');
	    </script>
	</c:if>
	   <!-- 문의를 수정하고 돌아왔을때 성공여부와 팝업창 닫기 -->
	<c:if test="${inqUpdatesuccess}">
	    <script>
	        // 성공한 경우 부모 창 새로고침
	        window.opener.location.reload();
	        window.close();
	        alert('문의가 수정되었습니다.');
	    </script>
	</c:if>
	   <!-- 문의를 삭제하고 돌아왔을때 성공여부와 팝업창 닫기 -->
		<c:if test="${deleteInquirysuccess}">
	    <script>
	    	window.location.href = "#scroll4";
	    </script>
	</c:if>
<script>
	var productId = ${vo.productId };

	// 찜하기 버튼 클릭 ----------------------------------------------- 
	$(function() {
		$('#heartBtn').click(function() {
			//alert("찜 버튼 클릭");
			var heartBtnImg = $('#heartBtn img'); 
			//var loginUser = ${loginUser};
			// 세션에 로그인 정보가 없으면 alert "로그인하셔야 본 서비스를 이용하실 수 있습니다." 
			// 후 로그인 페이지로 이동
 			// 로그인 안 되어 있을 때 여기서 확인함 ----------
			if("${loginUser.userId}" == ""){
				alert("로그인하셔야 본 서비스를 이용하실 수 있습니다.");
				//return; // return -> location.href 로그인 페이지로 이동하기로 수정
				location.href="/biz/user/goUserLoginPage.do";
			} else{
				//alert("로그인 되어있음 확인용 alert");
			} 
			
			// 로그인 O -------------------------------------------------------
			// 빈 하트일 때 클릭하면 insert 실행 
			if (heartBtnImg.attr('src') === '../css/img/heart_before.png') {
				$.ajax("insertPicked.do",{
			    	 type:"post",
			    	 dataType:"json",
			    	 data : {productId : productId},
			    	 success : function (data){
			    		 //alert("찜 추가 성공");
			    		 heartBtnImg.attr('src', '../css/img/heart_after.png');
			    		 heartBtnImg.attr('alt', '찜하지않은상품');
			    	 },
			    	 error: function(){
			    		 //alert("실패.");
			    	 }
			     });
			} else { // 꽉찬 하트일 때 클릭하면 delete 실행 
				$.ajax("deletePicked.do",{
			    	 type:"post",
			    	 dataType:"json",
			    	 data : {productId : productId},
			    	 success : function (data){
			    		 //alert("찜 삭제 성공");
			    		 heartBtnImg.attr('src', '../css/img/heart_before.png');
			    		 heartBtnImg.attr('alt', '찜한상품');
			    	 },
			    	 error: function(){
			    		 //alert("실패.");
			    	 }
			     });
			}
			
			
			// 로그인 O 찜하기 삭제 
			
		});
		
	});

	//-----------------------------------------------------------
	//이름 홍*동 형태로 바꾸는 함수
	function maskMiddleCharacter(name) {
	    if (name.length % 2 === 0) {
	        // 이름의 길이가 짝수일 때
	        const middleIndex = name.length / 2 - 1;
	        return name.substring(0, middleIndex) + '*' + name.substring(middleIndex + 2);
	    } else {
	        // 이름의 길이가 홀수일 때
	        const middleIndex = Math.floor(name.length / 2);
	        return name.substring(0, middleIndex) + '*' + name.substring(middleIndex + 1);
	    }
	}

	//스크롤이동 함수
	function scrollToTarget(target) {
	    var targetElement = $(target);
	    $('html, body').animate({
	        scrollTop: targetElement.offset().top
	    }, 300); // 500 milliseconds: 애니메이션의 지속 시간을 조절
	}
	
	//후기 리스트 ajax
	$.ajax("ProductReview.do", {
	    type: "get",
	    data: { productId: productId },
	    dataType: "json",
	    success: function (data) {
	        console.log(data);
	        let dispTag = "<div>";
	        
	        for (review of data) {
	        	
	            // notice.cPage를 숫자로 변환
	            review.cPage2 = parseInt(review.cPage2);
	            let maskedUserName = maskMiddleCharacter(review.userName);

	            dispTag += "<div class='row'>";
	            dispTag += "<div class='col-3'>";
	            dispTag += "<div class='reviewUser'>" + maskedUserName + "</div>";
	            dispTag += "</div>";
	            dispTag += "<div class='col-9'>";
	            dispTag += "<div class='productInfor'>[ " + review.brand +  " ] " + review.title + ", " + review.optionName + "</div>";
	            dispTag += "<div class='reviewContent'> " + review.reviewContent + "</div>";
	            dispTag += "<div class='reviewImage'><img src='${pageContext.request.contextPath}/productImage/review/" + review.reviewImage  + "' alt='Uploaded Image'></div>";
	            dispTag += "<div class='reviewDate'> " + new Date(review.reviewDate).toLocaleDateString('ko-KR', { year: 'numeric', month: '2-digit', day: '2-digit' }).replace(/\.$/, '') + "</div>";
	            dispTag += "</div>";
	            dispTag += "</div>";
	           
	        }
			if (review != null){
            //페이징
            if (review.cPage2 == 0 && review.totPage == 0) {
                dispTag += "<hr><button class='disAble1' disabled>이전</button><button class='disAble' disabled>다음</button>";
            } else if (review.cPage2 == 0) {
            	review.cPage2 = 1;
                dispTag += "<button class='disAble1' disabled>이전</button><button class='next' onclick='handleNextPage2(" + review.productId + ", " + (review.cPage2 + 1) + ")'>다음</button>";
            } else if (Number(review.totPage) <= Number(review.cPage2)) {
                dispTag += "<button class='back' onclick='handleBeforePage2(" + review.productId + ", " + (review.cPage2 - 1) + ")'>이전</button><button class='disAble' disabled>다음</button>";
            } else {
                dispTag += "<button class='back' onclick='handleBeforePage2(" + review.productId + ", " + (review.cPage2 - 1) + ")'>이전</button><button class='next' onclick='handleNextPage2(" + review.productId + ", " + (review.cPage2 + 1) + ")'>다음</button>";
            }
			}
	        $("#listDisp2").html(dispTag);
	    },
	    error: function () {
	    }
	});
	
	//이전 페이지에 대한 데이터 호출ajax
	function handleBeforePage2(productId, cPage2) {
		   // cPage를 숫자로 변환
	    cPage2 = parseInt(cPage2);
	
		//후기 리스트 ajax
		$.ajax("ProductReview.do", {
		    type: "get",
		    data: { productId: productId , cPage2: cPage2},
		    dataType: "json",
		    success: function (data) {
		        console.log(data);
				
		        let dispTag = "<div>";

		        for (review of data) {
		            // notice.cPage를 숫자로 변환
		            review.cPage2 = parseInt(review.cPage2);
		            let maskedUserName = maskMiddleCharacter(review.userName);

		            dispTag += "<div class='row'>";
		            dispTag += "<div class='col-3'>";
		            dispTag += "<div class='reviewUser'>" + maskedUserName + "</div>";
		            dispTag += "</div>";
		            dispTag += "<div class='col-9'>";
		            dispTag += "<div class='productInfor'>[ " + review.brand +  " ] " + review.title + ", " + review.optionName + "</div>";
		            dispTag += "<div class='reviewContent'> " + review.reviewContent + "</div>";
		            dispTag += "<div class='reviewImage'><img src='${pageContext.request.contextPath}/productImage/review/" + review.reviewImage  + "' alt='Uploaded Image'></div>";
		            dispTag += "<div class='reviewDate'> " + new Date(review.reviewDate).toLocaleDateString('ko-KR', { year: 'numeric', month: '2-digit', day: '2-digit' }).replace(/\.$/, '') + "</div>";
		            
		            dispTag += "</div>";
		            dispTag += "</div>";
		           
		        }
		        
		        if(review.cPage2 == 0){
		        	review.cPage2 = 1;
		        } 
	            //페이징
	            if (review.cPage2 == 0 && review.totPage == 0) {
	                dispTag += "<hr><button class='disAble1' disabled>이전</button><button class='disAble' disabled>다음</button>";
	            } else if (review.cPage2 == 1) {
	            	review.cPage2 = 1;
	                dispTag += "<button class='disAble1' disabled>이전</button><button class='next' onclick='handleNextPage2(" + review.productId + ", " + (review.cPage2 + 1) + ")'>다음</button>";
	            } else if (Number(review.totPage) <= Number(review.cPage2)) {
	                dispTag += "<button class='back' onclick='handleBeforePage2(" + review.productId + ", " + (review.cPage2 - 1) + ")'>이전</button><button class='disAble' disabled>다음</button>";
	            } else {
	                dispTag += "<button class='back' onclick='handleBeforePage2(" + review.productId + ", " + (review.cPage2 - 1) + ")'>이전</button><button class='next' onclick='handleNextPage2(" + review.productId + ", " + (review.cPage2 + 1) + ")'>다음</button>";
	            }

		        $("#listDisp2").html(dispTag);
		    },
		    error: function () {
		    }
		});	   
		   
	}
	
	//다음 페이지에 대한 데이터 호출ajax
	function handleNextPage2(productId, cPage2) {
		   // cPage를 숫자로 변환
	    cPage2 = parseInt(cPage2);
	    handleBeforePage2(productId, cPage2);

	} 
	//장바구니 담기
	/*function handleToAddCart(productId){
		if("${loginUser}" === ""){
			alert('로그인 후 상품을 담을 수 있습니다.');
			location.href="/biz/user/goUserLoginPage.do";
		} else {
			//location.href="/biz/cart/getProductId.do?productId=" + productId;
			window.open ("/biz/cart/getProductId.do?productId=" + productId, 'popUp', 'width=500, height=300, resizable=yes, scrollbars=yes')
		}
	}*/
</script>
<style>
	.btngroups { 
	height: 72px; 
	position: sticky !important;
    top: 70px;
    z-index: 99999;
    margin-bottom: 55px;
    margin-top: 35px;
    }
    
	button.btn.btn-light { border: 1px solid rgb(200, 200, 200);  font-weight: 700;}
	.btn { height: 60px; }
	.product-container { text-align: center; margin-top: 100px;}
	.images { text-align: center; }
	
	.inner {
	width: 960px;
	margin: 0 auto;

	}
	.scroll2 { margin-bottom : 150px;}
	.scroll3 { margin-bottom : 150px;}
	.btn.btn-primary.btn-sm { 
		margin-left: 933px; 
		background-color: rgb(231, 129, 17); 
		border-radius: 10px; 
		height: 42px; 
		width: 100px; 
		font-size: 15px; 
		line-height: 30px;     
		margin-bottom: 7px;
		margin-top: 25px;
	}
	
	/* 버튼이 눌렸을 때 스타일 변경 */
    button.btn.btn-light:active,
    button.btn.btn-light:focus {
       color: rgb(231, 129, 17); /* 눌렸을 때 글자 색을 변경할 색상으로 설정 */
       border-bottom: none !important; 
       outline: none !important;/* 포커스 효과 제거 */
       box-shadow: none;
       background-color: white;
    }

	.row img {
	    height: 100px;
	    max-width: 100px;
	    overflow: hidden;
	    float: left;
	    margin-top: 20px;
	    border-style: groove;
	    border-color: #d3d3d336;
	    border-radius: 5px;
	}
	.reviewImage img {
		height: 120px;
	    max-width: 117.5px;
	    overflow: hidden;
	    float: left;
	    margin-top: 20px;
	    border-style: groove;
	    border-color: #d3d3d336;
	    border-radius: 5px;
	} 
	.reviewUser { margin-left: 25px; }
	.reviewDate {
		margin-left: 656px;
    	float: inline-start;
    	color: #00000061;
    	font-weight: bold;
	}

	div.col-9 {
		margin-top: 10px;
	}
	div.col-3 {
		margin-top: 10px;
	}
	.reviewStart{
		margin-top: 40px;
		margin-bottom: 29px;
	}
	.reviewIquiry{
		margin-top: 49px;
    	margin-bottom: 25px;
	}
	.imageList {
		display: flex;
		gap: 3px;
		/* overflow: hidden; */
		width: 842px
	}
	img.plusImage {
		height: 120px;
	    width: 151.5px;
	    margin-top: 20px;
	    border-style: groove;
	    border-color: #d3d3d336;
	    border-radius: 5px;
	}
	.inquiryDetail {
		color: #8c8c8c;
	}
	.inquiryDetail2 {
		color: #8c8c8c;
	}
	div.inqTitle {
	    float: left;
	    margin-left: -11px;
	    margin-right: 15px;
	    font-weight: 550;
    }
    div.inqContent {
		float: left;
	    margin-left: -11px;
	    margin-right: 50px;
	    margin-bottom: 15px;
	    margin-top: 15px;
	    text-align: left;
    }
    div.inqUserName {
	    float: left;
	    margin-right: 25px;
   		margin-left: 922px;
	    margin-top: -35px;
	    color: #000000ad;
    }
    div.inqDate {
		margin-right: 27px;
	    /* margin-top: 38px; */
	    color: #00000070;
	    padding-left: 20px;
	    padding-bottom: 15px;
    }
    div.inqAnswered {
		float: inline-end;
	    margin-right: 15px;
	    margin-top: -35px;
	    font-weight: bold;
	    color: #0000007a;
    }
    div.inqDelete{
		float: inline-end;
	    margin-right: 15px;
	    margin-top: -8.5px;
	    border-top-right-radius: 5px;
	    border-bottom-right-radius: 5px;
	    padding-right: 1.5px;
	    background-color: rgb(231 129 17 / 22%);
	    padding: 2.5px;
	    font-size: 13px;
	    padding-left: 1px;
    }
    div.inqUpdate {
	    float: right;
	    margin-top: -8.5px;
	    border-top-left-radius: 5px;
	    border-bottom-left-radius: 5px;
	    padding-left: 1.5px;
	    background-color: rgb(231 129 17 / 22%);
	    padding: 2.5px;
	    font-size: 13px;
	    padding-right: 1px;
    }
    button.toggleButton{
		border: none;
	    background-color: rgb(231 129 17 / 76%);
	    color: white;
	    border-radius: 5px;
	    margin-left: 18px;
	    padding: 4px;
    }
    button.toggleButton:focus{
		outline: none;
    }
    div.toggleContent{
	    margin-left: 19px;
	    margin-top: 15px;
	    margin-bottom: 14px;
	    padding-top: 10px;
	    background-color: #0000000f;
	    border-radius: 10px;
	    padding-bottom: 0px;
    }
    div.inqAnsDate{
	    margin-left: 17px;
	    color: #00000073;
	    margin-bottom: 17px;
	    padding-bottom: 10px;
    }
    div.inqAnsContent{
	    margin-left: 15px;
	    margin-bottom: 14px;
	    margin-top: 0px;
    }
    div.inqNoAns{
    	padding-bottom: 9px;
    	padding-left: 17px;
    	padding-top: 1px;
    }
    div.secret{
	    color: #0000004f;
	    font-weight: bold;
	    margin: 55px;
	    margin-left: 17px;
	    margin-top: 33px;
    }
    .back {
		color: rgb(231 129 17 / 76%);
    	margin-left: 433px;
	    font-weight: bold;
    	background-color: white;
	    border-radius: 5px;
	    border-top-color: #0000006e;
	    border-left-color: #0000006e;
	    border-color: rgb(231 129 17 / 54%);
	    padding-right: 8px;
   	}
   	.next {
	    color: rgb(231 129 17 / 76%);
	    margin-left: 16px;
	    margin-top: 22px;
	    font-weight: bold;
	    background-color: white;
	    border-radius: 5px;
	    border-top-color: #0000006e;
	    border-left-color: #0000006e;
	    border-color: rgb(231 129 17 / 54%);
	    margin-bottom: 95px;
   		padding-left: 7.5px;
    	padding-right: 7.8px;
   	}
   	a:hover {
 	 	text-decoration: none;
	}
	.disAble1{
    	margin-left: 433px;
	    color: #0000003d;
	    font-weight: bold;
	    background-color: white;
	    border-radius: 5px;
	    border-color: #0000003d;
	    padding-right: 8px;
	}
	.disAble{
		color: #0000003d;
		font-weight: bold;
		background-color: white;
	    border-radius: 5px;
	    border-color: #0000003d;
	    margin-left: 16px;
	    margin-bottom: 95px;
	    margin-top: 22px;
    	padding-left: 7.5px;
    	padding-right: 7.8px;
	}
	.isEmpty{
		margin-left: 409px;
	    margin-top: 99px;
	    font-weight: bold;
	    color: #00000042;
	}
	.isEmpty2{
		margin-left: 409px;
	    margin-top: 99px;
	    font-weight: bold;
	    color: #00000042;
		margin-bottom: 140px;
	}	
	div.container.text-center{
		margin-left: 15px;
	}
 	div.pic {
        display: flex; 
        justify-content: center;
        align-items: center; 
    } 

    /* 이미지 스타일 */
    div.pic img {
        width: 100%;
        max-height: 100%;
        align-items: center; 
        margin-bottom: 85px;
    }
    .css-e6zlnr{
    	align-items: center;
    }
    p.css-uy94b2.e6qx2kx0{
    	margin-bottom: 0px;
    }
    body {
    	margin-right: 76px;
    }
    .css-17cdx60{
    	width: 1019px;
	    margin-left: -130px;
    }
    .css-175n8cp{
    	width: 1532px;
    	margin-top: 10px;
    }
}
</style>
</head>
<body>
<!-- header -->
<%@ include file="../../../css/headerFooter/shopHeader.jsp" %>
<div class="inner">
<!-------------------- 상품 디테일 --------------------->
	<div class="css-1qphylu e1tjwjt99"></div>
		<div class="css-16c0d8l e1brqtzw0">
			<main id="product-atf" class="css-1eoy87d e17iylht5">
				<div class="css-rky48o e17iylht4">
					<img alt="대표이미지"
						src="${pageContext.request.contextPath}/productImage/title/${vo.image}">
				</div>
				<section class="css-1ua1wyk e17iylht3">
					<div class="css-12lw2qc ezpe9l13">샛별배송</div>
					<div class="css-1qy9c46 ezpe9l12">
						<h1 class="css-79gmk3 ezpe9l11">[${vo.brand }] ${vo.title }</h1>
						<button class=" css-57nu3d eaxuegm1"></button>
					</div>
					<c:choose>
						<c:when test="${vo.discountRate eq 0}">
							<span class="css-9pf1ze e1q8tigr0"> <span
								id="formattedPrice"> <fmt:formatNumber
										value="${vo.price}" type="number" pattern="#,###" />원
							</span>
							</span>
						</c:when>
						<c:otherwise>
							<h2 class="css-abwjr2 e1q8tigr4">
								<span class="css-5nirzt e1q8tigr3">${vo.discountRate }<!-- -->%
								</span> <span class="css-9pf1ze e1q8tigr2"> <fmt:formatNumber
										value="${vo.discountedPrice}" type="number" pattern="#,###" />
								</span> <span class="css-1x9cx9j e1q8tigr1">원</span>
							</h2>
						</c:otherwise>
					</c:choose>


					<p class="css-1jali72 e17iylht2">
						원산지:
						<!-- -->${vo.origin }</p>
					<ul class="css-iqoq9n e6qx2kx2">
						<li class="css-e6zlnr epzddad2">
							<dt class="css-lytdfk epzddad1">배송</dt>
							<dd class="css-1k8t52o epzddad0">
								<!-- <p class="css-c02hqi e6qx2kx1">샛별배송</p> -->
								<p class="css-uy94b2 e6qx2kx0">샛별배송<br>23시 전 주문 시 내일 아침 7시 전 도착</p>
							</dd>
						</li>
						<li class="css-e6zlnr epzddad2">
							<dt class="css-lytdfk epzddad1">판매자</dt>
							<dd class="css-1k8t52o epzddad0">
								<p class="css-c02hqi e6qx2kx1">${sellerVO.companyName}</p>
							</dd>
						</li>
						<li class="css-e6zlnr epzddad2">
							<dt class="css-lytdfk epzddad1">판매단위</dt>
							<dd class="css-1k8t52o epzddad0">
								<p class="css-c02hqi e6qx2kx1">1팩</p>
							</dd>
						</li>
						<li class="css-e6zlnr epzddad2">
							<dt class="css-lytdfk epzddad1">제조일자</dt>
							<dd class="css-1k8t52o epzddad0">
								<p class="css-c02hqi e6qx2kx1">${vo.manufacturingDate }</p>
							</dd>
						</li>
						<li class="css-e6zlnr epzddad2">
							<dt class="css-lytdfk epzddad1">유통기한(또는 소비기한)정보</dt>
							<dd class="css-1k8t52o epzddad0">
								<p class="css-c02hqi e6qx2kx1">${vo.expirationDate }</p>
							</dd>
						</li>
						<li class="css-e6zlnr epzddad2">
							<dt class="css-lytdfk epzddad1">주의사항</dt>
							<dd class="css-1k8t52o epzddad0">
								<p class="css-c02hqi e6qx2kx1">${vo.caution }</p>
							</dd>
						</li>
						<li class="css-e6zlnr epzddad2">
							<dt class="css-lytdfk epzddad1">안내사항</dt>
							<dd class="css-1k8t52o epzddad0">
								<p class="css-c02hqi e6qx2kx1">${vo.notification }</p>
							</dd>
						</li>
					</ul>
					<div class="css-1bp09d0 e17iylht1">
						<div class="css-2lvxh7 e1qy0s5w0">

							<div class="css-e6zlnr epzddad2">
								<dt class="css-lytdfk epzddad1">상품선택</dt>
								<div>
									<div style="margin-bottom: 10px;">
										<dd class="css-1k8t52o epzddad0">
											<div class="cart-option-item css-1cb5lnc e1bjklo18">
												<div class="css-1qdyvok e1bjklo16">
													<span class="css-1yojl0t e1bjklo14" data-product-id="${vo.productId }">[${vo.brand }]
														${vo.title }</span>
												</div>
												<div class="css-tk6lxo e1bjklo15">
													<div class="cartProductCnt css-nx0orh e1cqr3m40">
														<button type="button" aria-label="수량내리기"
															onclick="updateQuantity(${vo.productId},'decrease', 'count_${vo.productId }')"
															disabled="" class="css-1e90glc e1hx75jb0"></button>

														<div class="count css-6m57y0 e1cqr3m41"
															id="count_${vo.productId }">0</div>

														<button type="button" aria-label="수량올리기"
															onclick="updateQuantity(${vo.productId},'increase', 'count_${vo.productId }')"
															class="css-18y6jr4 e1hx75jb0"></button>
													</div>
													<div class="css-1jzvrpg e1bjklo12">
														<c:choose>
															<c:when test="${vo.discountRate eq 0}">
																<span class="css-gqkxk8 e1bjklo11"> <fmt:formatNumber
																		value="${vo.price}" type="number" pattern="#,###" />
																	원
																</span>
															</c:when>
															<c:otherwise>
																<span class="css-fburr9 e1bjklo11"> <fmt:formatNumber
																		value="${vo.price}" type="number" pattern="#,###" />
																	원
																</span>
																<span class="css-gqkxk8 e1bjklo10"> <fmt:formatNumber
																		value="${vo.discountedPrice}" type="number"
																		pattern="#,###" /> 원
																</span>
															</c:otherwise>
														</c:choose>
													</div>
												</div>
											</div>
										</dd>
									</div>
								</div>
							</div>
						</div>

						<div class="css-9y0nwt e17iylht0">
							<div class="css-ixlb9s eebc7rx8">
								<div class="css-yhijln eebc7rx7">
									<span class="css-w1is7v eebc7rx6">총 상품금액 :</span> <span
										id="totalPriceDisplay" class="css-x4cdgl eebc7rx5"> 0 </span>
									<span class="css-1jb8hmu eebc7rx4">원</span>
								</div>
								<div class="css-1iis94s eebc7rx3"></div>
							</div>
						</div>
						<div class="css-gnxbjx e10vtr1i2">
						
							<!-- 찜 버튼 (시작) -->
							<button class="css-3z91zj e4nu7ef3" type="button" width="56"
								height="56" radius="3" id="heartBtn">
								<span class="css-nytqmg e4nu7ef1">
								<img src=${heartImg} alt="찜한상품" class="css-0"> 
								<!-- 로그인 X / 로그인 O 찜 리스트에 없을 때  -->	
							 	<!-- <img src="../css/img/heart_before.png" alt="찜한상품" class="css-0"> -->
								<!-- 로그인 O / 찜 리스트에 있을 때  -->	
								<!-- <img src="../css/img/heart_after.png" alt="찜하지않은상품" class="css-0"> -->
								
								</span>
							</svg>
							</button>
							<!-- 찜 버튼 (끝) -->
							
							<button class="css-3z91zj e4nu7ef3" type="button" disabled=""
								width="56" height="56" radius="3">
								<span class="css-nytqmg e4nu7ef1"> 
								<img
									src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIHN0cm9rZT0iI0NDQyIgc3Ryb2tlLXdpZHRoPSIxLjYiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTEyLjY2NiAyM2EzLjMzMyAzLjMzMyAwIDEgMCA2LjY2NiAwIi8+CiAgICAgICAgPHBhdGggZD0iTTI1Ljk5OCAyMi43MzhINmwuMDEzLS4wM2MuMDc2LS4xMzUuNDcxLS43MDQgMS4xODYtMS43MDlsLjc1LTEuMDV2LTYuNjM1YzAtNC40ODUgMy40MzgtOC4xNCA3Ljc0MS04LjMwOEwxNiA1YzQuNDQ2IDAgOC4wNSAzLjcyMiA4LjA1IDguMzE0djYuNjM0bDEuNzA3IDIuNDExYy4xNzMuMjUzLjI1NC4zOC4yNDIuMzh6IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KICAgIDwvZz4KPC9zdmc+Cg=="
									alt="" class="css-0">
								</span>
							</button>
							<div class="css-14jnwd7 e10vtr1i0">
								<!-- <a href="/biz/cart/insertCart.do?productId=${vo.productId }"> -->
								<button class="cart-button css-1qirdbn e4nu7ef3" type="button" radius="3" onclick="insertCart()">
									<span class="css-nytqmg e4nu7ef1">장바구니 담기</span>
								</button>
								<!-- </a> -->
							<p id="scroll1"></p>
						</div>
					</div>
					
				</div>
			</section>
		</main>
		
	<!-- 스크롤 이동 표시바 -->
	<div class="btngroups">
	    <div class="btn-group btn-block" role="group" aria-label="Basic example">
	        <button type="button" class="btn btn-light" onclick="scrollToTarget('#scroll1')">상세정보</button>
	        <button type="button" class="btn btn-light" onclick="scrollToTarget('#scroll2')">후기</button>
	        <button type="button" class="btn btn-light" onclick="scrollToTarget('#scroll3')">문의</button>
	    </div>
	</div>
		<!-- nav -->
			<div class="css-0 el27cq1">
				<div id="description" class="css-18eozqj el27cq0">
					<div class="css-1d3w5wq e1d86arr0">
						<div class="css-1yg5v8v">
							<div class="goods_wrap">
								<div class="goods_intro">
									<div class="pic">
										<img alt="상품설명이미지"
											src="${pageContext.request.contextPath}/productImage/detail/${productImageList[0].productPhoto}" />
									</div>
									<div class="context last">
										<h3 cla>
											[${vo.brand }]<br> <small> ${vo.title } </small>
										</h3>
										<p class="words">${vo.content }
											<br> <br> <br> <br>
										</p>
									</div>
								</div>

								<div class="btn_event_area">
									<div class="pic">
										<span class="btn_event_banner"> <c:forEach
												var="productImage" items="${productImageList}"
												varStatus="loop">
												<c:if test="${loop.index > 0}">
													<img alt="상세정보이미지"
														src="${pageContext.request.contextPath}/productImage/detail/${productImage.productPhoto}" />
												</c:if>
											</c:forEach>
										</span>
									</div>
								</div>

								<!-- 판매자정보 등등 -->
								<%@ include file="/css/include/prodDetailInfo.jsp"%>

	
    <!---------------------- 후기&문의  ------------------------->
    
	<!-- 후기 눌렀을때 스크롤이동처리를 위한 div -->
    <div class="scroll2" id="scroll2"></div>
    <h3 class=reviewStart>상품 후기</h3>
    	
    <!-- 사진리뷰 리스트 목록보여주기 합치면서 컨트롤러 건들거 많아서 구현x하는걸로,,-->
    
<%--  	<div class="imageList">
		<c:forEach var="review" items="${getPhotoList}" begin="0" end="6">
		    <div class="reviewImage">
		        <img class="plusImage" src="${pageContext.request.contextPath}/resources/${review.reviewImage}" alt="Uploaded Image">
		    </div>
		</c:forEach>
		<c:if test="${fn:length(getPhotoList) > 7}">
	   		<img class="plusImage" src="${pageContext.request.contextPath}../css/image/더보기이미지.png" alt="더보기이미지" class="product-image">
		</c:if>
	</div> --%>
    <hr> 
    <!-------------------- 후기리스트 ---------------------->
    <div id="listDisp2"><div class='isEmpty'>등록된 후기가 없습니다</div></div>
	<div class="scroll3" id="scroll3"></div>
	
    <!--------------------- 문의리스트 --------------------->
    <!-- 문의 눌렀을때 스크롤이동처리를 위한 div -->
    
  	<h3 class=reviewIquiry>상품 문의</h3>
	<div class="scroll4" id="scroll4"></div>
  	<div class="inquiryDetail"> 상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.</div>
  	<div class="inquiryDetail2"> 배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 오키친 고객센터를 이용해주세요.</div>
  	
  	<div class="reply_button_wrap2">
  		<button type="button" class="btn btn-primary btn-sm" id="inquiryButton">문의 하기</button>
    </div>
    <hr>
    
    <!-- 문의 목록 보여주기 -->

  						<div id="listDisp"><div class='isEmpty2'>등록된 문의가 없습니다</div></div>
  	<!-- 상품쪽 div닫기 -->					
					</div>
				</div>
			</div>
			<div class="css-8k5a6c ezy1ugy1"></div>
		</div>

	</div>
</article>
</div>
</div>
<script>
function insertCart(){
	var productId = $(".css-1yojl0t.e1bjklo14").data("product-id"); //productId
	var countElement = document.getElementById("count_" + productId); //productId;
	var countValue = countElement.innerText;

	if("${loginUser}" === ""){
		alert('로그인 후 상품을 담을 수 있습니다.');
		location.href="/biz/user/goUserLoginPage.do";
	} else {
		location.href="/biz/cart/insertCartInDetail.do?productId="+productId +"&quantity="+countValue;
		location.reload();
	}
}

//수량 2 이상일 때 아이콘 변경 (옵션이 없는 상품)
function removeDisabled(){
	var quantity = parseInt(document.getElementById("count_${vo.productId}").innerText);
	var decreaseButton = document.querySelector('.css-1e90glc');
	/* var decreaseButton2 = document.querySelector('.css-1e90glc2'); */
	console.log("quantity : " + quantity);
	if (quantity > 0) {
	    decreaseButton.removeAttribute('disabled');
	    decreaseButton.classList.add('css-8azp8'); // css-8azp8 클래스 추가
	} else {
	    decreaseButton.setAttribute('disabled', 'true');
	    decreaseButton.classList.add('css-1e90glc');
	    decreaseButton.classList.remove('css-8azp8'); // css-8azp8 클래스 제거
	}
}

//수량 2 이상일 때 아이콘 변경 (옵션이 있는 상품)
function removeOptionDisabled(){
	var optionQuantity = parseInt(document.getElementById("count_${vo.optionId}").innerText);
	var decreaseButton = document.querySelector('.css-1e90glc2');
	
	console.log("optionQuantity : " + optionQuantity); 

	if (optionQuantity > 0) {
	    decreaseButton.removeAttribute('disabled');
	    decreaseButton.classList.add('css-8azp8'); // css-8azp8 클래스 추가
	} else {
	    decreaseButton.classList.add('css-1e90glc2');
	    decreaseButton.classList.remove('css-8azp8'); // css-8azp8 클래스 제거
	}
	
}

//수량 + - (대표상품)
function updateQuantity(productId, action, className){
	var currentQuantityElement = document.getElementById(className);
	var currentQuantity = parseInt(currentQuantityElement.innerText);
	
	if (action === "increase"){
		currentQuantity++;
		console.log("currentQuantity : " + currentQuantity);
	} else if(action === "decrease" && currentQuantity > 0){
		currentQuantity--;
		console.log("currentQuantity : " + currentQuantity);
	}
	
	$.ajax("${pageContext.request.contextPath}/cart/updateQuantity.do",{
		type:"post",
		data : {
			productId : productId,
			quantity : currentQuantity
		},
		success : function(response){
			currentQuantityElement.innerText = currentQuantity;
            calculateTotal();
			removeDisabled();
		},
		error : function(error){
			alert("실패");
		}
	}); 
} 

var totalPrice = 0;
// 수량과 할인된 가격을 곱하는 함수 (대표상품)
function calculateTotal() {
    var productId = ${vo.productId}; 
    var quantityElement = document.getElementById("count_" + productId);
    var quantity = parseInt(quantityElement.innerText);
    var discountedPrice = ${vo.discountedPrice}; // 상품의 할인된 가격
    var price = ${vo.price};
    console.log("price : " + price);
    console.log("discountedPrice : " + discountedPrice);
    
    // 수량과 할인된 가격을 곱하여 총 가격 계산
    if (!discountedPrice) {
    	totalPrice = quantity * price;
        console.log("totalPrice : " + totalPrice);
    } else {
        totalPrice = quantity * discountedPrice;
        console.log("totalPrice : " + totalPrice);
    }
    
    //천단위 콤마 추가
    var formattedTotalPrice = addCommas(totalPrice);
    console.log("formattedTotalPrice : " + formattedTotalPrice);
    
 	// 계산된 총 가격을 특정 위치에 표시
    var totalElement = document.getElementById("totalPriceDisplay"); // 표시할 위치의 요소 ID
    totalElement.innerText = formattedTotalPrice; // 요소에 총 가격을 표시
}


function addCommas(number) {
    return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
</script>
<script>
function inquiryList() {
    $.ajax({
        url: "inquiryList.do",
        type: "get",
        dataType: "json",
        data: { productId: productId, userId: "${loginUser.userId}" }, // 세션 값 전달
        success: function (data) {
        	let inqList = null;
            
            let dispTag = "<div class='inquiryList' >";
            
            for (inqList of data) {
            	
            	inqList.cPage = parseInt(inqList.cPage);
                // userName의 가운데 글자를 '*'로 변경
                let maskedUserName = maskMiddleCharacter(inqList.userName);

                dispTag += "<div class='inqDate'>" + new Date(inqList.inqDate).toLocaleDateString('ko-KR', { year: 'numeric', month: '2-digit', day: '2-digit' }).replace(/\.$/, '') + "</div>"; // 날짜 형식 변환
                // "답변완료"인 경우 글자색을 주황색으로 변경
                if (inqList.inqAnswered === '답변완료') {
                    dispTag += "<div class='inqAnswered' style='color: rgb(231 129 17 / 76%);'>" + inqList.inqAnswered + "</div>";
                } else {
                    // "답변대기"인 경우 글자색을 회색으로 변경
                    dispTag += "<div class='inqAnswered' style='color: #0000007a;'>" + inqList.inqAnswered + "</div>";
                }
                dispTag += "<div class='inqUserName'>" + maskedUserName + "</div>";
                

                // userId 가 세션의 loginUser와 일치할 경우 수정, 삭제 링크 추가
                if (inqList.userId == "${loginUser.userId}" ) {
                	dispTag += "<div class='inqDelete'><a href='javascript:handleInquiryDelete(" + inqList.inqId + ")'>삭제</a></div>";
                	dispTag += "<div class='inqUpdate'><a href='javascript:handleInquiryUpdate(" + inqList.inqId + ")'>수정 </a></div>";
                }

                // userId가 세션의 loginUser와 일치하고, 비밀글여부가 Y일경우 또는 비밀글여부가 null일경우에 문의 답변과 문의내용 표시
                if (inqList.userId == "${loginUser.userId}" & inqList.inqPrivate == 'Y' || inqList.inqPrivate == null) {
	                dispTag += "<div class='container text-center'>";
	                dispTag += "<div class='row'>";
	                dispTag += "<div class='col-sm-15'><div class='inqTitle'>" + inqList.inqTitle + "</div><br><div class='inqContent'>" + inqList.inqContent + "</div>";
	                //dispTag += "<div class='inqContent'>" + inqList.inqContent + "</div>";
	               	// 토글 버튼에 대한 이벤트 핸들러 추가
	                dispTag += "</div></div>";
	                dispTag += "</div>";
	                dispTag += "<button class='toggleButton' data-inqid='" + inqList.inqId + "'>문의답변</button>";
                }else {
                	dispTag += "<div class='secret'>비밀글입니다.</div>";
                }
                
                
                // 토글할 내용 추가
                dispTag += "<div class='toggleContent' style='display: none;'>";
                dispTag += "<div class='replyContent' id='replyContent_" + inqList.inqId + "'></div>";
                dispTag += "<div class='replyContent2' id='replyContent_2" + inqList.inqId + "'></div>";
                dispTag += "</div>";

                dispTag += "<hr>";
            }
            dispTag += "</div>";
            
          //페이징
            if (inqList.cPage == 0 && inqList.totPage == 0) {
                dispTag += "<button class='disAble1' disabled>이전</button><button class='disAble' disabled>다음</button>";
            } else if (inqList.cPage == 0) {
                inqList.cPage = 1;
                dispTag += "<button class='disAble1' disabled>이전</button><button class='next' onclick='handleNextPage(" + (inqList.cPage + 1) + ")'>다음</button>";
            } else if (Number(inqList.totPage) <= Number(inqList.cPage)) {
                dispTag += "<button class='back' onclick='handleBeforePage(" + (inqList.cPage - 1) + ")'>이전</button><button class='disAble' disabled>다음</button>";
            } else {
                dispTag += "<button class='back' onclick='handleBeforePage(" + (inqList.cPage - 1) + ")'>이전</button><button class='next' onclick='handleNextPage(" + (inqList.cPage + 1) + ")'>다음</button>";
            }
            $("#listDisp").html(dispTag);

            // 토글 버튼에 대한 이벤트 핸들러 추가
            $(".toggleButton").click(function () {
                var inqId = $(this).data("inqid");
                var replyContent = $("#replyContent_" + inqId);
                var replyContent2 = $("#replyContent_2" + inqId);

                // 이미 로드된 경우 다시 로드하지 않음
                if (replyContent.html().trim() === "") {
                    // 해당 문의에 대한 답변을 비동기적으로 가져오기
                    $.ajax({
                        url: "inquiryAns.do",
                        type: "get",
                        dataType: "json", // JSON으로 데이터를 요청
                        data: { inqId: inqId },
                        success: function (replyData) {
                            if (replyData && replyData) {
                                // 답변이 있는 경우 토글 내용에 추가
                                replyContent.html("<div class='inqAnsContent'>" + replyData.ansContent + "</div>");
                                replyContent2.html("<div class='inqAnsDate'>" +new Date(replyData.ansDate).toLocaleDateString('ko-KR', { year: 'numeric', month: '2-digit', day: '2-digit' }).replace(/\.$/, '')+ "</div>");
                            } else {
                                // 답변이 없으면 토글 내용에 메시지 추가
                                replyContent.html("<div class='inqNoAns'>답변 대기 상태입니다. 조금만 기다려주세요 :)</div>");
                            }

                            // 토글 내용이 로드된 후에 토글 표시
                            $(this).next(".toggleContent").slideToggle();
                        },
                        error: function () {
                        	replyContent.html("<div class='inqNoAns'>답변 대기 상태입니다. 조금만 기다려주세요 :)</div>");
                        }
                    });
                }

                // 토글 내용 표시/숨김 토글
                $(this).next(".toggleContent").slideToggle();
            });
        },
        error: function () {
            alert("실패~~");
        }
    });
}

//이전 페이지에 대한 데이터 호출ajax
function handleBeforePage(cPage) {
	$.ajax({
        url: "inquiryList.do",
        type: "get",
        dataType: "json",
        data: { productId: productId, userId: "${loginUser.userId}", cPage: cPage }, // 세션 값 전달
        success: function (data) {
            console.log(data);
            let dispTag = "<div class='inquiryList' >";
 for (inqList of data) {
            	
            	inqList.cPage = parseInt(inqList.cPage);
                // userName의 가운데 글자를 '*'로 변경
                let maskedUserName = maskMiddleCharacter(inqList.userName);

                dispTag += "<div class='inqDate'>" + new Date(inqList.inqDate).toLocaleDateString('ko-KR', { year: 'numeric', month: '2-digit', day: '2-digit' }).replace(/\.$/, '') + "</div>"; // 날짜 형식 변환
                // "답변완료"인 경우 글자색을 주황색으로 변경
                if (inqList.inqAnswered === '답변완료') {
                    dispTag += "<div class='inqAnswered' style='color: rgb(231 129 17 / 76%);'>" + inqList.inqAnswered + "</div>";
                } else {
                    // "답변대기"인 경우 글자색을 회색으로 변경
                    dispTag += "<div class='inqAnswered' style='color: #0000007a;'>" + inqList.inqAnswered + "</div>";
                }
                dispTag += "<div class='inqUserName'>" + maskedUserName + "</div>";
                

                // userId가 세션의 loginUser와 일치할 경우 수정, 삭제 링크 추가
                if (inqList.userId == "${loginUser.userId}" ) {
                	dispTag += "<div class='inqDelete'><a href='javascript:handleInquiryDelete(" + inqList.inqId + ")'>삭제</a></div>";
                	dispTag += "<div class='inqUpdate'><a href='javascript:handleInquiryUpdate(" + inqList.inqId + ")'>수정 </a></div>";
                }

                // userId가 세션의 loginUser와 일치하고, 비밀글여부가 Y일경우 또는 비밀글여부가 null일경우에 문의 답변과 문의내용 표시
                if (inqList.userId == "${loginUser.userId}" & inqList.inqPrivate == 'Y' || inqList.inqPrivate == null) {
	                dispTag += "<div class='container text-center'>";
	                dispTag += "<div class='row'>";
	                dispTag += "<div class='col-sm-15'><div class='inqTitle'>" + inqList.inqTitle + "</div><br><div class='inqContent'>" + inqList.inqContent + "</div>";
	                //dispTag += "<div class='inqContent'>" + inqList.inqContent + "</div>";
	               	// 토글 버튼에 대한 이벤트 핸들러 추가
	                dispTag += "</div></div>";
	                dispTag += "</div>";
	                dispTag += "<button class='toggleButton' data-inqid='" + inqList.inqId + "'>문의답변</button>";
                }else {
                	dispTag += "<div class='secret'>비밀글입니다.</div>";
                }
                
                // 토글할 내용 추가
                dispTag += "<div class='toggleContent' style='display: none;'>";
                dispTag += "<div class='replyContent' id='replyContent_" + inqList.inqId + "'></div>";
                dispTag += "<div class='replyContent2' id='replyContent_2" + inqList.inqId + "'></div>";
                dispTag += "</div>";

                dispTag += "<hr>";
            }
            dispTag += "</div>";
            
            //페이징
            if (inqList.cPage == 0 && inqList.totPage == 0) {
                dispTag += "<button class='disAble1' disabled>이전</button><button class='disAble' disabled>다음</button>";
            } else if (inqList.cPage == 1) {
                inqList.cPage = 1;
                dispTag += "<button class='disAble1' disabled>이전</button><button class='next' onclick='handleNextPage(" + (inqList.cPage + 1) + ")'>다음</button>";
            } else if (Number(inqList.totPage) <= Number(inqList.cPage)) {
                dispTag += "<button class='back' onclick='handleBeforePage(" + (inqList.cPage - 1) + ")'>이전</button><button class='disAble' disabled>다음</button>";
            } else {
                dispTag += "<button class='back' onclick='handleBeforePage(" + (inqList.cPage - 1) + ")'>이전</button><button class='next' onclick='handleNextPage(" + (inqList.cPage + 1) + ")'>다음</button>";
            }
            $("#listDisp").html(dispTag);

            // 토글 버튼에 대한 이벤트 핸들러 추가
            $(".toggleButton").click(function () {
                var inqId = $(this).data("inqid");
                var replyContent = $("#replyContent_" + inqId);
                var replyContent2 = $("#replyContent_2" + inqId);

                // 이미 로드된 경우 다시 로드하지 않음
                if (replyContent.html().trim() === "") {
                    // 해당 문의에 대한 답변을 비동기적으로 가져오기
                    $.ajax({
                        url: "inquiryAns.do",
                        type: "get",
                        dataType: "json", // JSON으로 데이터를 요청
                        data: { inqId: inqId },
                        success: function (replyData) {
                            if (replyData && replyData) {
                                // 답변이 있는 경우 토글 내용에 추가
                                replyContent.html("<div class='inqAnsContent'>" + replyData.ansContent + "</div>");
                                replyContent2.html("<div class='inqAnsDate'>" +new Date(replyData.ansDate).toLocaleDateString('ko-KR', { year: 'numeric', month: '2-digit', day: '2-digit' }).replace(/\.$/, '')+ "</div>");
                            } else {
                                // 답변이 없으면 토글 내용에 메시지 추가
                                replyContent.html("<div class='inqNoAns'>답변 대기 상태입니다. 조금만 기다려주세요 :)</div>");
                            }

                            // 토글 내용이 로드된 후에 토글 표시
                            $(this).next(".toggleContent").slideToggle();
                        },
                        error: function () {
                        	replyContent.html("<div class='inqNoAns'>답변 대기 상태입니다. 조금만 기다려주세요 :)</div>");
                        }
                    });
                }

                // 토글 내용 표시/숨김 토글
                $(this).next(".toggleContent").slideToggle();
            });
        },
        error: function () {
            alert("실패~~");
        }
    });
}
//다음 페이지에 대한 데이터 호출ajax
function handleNextPage(cPage) {

    handleBeforePage(cPage);

} 
// 문의 목록을 로드하는 함수를 호출
inquiryList();
</script>
	    </div>
	    <!-- footer -->
	<%@ include file="../../../css/headerFooter/shopFooter.jsp" %>

	<!-- 부트스트랩 -->
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

</body>
<script>
//문의등록 버튼동작 : 문의하기
$("#inquiryButton").on("click", function(e) {
    e.preventDefault();			
    
    if ("${loginUser}" == "") {
        alert("로그인이 필요합니다. 로그인 후 이용해주세요.");
        // 로그인 페이지로 이동!!!
        location.href="/biz/user/goUserLoginPage.do";
    }

    let popWidth = 800; // 수정: 팝업 창 너비를 800으로 설정
    let popHeight = window.innerHeight; // 브라우저 높이와 동일하게 설정

    // 화면 중앙에 위치하도록 계산
    let left = (window.innerWidth - popWidth) / 2 + window.screenX;
    let top = (window.innerHeight - popHeight) / 2 + window.screenY;

    let popUrl = "getInQuiryInsertView.do?userId=" + "${loginUser.userId}" + "&productId=" + productId;
    let popOption = "width=" + popWidth + ", height=" + popHeight + ", top=" + top + "px, left=" + left + "px, scrollbars=yes";

    window.open(popUrl, "문의 하기", popOption);
});

//문의 업데이트버튼동작 : 문의수정
function handleInquiryUpdate(inqId) {

    let popWidth = 800; // 수정: 팝업 창 너비를 800으로 설정
    let popHeight = window.innerHeight; // 브라우저 높이와 동일하게 설정

    // 화면 중앙에 위치하도록 계산
    let left = (window.innerWidth - popWidth) / 2 + window.screenX;
    let top = (window.innerHeight - popHeight) / 2 + window.screenY;

    let popUrl = "InquiryUpdateView.do?userId=" + "${loginUser.userId}" + "&productId=" + productId + "&inqId=" + inqId ;
    let popOption = "width=" + popWidth + ", height=" + popHeight + ", top=" + top + "px, left=" + left + "px, scrollbars=yes";

    window.open(popUrl, "문의 수정하기", popOption);
}

// 문의 삭제버튼 동작 : 문의 삭제
function handleInquiryDelete(inqId) {
    if (confirm("문의를 삭제하시겠습니까?")) {
        // 삭제를 위한 URL 생성
        var deleteUrl = 'deleteInquiry.do?inqId=' + inqId +"&productId=" + productId;

        // 페이지 이동
        window.location.href = deleteUrl;
    }
	
}
</script>
</html> 