<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>관리자페이지</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/css/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/css/cssStyle/sb-admin-2.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>	
<!-- 공지사항을 수정하고 돌아왔을때 성공여부 -->
<c:if test="${not empty successUpdate}">
    <script>
   		alert('공지사항이 성공적으로 수정되었습니다.');
    </script>
</c:if>
<style>
 	.card-body{
	    min-height: 1px;
	    padding: 1.25rem;
	    margin-top: 800px;
	    margin-left: -373px;
	    margin-right: 50px;
    }
    .table td th {
    	border : 1.5px solid #00000099;
    	border-color: #00000038;
    }
    .table td {
   	 border-color: #00000038;
    }
    th {
    	background-color: #e3e6f0;
    	text-align: center;
    	    width: 284px;
    }
    table {
    	border-collapse: separate;
    	border: 2px solid #80808040;
    	border-color: #00000038;
    }
    #listDisp{
		margin-top: 332px;
		margin-right: 120px;
	}
	.noticeContent{
		height: 350px;
	}
	.noticeButtons{
		border-top: #e3e6f0 !important;
	}
	.noticeUpdate{
	float: inline-end;
	margin-bottom: 10px;
    margin-right: 8px;
	}
	.noticeDelete{
	float: inline-end;
	margin-right: 17px;
	}
   .goBack{
      margin-left: 560px; /*버튼 중앙에 오게하는 부분*/
       background-color: #4e73df;
       color: white;
       padding: 4px;
       border-radius: 5px;
       text-align: center;
       padding-top: 7px;
   }
	a {
	text-decoration: none !important;
	}
	a:hover{
	color: #000000;
	}
 </style>

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">


<%@ include file="../../../css/headerFooter/adminSidebar.jsp" %>

<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

<!-- Main Content -->
<div id="content">

    <!-- Topbar -->
    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

        <!-- Sidebar Toggle (Topbar) 창크기 줄였을 때 클릭시 사이드바 생성됨 -->
        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
        </button>

        <!-- Topbar Search 검색창 (멋을 위해 남김 ..) -->
        <form
            class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
                <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                    aria-label="Search" aria-describedby="basic-addon2">
                <div class="input-group-append">
                    <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                    </button>
                </div>
            </div>
        </form>
		<div class="col-xl-8 col-lg-7">
			<!-- Card Header - Dropdown (Dropdown 멋을 위해 남김 .. 기능X) -->
			<!-- Card Body -->

			<div class="card-body">
				<h3>공지사항</h3>
				<a class='noticeDelete'href="javascript:;" onclick="confirmDelete('${ noticeDetail.noticeId }')">삭제</a>
				<a class='noticeUpdate' href="goUpdateNoticePage.do?noticeId=${ noticeDetail.noticeId }">수정</a>

				<table class="table">
					<thead>
						<tr>
							<th scope="col">제목</th>
							<td scope="col">${ noticeDetail.noticeTitle }</td>
						</tr>
						<tr>
							<th scope="col">작성자</th>
							<td scope="col">오키친</td>
						</tr>
						<tr>
							<th scope="col">작성일</th>
							<td scope="col">${ noticeDetail.noticeDate }</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class='noticeContent' scope="row" colspan="2">${ noticeDetail.noticeContent }</td>
						</tr>
					</tbody>
				</table>
							<a class="goBack" href="goAdminNotice.do">뒤로가기</a>
				
			</div>
		</div>
	</div>
        <!-- End of Main Content -->

    </div>
    <!-- End of Content Wrapper -->

</div>
 <!-- End of Page Wrapper -->



</body>
	<script>
	    function confirmDelete(noticeId) {
	        var result = confirm('글을 삭제하시겠습니까?');
	        if (result) {
	            // 사용자가 확인을 선택하면 삭제
	            window.location.href = 'deleteNotice.do?noticeId=' + noticeId;
	        }
	    }
	</script>
    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/css/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/css/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/css/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/css/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="${pageContext.request.contextPath}/css/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath}/css/js/demo/chart-area-demo.js"></script>
    <script src="${pageContext.request.contextPath}/css/js/demo/chart-pie-demo.js"></script>
</html>