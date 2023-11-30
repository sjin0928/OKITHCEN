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
<!-- 리뷰를 쓰고 돌아왔을때 성공여부와 팝업창 닫기 -->
 <c:if test="${sucessInsert == 'sucessInsert'}">
<script>
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
    alert('리뷰가 성공적으로 등록되었습니다.');
</script>
</c:if> 
<c:if test="${successUpdate == 'sucessUpdate'}">
    <script>
        // 성공한 경우 부모 창 새로고침
        window.close();
        alert('리뷰가 수정되었습니다.');

        // .Review_button 클래스를 가진 버튼을 찾아 포커스
        var reviewButton = window.opener.document.querySelector('.Review_button');
        if (reviewButton) {
            reviewButton.focus();
        }
    </script>
</c:if>
<script>
//세션 값 JavaScript 변수에 저장
var userId = "${loginUser.userId}";
//작성가능한 후기상품 리스트
$(document).ready(function() {
    fetchAbleReview(userId);

    // 작성 가능한 후기 데이터를 가져오고 화면에 표시하는 함수
    function fetchAbleReview(userId) {
        $.ajax({
            url: "ableReview.do",
            type: "get",
            dataType: "json",
            data: { userId: userId },
            success: function (data) {
                console.log(data);
                displayReviewData(data);
            },
            error: function () {
                alert("실패~~");
            }
        });
    }

    // 작성 가능한 후기 데이터를 화면에 표시하는 함수
    function displayReviewData(data) {
        let dispTag = "<div class='reviewAble' ><hr>";
        for (ableReview of data) {
            dispTag += "<div>";
            dispTag += "<a href='${pageContext.request.contextPath }/product/prodDetail.do?productId="+ableReview.productId +"'><img src='" + "${pageContext.request.contextPath}/productImage/title/" + ableReview.image + "' alt='상품 이미지' class='product-image'></a>";
            dispTag += "<div class='reviewBrand'><a href='${pageContext.request.contextPath }/product/prodDetail.do?productId="+ableReview.productId +"'>";
            dispTag += "[ " + ableReview.brand + " ] ";
            dispTag += ableReview.title + "</a></div><br>";
            //dispTag += "<div class='reviewDate'>";
            //dispTag += new Date(ableReview.orderDate).toLocaleDateString('ko-KR', { year: 'numeric', month: '2-digit', day: '2-digit' }).replace(/\.$/, ''); // 날짜 형식 변환
            //dispTag += "</div>";
            dispTag += "<div class='reply_button_wrap'>";
            // 주문 아이디를 데이터 속성(data-orderid)으로 설정
            dispTag += "<button type='button' class='btn btn-primary btn-sm reply_button' data-orderid='" + ableReview.orderDetailId + "' data-productid='" + ableReview.productId + "'>후기등록</button>";
            dispTag += "</div>";
            dispTag += "<hr></div>";
        }
        dispTag += "</div>";
        $("#listDisp").html(dispTag);
    }
    // 작성 가능 후기 버튼 클릭 시에도 데이터를 가져오도록 이벤트 핸들러 등록
    $(document).on("click", ".ableReview_button", function(e) {
        e.preventDefault();
        fetchAbleReview(userId);
    });

});

