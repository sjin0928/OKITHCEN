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
<style>

header {
    width: 800px;
    text-align: right;
    border: 1px solid #fff;
    border-spacing: 1px;
    font-family: 'Cairo', sans-serif;
  	margin: auto;
}


table {
    width: 1200px;
    text-align: center;
    border: 1px solid #fff;
    border-spacing: 1px;
    font-family: 'Cairo', sans-serif;
  	margin: auto;
}

caption {
    font-weight: bold;
}

table td {
    padding: 10px;
    background-color: #eee;
}

table th {
    background-color: rgb(78,115,223);
    color: #fff;
    padding: 10px;
}

.view,
.delete {
    border: none;
    padding: 5px 10px;
    color: #fff;
    font-weight: bold;
}

.view {
    background-color: #03A9F4;
}

.delete {
    background-color: #E91E63;
}

.tablefoot {
    padding: 0;
    border-bottom: 3px solid #009688;
}

.hidden-product_id{
	display: none;
}

.select-button:hover {
	background-color: rgb(231, 129, 17);
}

.search-bar-container {
	width: 900px;
	margin: auto;
	display: flex;
    justify-content: space-between;
}

.date-input-container-hidden {
	display: none;
}

.searchTextArea input[type=text] {
	width: 190px;
}

caption{
	caption-side: top;
}



</style>

<script>
//------------------------------- 미완성 ------------------------------

	function showDetail(){
	   console.log("선택됨");
    	alert('주문 상세페이지 조회는 구현중입니다\n관리자에게 문의하세요');
	}

//------------------------------- 검색 조회 ---------------------------

/*  
현재 시간을 endDate = Date.now() 로 설정하고,

금일인 경우

startDate = '오늘 날짜 00:00:00'

일주일인경우

startDate = endDate - 7일

한달인 경우

startDate = endDate - 30일

직접 설정인 경우

startDate = 달력에서 얻어온 날짜

endDate = 달력에서 얻어온 날짜

...로 계산한 후 서버에 startDate, endDate만 보냅니다 
*/





function searchOrdersList() {
    console.log("searchOrderList() 실행");

    let searchUserId = $("#searchUserId").val();
    let selectOrderDate = $("#selectOrderDate").val();
    let selectorderStatus = $("#selectOrderStatus").val();
    let startDate =  $("#startDate").val();
    let endDate =  $("#endDate").val();
    
    //쓰레기코드: 이게 있어야 정상동작.. 왜??
    if (selectOrderDate  !== 'insertSearchDate'){
    	startDate = '2023-01-01';
    	endDate = '2023-01-01';
    } 
    
    console.log("startDate : "  +startDate);
    console.log("endDate : "  +endDate);

    $.ajax("/biz/adminOrdersList/getOrdersListByOption.do", {
        type: "get",
        data: {
            selectOrderStatus: selectorderStatus,
            selectOrderDate: selectOrderDate,
            searchUserId: searchUserId,
            startDate : startDate,
            endDate : endDate
        },
        dataType: "json",
        success: function (data) {
            console.log( data);
            
            updateOrderList(data); //출력하는 함수를 불러옴
            
        },
        error: function (error) {
            console.error("Error fetching data:", error);
        }
    });
}

//------------------------------------------------- 출력부분을 따로 빼서 재활용 -----------------------------------

function updateOrderList(data){
	console.log("updateOrderList(data) 실행");
	 let dispTag = "";

     if (data.length > 0) {
         
         for (orderList of data) {
             dispTag += "<tr>";
             dispTag += "<td><button class='meiwancheng' onclick='showDetail()'>" + orderList.orderId + "</td>";
             dispTag += "<td>" + orderList.userId + "</td>";
             dispTag += "<td>" + orderList.totalCnt + "</td>";
             dispTag += "<td>" + orderList.totalPrice + "</td>";

             //JSON식 날짜는 포맷해줘야 정상출력 가능
             let formattedDate = new Date(orderList.orderDate);
             dispTag += "<td>" + formattedDate.toLocaleDateString() + "</td>";
             dispTag += "<td id='orderStatus_" + orderList.orderId + "'>" + orderList.orderStatus + "</td>";
             	console.log("조건부 팝업창을 위한 Id생산: orderStatus_orderId : " + "orderStatus_"+orderList.orderId)
             	console.log("원본배송상태 orderList.orderStatus : " + orderList.orderStatus);
             
             //배송변경 옵션 코드
             //동적 id생산코드
             let selectId = orderList.orderId;

             dispTag += "<td><select id='" + selectId + "' name='selectorderStatus' class='slect-order-status'>";
             dispTag += "	<option value='paid' " + (orderList.orderStatus === 'paid' ? 'selected' : '') + ">paid</option>";
             dispTag += "	<option value='beDelivery' " + (orderList.orderStatus === '배송전' ? 'selected' : '') + ">배송전</option>";
             dispTag += "	<option value='afDelivery' " + (orderList.orderStatus === '배송중' ? 'selected' : '') + ">배송중</option>";
             dispTag += "	<option value='cpDelivery' " + (orderList.orderStatus === '배송완료' ? 'selected' : '') + ">배송완료</option>"; 
             	
             	console.log("해당 select의 Id : " + selectId);
             	console.log("변경에 나와야 할 배송상태 orderList.orderStatus : " + orderList.orderStatus);
             dispTag += "</select></td>";
             
             
             //수정확인 버튼
             //dispTag += "<td><button onclick='updateOrderStatus(" + selectId + ")'>수정</button></td>"; 이렇게 하면 HTMLSelectElement 객체가 전달됨
             dispTag += "<td><button onclick='updateOrderStatus(\"" + selectId + "\")'>수정</button></td>"; //문자열로 전달되어야함
             dispTag += "</tr>";
         }
         $("#listDisp").html(dispTag);
     } else {
         let dispTag = "<tr>";
         dispTag += "<td colspan='7'>조회 결과 해당되는 주문내역이 없습니다.</td>";
         dispTag += "</tr>";
         $("#listDisp").html(dispTag);
     }
	
}

