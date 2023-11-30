<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항(일반회원)</title>
	<!-- 메뉴바 외 코드 -->
	<link href="${pageContext.request.contextPath}/css/cssStyle/style.css" rel="stylesheet" />
	<!-- 로그인 css -->
	<link href="${pageContext.request.contextPath}/css/cssStyle/userMyPageStyle.css" rel="stylesheet" />
	<!-- 메뉴바 부트스트랩 템플릿 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
	<!-- jQuery import 스크립트  -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>	
	<!-- 챗봇 -->
	<%@ include file="../chatBot/kitchenChat.jsp" %>
<script>

$.ajax("getNoticeList.do", {
    type: "get",
    dataType: "json",
    success: function (data) {
        console.log(data);

        let dispTag = "<div>";

        dispTag += "<table class='table'>";
        dispTag += "<thead>";
        dispTag += "<tr>";
        dispTag += "<th scope='col'>번호</th>";
        dispTag += "<th scope='col'>제목</th>";
        dispTag += "<th scope='col'>작성자</th>";
        dispTag += "<th scope='col'>작성일</th>";
        dispTag += "<tr>";
        dispTag += "</thead>";
        dispTag += "<tbody class='table-group-divider'>";

        for (notice of data) {
            // notice.cPage를 숫자로 변환
            notice.cPage = parseInt(notice.cPage);

            dispTag += "<tr>";
            dispTag += "<th scope='row'>" + notice.noticeId + "</th>";
            dispTag += "<td><a href='NoticeDetail.do?noticeId=" + notice.noticeId + "'>" + notice.noticeTitle + "</a></td>";
            dispTag += "<td class='writer'>오키친</td>";
            dispTag += "<td class='noticeDate'>" + new Date(notice.noticeDate).toLocaleDateString('ko-KR', { year: 'numeric', month: '2-digit', day: '2-digit' }).replace(/\.$/, '') + "</td>";

            dispTag += "</tr>";
        }
        dispTag += "</tbody>";
        dispTag += "</table></div>";
        
        //페이징
            if (notice.cPage == 0 && notice.totPage == 0) {
                dispTag += "<button class='disAble1' disabled>back</button><button class='disAble' disabled>next</button>";
            } else if (notice.cPage == 0) {
            	notice.cPage = 1;
                dispTag += "<button class='disAble1' disabled>back</button><button class='next' onclick='handleNextPage(" + notice.noticeId + ", " + (notice.cPage + 1) + ")'>next</button>";
            } else if (Number(notice.totPage) <= Number(notice.cPage)) {
                dispTag += "<button class='back' onclick='handleBeforePage(" + notice.noticeId + ", " + (notice.cPage - 1) + ")'>back</button><button class='disAble' disabled>next</button>";
            } else {
                dispTag += "<button class='back' onclick='handleBeforePage(" + notice.noticeId + ", " + (notice.cPage - 1) + ")'>back</button><button class='next' onclick='handleNextPage(" + notice.noticeId + ", " + (notice.cPage + 1) + ")'>next</button>";
            }

        $("#listDisp").html(dispTag);
    },
    error: function () {
    }
});
	
	//이전 페이지에 대한 데이터 호출ajax
	function handleBeforePage(noticeId, cPage) {
		   // cPage를 숫자로 변환
	    cPage = parseInt(cPage);

	    $.ajax("getNoticeList.do", {
	        type: "get",
	        data: { noticeId: noticeId, cPage: cPage },
	        dataType: "json",
	        success: function (data) {
	            console.log(data);

	            let dispTag = "<div>";

	            dispTag += "<table class='table'>";
	            dispTag += "<thead>";
	            dispTag += "<tr>";
	            dispTag += "<th scope='col'>번호</th>";
	            dispTag += "<th scope='col'>제목</th>";
	            dispTag += "<th scope='col'>작성자</th>";
	            dispTag += "<th scope='col'>작성일</th>";
	            dispTag += "<tr>";
	            dispTag += "</thead>";
	            dispTag += "<tbody class='table-group-divider'>";

	            for (notice of data) {
	                // notice.cPage를 숫자로 변환
	                notice.cPage = parseInt(notice.cPage);

	                dispTag += "<tr>";
	                dispTag += "<th scope='row'>" + notice.noticeId + "</th>";
	                dispTag += "<td><a href='NoticeDetail.do?noticeId=" + notice.noticeId + "'>" + notice.noticeTitle + "</a></td>";
	                dispTag += "<td class='writer'>오키친</td>";
	                dispTag += "<td class='noticeDate'>" + new Date(notice.noticeDate).toLocaleDateString('ko-KR', { year: 'numeric', month: '2-digit', day: '2-digit' }).replace(/\.$/, '') + "</td>";

	                dispTag += "</tr>";
	            }
	            dispTag += "</tbody>";
	            dispTag += "</table></div>";
	            
	            if (notice.cPage == 0 && notice.totPage == 0) {
	                dispTag += "<button class='disAble1' disabled>back</button><button class='disAble' disabled>next</button>";
	            } else if (notice.cPage == 1) {
	            	notice.cPage = 1;
	                dispTag += "<button class='disAble1' disabled>back</button><button class='next' onclick='handleNextPage(" + notice.noticeId + ", " + (notice.cPage + 1) + ")'>next</button>";
	            } else if (Number(notice.totPage) <= Number(notice.cPage)) {
	                dispTag += "<button class='back' onclick='handleBeforePage(" + notice.noticeId + ", " + (notice.cPage - 1) + ")'>back</button><button class='disAble' disabled>next</button>";
	            } else {
	                dispTag += "<button class='back' onclick='handleBeforePage(" + notice.noticeId + ", " + (notice.cPage - 1) + ")'>back</button><button class='next' onclick='handleNextPage(" + notice.noticeId + ", " + (notice.cPage + 1) + ")'>next</button>";
	            }

	            $("#listDisp").html(dispTag);
	        },
	        error: function () {
	        }
	    });

	} 
	
	//다음 페이지에 대한 데이터 호출ajax
	function handleNextPage(noticeId, cPage) {
		   // cPage를 숫자로 변환
	    cPage = parseInt(cPage);

	    handleBeforePage(noticeId, cPage);

	} 