//작성한 후기상품리스트
$(document).on("click", ".Review_button", function(e) {
    e.preventDefault();   
        $.ajax({
            url: "writeReview.do",
            type: "get",
            dataType: "json",
            data: { userId: "${loginUser.userId}" }, // 세션 값 전달
            success: function (data) {
                console.log(data);
                let dispTag = "<div class='reviewAble' ><hr>";
                for (writeReview of data) {
                    dispTag += "<div>";
                    dispTag += "<a href='${pageContext.request.contextPath }/product/prodDetail.do?productId="+writeReview.productId +"'><img src='" + "${pageContext.request.contextPath}/productImage/title/" + writeReview.image + "' alt='상품 이미지' class='product-image'></a>";
                    dispTag += "<div class='reviewBrand'><a href='${pageContext.request.contextPath }/product/prodDetail.do?productId="+writeReview.productId +"'>";
                    dispTag += "[ " + writeReview.brand + " ] ";
                    dispTag += writeReview.title + "</a></div><br>";
                    //dispTag += "<div class='reviewDate'>";
                    //dispTag += new Date(writeReview.orderDate).toLocaleDateString('ko-KR', { year: 'numeric', month: '2-digit', day: '2-digit' }).replace(/\.$/, ''); // 날짜 형식 변환
                    //dispTag += "</div>";
                    dispTag += "<div class='reply_button_wrap'>";
                    // 주문 아이디를 데이터 속성(data-orderid)으로 설정
                    dispTag += "<button type='button' class='btn btn-primary btn-sm reply_button2' data-orderid='" + writeReview.orderDetailId + "' data-productid='" + writeReview.productId + "'>후기수정</button>";
                    dispTag += "<hr></div>";
                    dispTag += "</div>";
                }
                dispTag += "</div>";
                $("#listDisp").html(dispTag);
            },
            error: function () {
                alert("실패~~");
            }
        });
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
      margin-top: 41px;
       margin-left: 70px;
   }
   a.btn.review {
      border-color: black;
       border-width: thin
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
       margin-top: 8px;
       float: inline-start;
   }
   .reviewAble {
       font-weight: bold;
       font-size: medium;
       margin-top: 56px;
   }
   button.btn.btn-primary.btn-sm.reply_button{
       margin-left: 555px;
       float: none;
       background-color: rgb(231, 129, 17);
       border-color: rgb(231, 129, 17);
       border-radius: 5px;
       font-size: small;
       margin-top: -68px;
   }
   button.btn.btn-primary.btn-sm.reply_button2{
       margin-left: 555px;
       float: none;
       background-color: rgb(231, 129, 17);
       border-color: rgb(231, 129, 17);
       border-radius: 5px;
       font-size: small;
       margin-top: -68px;
   }
   a:hover {
        text-decoration: none;
   }
   div.reviewBrand {
       margin-left: -9px;
       margin-bottom: -14px;
       margin-top: 31px;
       float: inline-start;
       padding-bottom: 26px;
   }
   button.btn.ableReview_button{
       width: 389px;
       margin-left: -138px;
       border-top-left-radius: 10px;
       border-color: #00000024;
       background-color: white;
       margin-right: -1px;
       padding: 15px;
       margin-bottom: -38px;
       margin-top: 32px;
   }

   .ableReview_button:focus{
      box-shadow:none !important;
   }

   .Review_button:focus{
      box-shadow:none !important;
   }

   .ableReview_button:hover{
      background-color: #00000012 !important;
      box-shadow:none !important;
   }

   .Review_button:hover{
      background-color: #00000012 !important;
      box-shadow:none !important;
   }
   button.btn.Review_button{
       width: 390px;
       border-top-right-radius: 10px;
       border-color: #00000024;
       margin-bottom: -15.5px;
       background-color: white;
       margin-left: -5px;
       padding: 15px;
       margin-bottom: -38px;
       margin-top: 32px;
   }
     div.row {
      display: -webkit-box;
       display: flex;
       flex-wrap: wrap;
       margin-right: -15px;
       width: 155.5%;
       margin-top: -22px;
   } 
   .col-4 {
      -webkit-box-flex: 0 !important;
       -ms-flex: 0 0 33.3333333333% !important;
       flex: 0 0 33.3333333333% !important;
       max-width: 13.3333333333% !important;
   }
   h3 {
       margin-top: -13px !important;
       margin-left: -138px;
   }
    body {
       margin-right: 76px !important;
    }
    .css-17cdx60{
       width: 1019px !important;
       margin-left: -126px !important;
    }
    .css-175n8cp{
       width: 1532px !important;
       margin-top: 10px !important;
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
   

    <div class="row">
      <div class="col-4">

      </div>
       <div class="col-6">
             <p class="reviewView">
               <h3>상품 후기</h3>
                <button type="button" class="btn ableReview_button">작성 가능 후기</button>
                 <button type="button" class="btn Review_button">작성한 후기</button>
                <div id="listDisp">
                </div>
   
            </p>
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

 
//리뷰등록 버튼동작 : 리뷰쓰기
$(document).on("click", ".reply_button", function(e) {
    e.preventDefault();         
    // 데이터 속성으로 설정한 주문 아이디 가져오기
    const orderDetailId = $(this).data("orderid");
    const productId = $(this).data("productid");
    
    let popWidth = 800; // 수정: 팝업 창 너비를 800으로 설정
    let popHeight = window.innerHeight; // 브라우저 높이와 동일하게 설정

    // 화면 중앙에 위치하도록 계산
    let left = (window.innerWidth - popWidth) / 2 + window.screenX;
    let top = (window.innerHeight - popHeight) / 2 + window.screenY;

    let popUrl = "getReviewInsertView.do?memberId=" + "${loginUser.userId}" + "&productId=" + productId + "&orderDetailId=" + orderDetailId;
    let popOption = "width=" + popWidth + ", height=" + popHeight + ", top=" + top + "px, left=" + left + "px, scrollbars=yes";

    window.open(popUrl, "리뷰 쓰기", popOption, "popup1");
});

//리뷰수정 버튼동작 : 리뷰수정
$(document).on("click", ".reply_button2", function(e) {
    e.preventDefault();         
    // 데이터 속성으로 설정한 주문 아이디 가져오기
    const orderDetailId = $(this).data("orderid");
    const productId = $(this).data("productid");
    
    let popWidth = 800; // 수정: 팝업 창 너비를 800으로 설정
    let popHeight = window.innerHeight; // 브라우저 높이와 동일하게 설정

    // 화면 중앙에 위치하도록 계산
    let left = (window.innerWidth - popWidth) / 2 + window.screenX;
    let top = (window.innerHeight - popHeight) / 2 + window.screenY;

    let popUrl = "getReviewUpdateView.do?memberId=" + "${loginUser.userId}" + "&productId=" + productId + "&orderDetailId=" + orderDetailId;
    let popOption = "width=" + popWidth + ", height=" + popHeight + ", top=" + top + "px, left=" + left + "px, scrollbars=yes";

    window.open(popUrl, "리뷰 수정", popOption, "popup2");
});

</script>
</html>