//----------------------------------------------------주문 배송정보 변경 ------------------------------------------------
function updateOrderStatus(selectId) {
    console.log("updateOrderStatus() 실행");
    console.log("파라미터 : 수정할 주문ID : " + selectId) // 예시)8
	
    let beforeStatusId = 'orderStatus_' + selectId;
    console.log("팝업 조건 beforeStatus의 아이디 : " + beforeStatusId); // 뽑을 데이터가 있는 td의 id값 = orderStatus_8
    
    let beforeStatus = document.getElementById(beforeStatusId).textContent; //팝업창 띄울 조건A, textContent? td값이니까.
    console.log("팝업 조건 beforeStatus : " + beforeStatus); //구했따!!! paid
    
    let afterStatus = document.getElementById(selectId).value; //팝업창 띄울조건 B, 내가 바꾸려는 배송상태('배송전')만 선택해서 팝업띄울 생각.
    console.log("팝업 조건 afterStatus : " + afterStatus); // 예시) beDelivery 잘나옴 (==배송전)
    
    
    let confirmed; //밖에 놔야 아래if문이 실행됨. 기초적인 실수 그만해라
    let popupWindow;
    
    if(beforeStatus === 'paid' && afterStatus === 'beDelivery'){
    	popupWindow = window.open("/biz/adminOrdersList/goInvoiceNumberPopup.do", "송장번호 확인" , "width=600, height=200, left=150, top=450");
    	
    	/* popupWindow.onunload() = function () {
    		console.log("onunload함수 실행됨");
            confirmed = confirm("주문 상태를 업데이트 하시겠습니까?");
        }; */
        
        let checkClosed = setInterval(function() {
            if (popupWindow.closed) {
                clearInterval(checkClosed); // Stop checking once closed

                confirmed = confirm("주문 상태를 업데이트 하시겠습니까?");
                if(confirmed){
                	
                	changeDelivery(selectId); //이제 배송정보 변경 함수 실행
                }
            }
        }, 100); // Check every 0.1 second
        
    } else {
    	confirmed = confirm("주문 상태를 업데이트 하시겠습니까?");
    	if (confirmed){
    		changeDelivery(selectId);
    	}
    }
}	 

function changeDelivery(selectId){
/* 	if(confrimed) */
	alert("주문 상태가 업데이트 되었습니다");

    
    let selectedOrderId = selectId;
    console.log("값을 가져올 Id, selectedOrderId : " + selectedOrderId);
    
    let selectOrderStatus =  $("#" + selectId).val(); //동적생산 키 값 가져오기
	console.log("내가 바꾸려고 하는 값, selectOrderStatus : " + selectOrderStatus);
	
	$.ajax("/biz/adminOrdersList/updateOrderStatus.do", {
        type: "POST",
        data: {
            orderId: selectId,
            selectOrderStatus: selectOrderStatus
        },
        success: function(data) {
            console.log("data: " + data); //userId만 생산되는데..어떻게 가지고 올까
            
            /* updateOrderList(data);
            console.log("변경 조회 가능한 updateOrderList(data) 실행") */ //이건 나중에 생각해보자. 어떻게 변경된 조회를 가져올지.
            
            window.location.href = data.redirectUrl;
            
            window.location.reload();
            
        },
        error: function(error) {
            console.error("Error updating order status:", error);
        }
    });
	
} /* else {
		console.log("주문 상태 업데이트가 취소되었습니다");
	} */


