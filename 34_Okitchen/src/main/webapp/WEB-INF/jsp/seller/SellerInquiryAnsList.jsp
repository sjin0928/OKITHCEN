<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지-[답변완료]상품문의</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	window.onload = function() {
		if("${sellerVO.sellerId}" === ("") ||"${sellerVO.sellerId}" === (null)){
			alert("세션만료 : 다시 로그인 해주세요.")
			location.href="${pageContext.request.contextPath}/sellerLogin.jsp";
		}
	}
</script>

<script>
//문의 리스트 함수 호출
$(document).ready(function () {
    loadInquiryList();
});
//세션 값 JavaScript 변수에 저장
var sellerId = "${sellerVO.sellerId }";

function loadInquiryList() {
    $.ajax({
        url: "SellerinquiryAnsList.do",
        type: "get",
        dataType: "json",
        data: { sellerId: sellerId }, // 세션 값 전달
        success: function (data) {
            console.log(data);
            let dispTag = "<div class='inquiryList' ><hr>";
            for (inqList of data) {
            	
                dispTag += "<div class='productWrap'>";
                dispTag += "	<img  src='" + "${pageContext.request.contextPath}/productImage/title/" + inqList.image + "' alt='상품 이미지' class='product-image'>";
                dispTag += "	<div class='productInfo'>";
                dispTag += "		<div class='productTitle'>" + inqList.title + "</div>";
                dispTag += "		<div class='inqTitle'>" + inqList.inqTitle + "</div>";
                dispTag += "	</div>";
                dispTag += "	<div class='inqContent'>" + inqList.inqContent + "</div></div>";
                dispTag += "</div>";

                // 토글 버튼에 대한 이벤트 핸들러 추가
                dispTag += "<button class='toggleButton' data-inqid='" + inqList.inqId + "'>문의답변</button>";

                // 토글할 내용 추가
                dispTag += "<div class='toggleContent' style='display: none;'>";
                dispTag += "<div class='replyContent' id='replyContent_" + inqList.inqId + "'></div>";
                dispTag += "<div class='replyContent2' id='replyContent_2" + inqList.inqId + "'></div>";
                dispTag += "</div>";

                dispTag += "<hr>";
            }
            dispTag += "</div>";
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
                                replyContent2.html(replyData.ansContent);
                                replyContent2.html(replyData.ansContent + "<div class='inqAnsDate'>" + new Date(replyData.ansDate).toLocaleDateString('ko-KR', {
                                    year: 'numeric',
                                    month: '2-digit',
                                    day: '2-digit'
                                }).replace(/\.$/, '')+"</div>");
                                replyContent2.append("<a class ='inqUpdate' href='javascript:handleInquiryAnsUpdate(" + replyData.inqId + ", " + replyData.ansId + ")'>수정</a>");
                                replyContent2.append("<a class = 'inqDelete' href='javascript:handleInquiryAnsDelete(" + replyData.inqId + ", " + replyData.ansId + ")'>삭제</a>");
                            } else {
                                // 답변이 없으면 토글 내용에 메시지 추가
                                replyContent2.html("답변 대기 상태입니다. 조금만 기다려주세요 :)");
                            }

                            // 토글 내용이 로드된 후에 토글 표시
                            $(this).next(".toggleContent").slideToggle();
                        },
                        error: function () {
                        	replyContent2.html("답변 대기 상태입니다. 조금만 기다려주세요 :)");
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


</script>
<style>
	.inner {
	width: 960px;
	margin-left: 365px;
	}
	button.btn {
		border-color: black;
    	border-width: thin
	}
	.btn-group-vertical {
		margin-bottom: 100px;
	}
	div#listDisp {
		margin-left: -141px;
	}
	.product-image {
	    height: 65px;
	    width: 65px;
	    border-radius: 5px;
	    margin-right: 32px;
	    margin-left: 18px;
	    margin-top: 10px;
	    margin-bottom: -15px;
	}
	button.toggleButton{
		margin-left: 15px;
	    background-color: rgb(231 129 17 / 76%);
	    border-color: rgb(231 129 17 / 76%);
	    border-radius: 5px;
	    font-size: small;
	    padding: 5px;
	    color: white;
	    margin-top: 18px;
	    border-style: none;
	}
	.toggleButton:focus{
		outline:none !important;
		box-shadow:none !important;
	}
	div.productTitle{
	    margin-top: -40px;
    	margin-left: 102px;
    	color: #00000075;;
	    font-weight: 600;
	}
	div.inqTitle{
		margin-left: 102px;
	}
	div.inqContent{
	    margin-top: 34px;
	    margin-left: 15px;
	    width: 916px;
	}
	div.reply_button_wrap{
		margin-bottom: 52px;
	}
	h5{
		margin-bottom: 32pxv !important;
	    margin-top: 30px !important;
	    margin-left: 224px !important;
	}
	a:hover {
 	 	text-decoration: none !important;
	}
	div.replyContent2 {
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
	.inqAnsDate {
		color: #0000007d;
    margin-top: 13px;
	}
	.inqUpdate {
	float: right;
		margin-right: 57px;
    margin-top: -20px;
	}
	.inqDelete {
		float: right;
    margin-left: 972px;
    margin-right: 14px;
    margin-top: -21px;
	}
</style>

<!-- 메뉴바 외 코드 -->
   <link href="${pageContext.request.contextPath}/css/cssStyle/style.css" rel="stylesheet" />
<!-- 메뉴바 부트스트랩 템플릿 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
</head>
<!-- header -->
	<%@ include file="../../../css/headerFooter/sellerLogoutHeader.jsp" %>
<body>
	<h5>[답변완료]문의 리스트</h5>
	<div class="inner">
		<div id="listDisp">
		[답변완료]문의 리스트
  		</div>
	</div>

 <!-- footer -->
	<%@ include file="../../../css/headerFooter/sellerFooter.jsp" %>

	<!-- 부트스트랩 -->
</body>
   <!-- 문의를 등록하고 돌아왔을때 성공여부와 팝업창 닫기 -->
<c:if test="${success}">
    <script>
        // 성공한 경우 부모 창 새로고침
        window.opener.location.reload();
        window.close();
        alert('문의가 수정 되었습니다.');

    </script>
 </c:if>   
<script>

 
//문의답변등록 버튼동작 : 문의답변쓰기
$(document).on("click", ".reply_button", function(e) {
    e.preventDefault();			
 	// 데이터 속성으로 설정한 주문 아이디 가져오기
    const inqId = $(this).data("inqid");
    
    let popWidth = 800; // 수정: 팝업 창 너비를 800으로 설정
    let popHeight = window.innerHeight; // 브라우저 높이와 동일하게 설정

    // 화면 중앙에 위치하도록 계산
    let left = (window.innerWidth - popWidth) / 2 + window.screenX;
    let top = (window.innerHeight - popHeight) / 2 + window.screenY;

    let popUrl = "getinqContent.do?inqId=" + inqId;
    let popOption = "width=" + popWidth + ", height=" + popHeight + ", top=" + top + "px, left=" + left + "px, scrollbars=yes";

    window.open(popUrl, "리뷰 쓰기", popOption, "popup1");
});


//문의 업데이트버튼동작 : 문의답변수정
 function handleInquiryAnsUpdate(inqId, ansId) {

    let popWidth = 800; // 수정: 팝업 창 너비를 800으로 설정
    let popHeight = window.innerHeight; // 브라우저 높이와 동일하게 설정

    // 화면 중앙에 위치하도록 계산
    let left = (window.innerWidth - popWidth) / 2 + window.screenX;
    let top = (window.innerHeight - popHeight) / 2 + window.screenY;

    let popUrl = "InquiryAnsUpdateView.do?inqId=" + inqId ;
    let popOption = "width=" + popWidth + ", height=" + popHeight + ", top=" + top + "px, left=" + left + "px, scrollbars=yes";

    window.open(popUrl, "문의 수정하기", popOption);
} 

// 문의 삭제버튼 동작 : 문의 삭제
function handleInquiryAnsDelete(inqId) {
    if (confirm("문의답변을 삭제하시겠습니까?")) {
        // 삭제를 위한 URL 생성
        var deleteUrl = 'deleteInquiryAns.do?inqId=' + inqId;

        // 페이지 이동
        window.location.href = deleteUrl;
    }
	
}

</script>
</html>