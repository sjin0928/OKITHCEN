<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>searchPopup</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<style>

header {
    width: 700px;
    text-align: right;
    border: 1px solid #fff;
    border-spacing: 1px;
    font-family: 'Cairo', sans-serif;
  	margin: auto;
}


table {
    width: 700px;
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
    background-color: rgb(231, 129, 17);
    color: #fff;
    padding: 10px;
}

img {
    width: 90px;
    height: 90px;
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


</style>

<script>

//------------------------------- 검색 조회 ---------------------------
	function searchProduct(){
		
		let searchKeyword = $("#searchKeyword").val();
		
		console.log("searchKeyword : " + searchKeyword);
		
		if(searchKeyword.trim().length > 0){
		
			$.ajax("selectProductByName.do", {
				type: "get",
				data: {searchKeyword : searchKeyword},
				dataType: "json",
				success : function(data){
					console.log(data);
					if (data.length > 0){
						
						let dispTag = "<tr>";
						
						for(productList of data){
							dispTag += "<td>" + productList.title + "</td>";
							dispTag += "<td>" + productList.brand + "</td>";
							dispTag += "<td>" + productList.sellerId + "</td>";
							dispTag += "<td><button class='select-button' onclick='sendValue(this)' data-productId='" + productList.productId + "' data-title='" + productList.title + "' data-image='" + productList.image + "'>선택</button></td>";
							dispTag += "</tr>";
							
						}
						$("#listDisp").html(dispTag);
						
					} else {
					    let dispTag = "<tr>";
					    dispTag += "<td colspan='5'>조회 결과 등록되지 않은 상품입니다.</td>";
					    dispTag += "</tr>";
					    $("#listDisp").html(dispTag);
					}
					
				},
				error : function(){
					//실패시 실행할 함수
				}
			});
		} else{
			alert("검색어를 입력해 주세요");
			return;
		}
	}

//----------------------------- 선택한 것 부모창에 값 전달 --------------------------
	function sendValue(clickedButton) {
	    console.log("sendValue() 실행");
	
	    
	    let productId = clickedButton.getAttribute("data-productId");
	    let image = $(clickedButton).data("image");
	    let title = $(clickedButton).data("title");
	    
	    console.log(image);
	    console.log(productId);
	    console.log(title);
	    
	    opener.document.getElementById("productId").value = productId;
	    opener.document.getElementById("productTitle").value = title;
	    opener.document.getElementById("image").src = image;
    
    	window.close();
	}

</script>
</head>

<body>
	
	<!-- --------------------------------검색을 위한 폼 : 상품 이름으로 검색 (default) --------------------------------->
	
	<!-- -------------------------------------header : 검색 영역 ----------------------------------- -->
	
	<header >
		<div class="searchFormArea"> 
			<div class="searchTextArea">
				<input type="text" id="searchKeyword" placeholder="검색어 입력" >
				<input type="button" id="searchButton" onclick="searchProduct()" value="검색">
			</div>
		</div>
	</header>
	
	
		<!-- ----------------------------------데이터 표시 영역------------------------------- -->
	<table>
	  	<caption>상품을 검색하여 등록해 주십시오.</caption>
		<thead>
		    <tr>
		        <th style="display: none">이미지[image]</th>
		        <th>상품이름[title]</th>
		        <th>상품브랜드[brand]</th>
		        <th>판매자[sellerId]</th>
		        <th>PICK</th>
		    </tr>
		</thead>

		<tbody id="listDisp">
			
		</tbody>
		
	</table>
	
	
	
	
</body>
</html>