<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지-[답변대기]상품문의</title>
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
        url: "SellerinquiryList.do",
        type: "get",
        dataType: "json",
        data: { sellerId: sellerId }, // 세션 값 전달
        success: function (data) {
            console.log(data);
            let dispTag = "<div class='inquiryList' ><div class='wrap'><hr>";
            for (inqList of data) {
                
                dispTag += "<div class='productWrap'>";
                dispTag += "	<img  src='" + "${pageContext.request.contextPath}/productImage/title/" + inqList.image + "' alt='상품 이미지' class='product-image'>";
                dispTag += "	<div class='productInfo'>";
                dispTag += "		<div class='productTitle'>" + inqList.title + "</div>";
                dispTag += "		<div class='inqTitle'>" + inqList.inqTitle + "</div>";
                dispTag += "	</div>";
                dispTag += "	<div class='inqContent'>" + inqList.inqContent + "</div></div>";
                dispTag += "</div>";
                
                dispTag += "<div class='reply_button_wrap'>";
                // 주문 아이디를 데이터 속성(data-orderid)으로 설정
                dispTag += "<button type='button' class='btn btn-primary btn-sm reply_button' data-inqid='" + inqList.inqId + "'>답변등록</button>";
                dispTag += "</div>";

                dispTag += "<hr>";
            }
            dispTag += "</div>";
            $("#listDisp").html(dispTag);

        },

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

	button.btn.btn-primary.btn-sm.reply_button2{
	    margin-left: 15px;
	    float: none;
	    background-color: rgb(231 129 17 / 76%);
	    border-color: rgb(231 129 17 / 76%);
	    border-radius: 5px;
	    font-size: small;
	    margin-bottom: -114px;
	    padding: 5px;
	    box-shadow: none !important;
	}
		button.btn.btn-primary.btn-sm.reply_button{
		margin-top: -66px;
	    margin-left: 15px;
	    float: none;
	    background-color: rgb(231 129 17 / 76%);
	    border-color: rgb(231 129 17 / 76%);
	    border-radius: 5px;
	    font-size: small;
	    margin-bottom: -114px;
	    padding: 5px;
	    box-shadow: none !important;
	}
	a:hover {
 	 	text-decoration: none !important;
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
</style>

<!-- 메뉴바 외 코드 -->
   <link href="${pageContext.request.contextPath}/css/cssStyle/style.css" rel="stylesheet" />
<!-- 메뉴바 부트스트랩 템플릿 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
</head>
<!-- header -->
	<%@ include file="../../../css/headerFooter/sellerLogoutHeader.jsp" %>
<body>
	<h5>[답변대기]문의 리스트</h5>
	<div class="inner">
		 		<div id="listDisp">
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
        alert('문의가 등록 되었습니다.');

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


//문의 업데이트버튼동작 : 문의수정
 function handleInquiryUpdate(inqId, productId) {

    let popWidth = 800; // 수정: 팝업 창 너비를 800으로 설정
    let popHeight = window.innerHeight; // 브라우저 높이와 동일하게 설정

    // 화면 중앙에 위치하도록 계산
    let left = (window.innerWidth - popWidth) / 2 + window.screenX;
    let top = (window.innerHeight - popHeight) / 2 + window.screenY;

    let popUrl = "InquiryUpdateView.do?sellerId=" + sellerId + "&productId=" + productId + "&inqId=" + inqId ;
    let popOption = "width=" + popWidth + ", height=" + popHeight + ", top=" + top + "px, left=" + left + "px, scrollbars=yes";

    window.open(popUrl, "문의 수정하기", popOption);
} 

// 문의 삭제버튼 동작 : 문의 삭제
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