//----------------------------------------------------------- 날짜 선택 [직접입력] : hidden ------------------------------------------------------------------
	function handleSelectChange() {
		var selectElement = document.getElementById("selectOrderDate");
		var dateInputContainer = document.getElementById("dateInputContainer");
		let startDateInput = document.getElementById("startDate");
	    let endDateInput = document.getElementById("endDate");

        if (selectElement.value === "insertSearchDate") {
        	dateInputContainer.classList.remove("date-input-container-hidden");
        } else {
        	dateInputContainer.classList.add("date-input-container-hidden");
        }
    }
 
    
//-------------------------------------------------------------------------------------------------------------------------------------------------------



</script>
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

                    <!-- Topbar Navbar 우측 상단 알림, 메세지, 관리자명 (기능X) -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts (멋으로 남길게요..)-->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 12, 2019</div>
                                        <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-success">
                                            <i class="fas fa-donate text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 7, 2019</div>
                                        $290.29 has been deposited into your account!
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-warning">
                                            <i class="fas fa-exclamation-triangle text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 2, 2019</div>
                                        Spending Alert: We've noticed unusually high spending for your account.
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                            </div>
                        </li>

                        <!-- Nav Item - Messages (멋내기로 남길게요 ..)-->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="css/img/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                            problem I've been having.</div>
                                        <div class="small text-gray-500">Emily Fowler · 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="css/img/undraw_profile_2.svg"
                                            alt="...">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">I have the photos that you ordered last month, how
                                            would you like them sent to you?</div>
                                        <div class="small text-gray-500">Jae Chun · 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="css/img/undraw_profile_3.svg"
                                            alt="...">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Last month's report looks great, I am very happy with
                                            the progress so far, keep up the good work!</div>
                                        <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Am I a good boy? The reason I ask is because someone
                                            told me that people say this to all dogs, even if they aren't good...</div>
                                        <div class="small text-gray-500">Chicken the Dog · 2w</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - 관리자명(예시) -->
						<li class="nav-item no-arrow">
						    <span class="nav-link">
						        <span class="mr-2 d-none d-lg-inline text-gray-600 small">관리자명</span>
						    </span>
						</li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -------------------------------------------------------------------------------------------------------------------->
                
				<div class="container-fluid">
		<!-- ---------------------------------------------- 검색 영역-------------------------------------------------------------------------- -->			
					<div class="search-bar-container">
						<div>
							<select id="selectOrderDate" name="selectOrderDate" class="slect-order-status" onchange="handleSelectChange()" >
								<option value="allDate">전체날짜</option>
								<option value="toDay">금일</option>
								<option value="thisMonth">이번달</option>
								<option value="thisYear">이번년도</option>
								<option value="insertSearchDate">직접입력</option>
							</select>
						</div>
						<div id="dateInputContainer" class="date-input-container-hidden">
				            <label for="startDate">시작 날짜:</label>
				            <input type="date" id="startDate" name="startDate" onchange="selectStartDate()">
				
				            <label for="endDate">종료 날짜:</label>
				            <input type="date" id="endDate" name="endDate" onchange="selectEndDate()">
			      		</div>
						<div>
							<select id="selectOrderStatus" name="selectorderStatus" class="slect-order-status"  >
								<option value="allShipping">전체배송</option>
								<option value="paid">paid</option> default값
								<option value="beDelivery">배송전</option>
								<option value="afDelivery">배송중</option>
								<option value="cpDelivery">배송완료</option>
							</select>
						</div>
						<div class="searchOrderUser"> 
							<div class="searchTextArea">
								<input type="text" id="searchUserId" name="searchUserId" placeholder="빈칸으로 둘시 전체 구매자 검색" >
								<input id="submitButton" type="button" onclick="searchOrdersList()" value="검색" >
							</div>
						</div>
					</div> 
					
		<!-- --------------------------------------데이터 표시 영역------------------------------------------------------------------------ -->
		
			<!-- ----------------------------------데이터 표시 영역------------------------------- -->
		
				
				<table>
				  	<caption>주문 내역을 조회합니다.</caption>
					<thead>
					    <tr>
					        <th>주문번호[orderId]</th>
					        <th>구매자[userId]</th>
					        <th>주문수량[totalCnt]</th>
					        <th>총 금액[totalPrice]</th>
					        <th>주문날짜[orderDate]</th>
					        <th>배송상태[orderStatus]</th>
					        <th>배송 변경</th>
					        <th>수정확인</th>
					    </tr>
					</thead>
			
					<tbody id="listDisp">
						
					</tbody>
					
				</table>

			</div>
            <!-- /.container-fluid ------------------------------------------------------------------------------------------------------------------->

            </div>
            <!-- End of Main Content -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->


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

</body>

</html>