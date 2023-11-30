<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지(일반회원)-상품문의</title>
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

//작성한 문의 리스트
    $.ajax({
        url: "MyInquiry.do",
        type: "get",
        dataType: "json",
        data: { userId: "${loginUser.userId}" }, // 세션 값 전달
        success: function (data) {
            console.log(data);
            let dispTag = "<h3>나의 문의</h3>";  	
            dispTag += "<div class='inquiryDetail'> 상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.</div>";
            dispTag += "<div class='inquiryDetail2'> 배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 오키친 고객센터를 이용해주세요.</div><hr>";
            for (MyInquiry of data) {
				
            	dispTag += "<div class='inqWrap'>";
            	
                dispTag += "<div class='inqDate'>" +new Date(MyInquiry.inqDate).toLocaleDateString('ko-KR', { year: 'numeric', month: '2-digit', day: '2-digit' }).replace(/\.$/, '')+ "</div>"; // 날짜 형식 변환
                
                if (MyInquiry.inqAnswered === '답변완료') {
                    dispTag += "<div class='inqAnswered' style='color: rgb(231 129 17 / 76%);'>" + MyInquiry.inqAnswered + "</div>";
                } else {
                    // "답변대기"인 경우 글자색을 회색으로 변경
                    dispTag += "<div class='inqAnswered' style='color: #0000007a;'>" + MyInquiry.inqAnswered + "</div>";
                }
                
                dispTag += "</div>";
                
                dispTag += "<div class='productWrap'>";
                dispTag += "	<a href='${pageContext.request.contextPath }/product/prodDetail.do?productId="+MyInquiry.productId +"'><img  src='" + "${pageContext.request.contextPath}/productImage/" + MyInquiry.image + "' alt='상품 이미지' class='product-image'></a>";
                dispTag += "	<div class='productInfo'><a href='${pageContext.request.contextPath }/product/prodDetail.do?productId="+MyInquiry.productId +"'>";
                dispTag += "		<div class='productBrand'>" + "[ " + MyInquiry.brand + " ]</div>";
                dispTag += "		<div class='productTitle'>" + MyInquiry.title + "</div></a>";
                dispTag += "		<div class='inqTitle'>" + MyInquiry.inqTitle + "</div>";
                dispTag += "	</div>";
                dispTag += "	<div class='inqContent'>" + MyInquiry.inqContent + "</div>";
                dispTag += "</div>";
                
                dispTag += "<a class='inqUpdate' href='javascript:handleInquiryDelete(" + MyInquiry.inqId + ", " + MyInquiry.productId + ")'>삭제</a>";
                dispTag += "<a class='inqDelete' href='javascript:handleInquiryUpdate(" + MyInquiry.inqId + ", " + MyInquiry.productId + ")'>수정</a>";

                
                // 토글 버튼에 대한 이벤트 핸들러 추가
                dispTag += "<button class='toggleButton' data-inqid='" + MyInquiry.inqId + "'>문의답변</button>";

                // 토글할 내용 추가
                dispTag += "<div class='toggleContent' style='display: none;'>";
                dispTag += "<div class='replyContent' id='replyContent_" + MyInquiry.inqId + "'></div>";
                dispTag += "<div class='replyContent2' id='replyContent_2" + MyInquiry.inqId + "'></div>";
                dispTag += "</div>";

                dispTag += "<hr>";
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
                                replyContent.html(replyData.ansContent + "<div class='inqAnsDate'>" + new Date(replyData.ansDate).toLocaleDateString('ko-KR', { year: 'numeric', month: '2-digit', day: '2-digit' }).replace(/\.$/, '') + "</div>");
                            } else {
                                // 답변이 없으면 토글 내용에 메시지 추가
                                replyContent.html("답변 대기 상태입니다. 조금만 기다려주세요 :)");
                            }

                            // 토글 내용이 로드된 후에 토글 표시
                            $(this).next(".toggleContent").slideToggle();
                        },
                        error: function () {
                        	replyContent.html("답변 대기 상태입니다. 조금만 기다려주세요 :)");
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

</script>
<style>
	.inner {
	width: 960px;
	margin: 0 auto;
	}
	button.btn {
		border-color: black;
    	border-width: thin
	}
	.btn-group-vertical {
		margin-bottom: 100px;
	}
	.reviewTitle {
		margin-top: 100px;
		margin-bottom: 30px;
	}
	.reviewView {
	    margin-top: 46px;
	    margin-left: 70px;
	}
	a.btn.review {
		border-color: black;
    	border-width: thin
	}
	div#listDisp {
		margin-left: -133px;
	}
	.product-image {
	    height: 65px;
	    width: 65px;
	    border-radius: 5px;
	    margin-left: 12px;
	}
	.reviewAble {
	    font-weight: bold;
	    font-size: medium;
	    margin-top: 56px;
	}
	button.btn.btn-primary.btn-sm.reply_button{
	    margin-left: 464px;
	    float: none;
	    background-color: rgb(231, 129, 17);
	    border-color: rgb(231, 129, 17);
	    border-radius: 5px;
	    font-size: small;
	}
	button.btn.btn-primary.btn-sm.reply_button2{
	    margin-left: 464px;
	    float: none;
	    background-color: rgb(231, 129, 17);
	    border-color: rgb(231, 129, 17);
	    border-radius: 5px;
	    font-size: small;
	    margin-top: -66px;
	}
	div.replyContent{
		margin-left: 12px;
	    padding-left: 15px;
	    margin-left: 15px;
	    margin-top: 15px;
	    margin-bottom: 15px;
	    padding-top: 15px;
	    background-color: #0000000f;
	    border-radius: 10px;
	    padding-bottom: 15px;
	}
	
	.productWrap {
		display: flex;
		flex-wrap: wrap;
	}
	
	.productInfo {
		display: flex;
	    flex-wrap: wrap;
	    width: calc(100% - 90px);
	    margin-left: 10px;
	}
	a:hover {
 	 	text-decoration: none !important;
	}
	div.inqDate {
		margin-left: 12px;
    	color: #00000075;
    	font-weight: 600;
        margin-bottom: 15px;
	}
	div.productBrand {
		padding-top: 10px;
	    color: #00000075;
	    font-weight: 600;
	    float: inline-start;
	}
	div.productTitle{
	    padding-left: 63px;
	    color: #00000075;
	    font-weight: 600;
	    padding-top: 12px;
	}
	.inqWrap {
		display: flex;
		justify-content: space-between;
		margin-bottom: 10px;
	}
	
	div.inqAnswered{
    	color: #00000075;
    	font-weight: 600;
    	margin-right: 15px;
	}
	div.inqTitle{
		width: 100%;
   		 height: 13px;
	}
	div.inqContent{
		width: 100%;
		margin: 10px 0;
		margin-left: 12px;
	    padding-top: 15px;
	    padding-bottom: 15px;
	}
	a.inqUpdate{
		margin-right: 15px;
	    border-top-right-radius: 5px;
	    border-bottom-right-radius: 5px;
	    padding-right: 0.5px;
	    background-color: rgb(231 129 17 / 22%);
	    padding: 3px;
	    float: right;
	}
	a.inqDelete{
		border-top-left-radius: 5px;
	    border-bottom-left-radius: 5px;
	    padding-left: 1.5px;
	    background-color: rgb(231 129 17 / 22%);
	    padding-right: 1px;
	    padding: 3px; 
	    float: right;
	}
	button.toggleButton{
		border: none;
	    background-color: rgb(231 129 17 / 76%);
	    color: white;
	    border-radius: 5px;
	    margin-left: 15px;
	    padding-top: 5px;
	    padding-bottom: 5px;
	}
	.toggleButton:focus{
		outline:none !important;
		box-shadow:none !important;
	}
	div.row {
		display: -webkit-box;
	    display: flex;
	    flex-wrap: wrap;
	    width: 155.5%;
	} 
	.col-4 {
		-webkit-box-flex: 0 !important;
	    -ms-flex: 0 0 33.3333333333% !important;
	    flex: 0 0 33.3333333333% !important;
	    max-width: 13.3333333333% !important;
	}
	div.inquiryDetail{
		color: #0000008f;
	}
	div.inquiryDetail2{
		color: #0000008f;
		margin-bottom: 42px;
	}
	
	h3 {
		text-transform: uppercase;
	    letter-spacing: 3px;
		margin-bottom: 36px !important;
		margin-top: 9px !important;
		
	}
	p.css-uy94b2.e6qx2kx0{
    	margin-bottom: 0px;
    }
    body {
    	margin-right: 76px;
    }
    .css-17cdx60{
    	width: 1019px;
	    margin-left: -126px !important;
    }
    .css-175n8cp{
    	width: 1532px;
    	margin-top: 10px;
    }
    .inqAnsDate {
    	color: #0000007d;
   	 	margin-top: 13px;
    }
</style>
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
	
	<!-- 마이페이지 후기페이지 -->
	
<div class="inner">
	
	<!-- 문의를 수정하고 돌아왔을때 성공여부와 팝업창 닫기 -->
<c:if test="${success}">
    <script>
        // 성공한 경우 부모 창 새로고침
        window.close();
        window.opener.location.reload();
        alert('문의가 수정되었습니다.');
    </script>
</c:if> 
	 <div class="row">
	   <div class="col-4">
	   </div>
	    <div class="col-6">
    			
 		<div id="listDisp">
   		</div>
	  </div>
	  
	
	</div>
</div>
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
<script>
//문의 업데이트버튼동작 : 문의수정
function handleInquiryUpdate(inqId, productId) {

   let popWidth = 800; // 수정: 팝업 창 너비를 800으로 설정
   let popHeight = window.innerHeight; // 브라우저 높이와 동일하게 설정

   // 화면 중앙에 위치하도록 계산
   let left = (window.innerWidth - popWidth) / 2 + window.screenX;
   let top = (window.innerHeight - popHeight) / 2 + window.screenY;

   let popUrl = "InquiryUpdateView.do?userId=" + "${loginUser.userId}" + "&productId=" + productId + "&inqId=" + inqId ;
   let popOption = "width=" + popWidth + ", height=" + popHeight + ", top=" + top + "px, left=" + left + "px, scrollbars=yes";

   window.open(popUrl, "문의 수정하기", popOption);
} 

//문의 삭제버튼 동작 : 문의 삭제
function handleInquiryDelete(inqId) {
   if (confirm("문의를 삭제하시겠습니까?")) {
       // 삭제를 위한 URL 생성
       var deleteUrl = 'deleteInquiry2.do?inqId=' + inqId;

       // 페이지 이동
       window.location.href = deleteUrl;
   }
	
}

</script>
</html>