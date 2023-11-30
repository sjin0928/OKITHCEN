<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script>
	function cancelReview() {
	    alert('공지사항 작성을 취소합니다.');
	    
	    history.back();
	  }
</script>
 <style>
 	.card-body{
	    min-height: 1px;
	    padding: 1.25rem;
	    margin-top: 785px;
	    margin-left: -264px;
    }
    table td th {
    	border : 1.5px solid #00000099;
    }
    th {
    	background-color: #e3e6f0;;
    }
    table {
    	border-collapse: separate;
    	border: 2px solid #80808040;
    }
    .insertForm {
    	margin-left: 74px;
    }
    textarea{
    	resize: none;
    }
    button.btn.btn-primary.btn-lg{
	    margin-left: 300px;
	    margin-top: 22px;
	    padding: 8px;
	    padding-top: 6px;
	    padding-bottom: 1px;
    }
    button.btn.btn-secondary.btn-lg{
	    margin-left: 14px;
	    margin-top: 22px;
	    padding: 8px;
	    padding-top: 6px;
	    padding-bottom: 1px;
    }
    h3{
	    font-size: 1.75rem;
	    margin-left: 65px;
	    margin-top: 14px;
    }
    div.title{
        margin-top: 39px;
    
    }
    textarea#noticeTitle{
	    margin-bottom: 25px;
    }
    hr{
	    margin-top: 1rem;
	    margin-bottom: 1rem;
	    border: 0;
	    border-top: 1px solid rgba(0,0,0,.1);
	    margin-left: -157px;
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
				<h3>공지사항 등록</h3>
				<hr>

			<!-- 공지사항 작성 폼 -->
			 <form action="noticeInsert.do" id="reviewForm" method="POST" class="insertForm">
			 
			 <div>	
			 	<div class="title">
					<label for="noticeTitle">제목</label>
				</div>
				<div>
					<textarea id="noticeTitle" name="noticeTitle" rows="1" cols="80" required></textarea>
				</div>
				<div class="content">
					<label for="noticeContent">내용</label>
				</div>
				<div>
					<textarea id="noticeContent" name="noticeContent" rows="15" cols="80" required></textarea>
				</div>
			</div>
			
			<div class="two-button">
			<button type="submit" class="btn btn-primary btn-lg">등록</button>
			<button type="button" class="btn btn-secondary btn-lg" onclick="cancelReview()">취소</button>
			</div>
		
			 </form>
			</div>
		</div>
	</div>
        <!-- End of Main Content -->

    </div>
    <!-- End of Content Wrapper -->

</div>
 <!-- End of Page Wrapper -->



</body>
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