</script>
<style>
	.inner {
	    width: 960px;
	    margin: 0 auto;
	    margin-left: -91px;
	    margin-right: -42px;
	}
	h3{
	    margin-left: 129px;
	    float: left;
	    margin-right: 11px;
	    margin-bottom: 41px;
	    margin-top: 5px;
	}
	.noticeTitle{
		margin-left: -108px;
	    color: #00000082;
    	margin-top: 13px;
	}
	div#listDisp{
	    margin-left: 129px;
	}
	.table thead th{
		border-top: 2px solid #0000007a;
	}
	.back {
		color: rgb(231 129 17 / 76%);
    	margin-left: 309px;
	    font-weight: bold;
    	background-color: white;
	    border-radius: 5px;
	    border-top-color: #0000006e;
	    border-left-color: #0000006e;
	    border-color: rgb(231 129 17 / 76%);
   	}
   	.next {
	    color: rgb(231 129 17 / 76%);
	    margin-left: 16px;
	    margin-top: 40px;
	    font-weight: bold;
	    background-color: white;
	    border-radius: 5px;
	    border-top-color: #00000040;
	    border-left-color: #00000040;
	    border-color: rgb(231 129 17 / 76%);
	    margin-bottom: 95px;
   	}
   	a:hover {
 	 	text-decoration: none !important;
	}
	.disAble1{
		margin-left: 309px;
	    color: #00000040;
	    font-weight: bold;
	    background-color: white;
	    border-radius: 5px;
	    border-color: #00000040;
	}
	.disAble{
		color: #00000040;
		font-weight: bold;
		background-color: white;
	    border-radius: 5px;
	    border-color: #00000040;
	    margin-left: 16px;
	    margin-bottom: 95px;
	    margin-top: 40px;
	}
	th {
		text-align: center;
	}
	.writer{
		text-align: center;
	}
	.noticeDate{
		text-align: center;	
	}

</style>
</head>
<body>

	<!-- header -->
	<%@ include file="../../../css/headerFooter/shopHeader.jsp" %>
	<!-- ------------------------------------------------------------------------ -->
	<%@ include file="../../../css/headerFooter/shopCustomerService.jsp" %>

	<!-- 여기 사이에 고객센터 본문내역 들어가야 함 -->
	<div class="inner">
	<h3>공지사항</h3>
	<div class='noticeTitle'>오키친의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</div>
		<div id="listDisp">
  		</div>
	</div>

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