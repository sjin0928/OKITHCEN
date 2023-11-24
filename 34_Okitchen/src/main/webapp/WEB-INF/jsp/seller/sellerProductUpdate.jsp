<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SellerLogin</title>
<!-- 메뉴바 외 코드 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/seller.css">
	<!-- 메뉴바 부트스트랩 템플릿 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
</head>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script>
	window.onload = function() {
		if("${sellerVO}" == ("") ||"${sellerVO}" == (null)){
			alert("세션만료 : 다시 로그인 해주세요.")
			location.href="${pageContext.request.contextPath}/sellerLogin.jsp";
		}
	}
</script>
<script>
	function idCheck() {

		$.ajax({
			url: "sellerIdCheck.do",
			type: "POST",
			data: {"sellerId" : $("#sellerId").val()},
			success: function(result){
				var regex = /^[A-Za-z0-9]+$/;
				if (!regex.test($("#sellerId").val())) {
					$("#checkMessage").removeClass("Omessage");
					$("#checkMessage").html("영어와 숫자만 입력하세요.");
					$("#checkMessage").addClass("Xmessage");
				} else if($("#sellerId").val().length < 5 || $("#sellerId").val().length > 20){
					$("#checkMessage").removeClass("Omessage");
					$("#checkMessage").html("아이디는 5자리 이상 20자리 이하로 입력해주세요.");
					$("#checkMessage").addClass("Xmessage");
				} else if(result == 1) {
					$("#checkMessage").removeClass("Omessage");
					$("#checkMessage").html("사용중인 아이디입니다. 다른 아이디를 입력해주세요.");
					$("#checkMessage").addClass("Xmessage");
				} else if (result == 0) {
					$("#checkMessage").removeClass("Xmessage");
					$("#checkMessage").html("사용 가능한 아이디입니다.");
					$("#checkMessage").addClass("Omessage");
				} else if (result == -1) {
					$("#checkMessage").removeClass("Omessage");
					$("#checkMessage").html("아이디를 입력해주세요.");
					$("#checkMessage").addClass("Xmessage");
				}
			},
			error: function () {
				alert("서버 요청 실패 : 담당자에게 문의하세요");
		    }
		});
	}
	function passwordCheck(){
		if($("#sellerPassword").val() == "" || $("#confirmPassword").val() == ""){
			$("#pwCheckMessage").removeClass("Omessage");
			$("#pwCheckMessage").html("비밀번호, 비밀번호 확인을 입력해주세요");
			$("#pwCheckMessage").addClass("Xmessage");
			
		} else if ($("#sellerPassword").val().length < 8){
			$("#pwCheckMessage").removeClass("Omessage");
			$("#pwCheckMessage").html("비밀번호는 8자리 이상 입력해주세요.(최대 20자)");
			$("#pwCheckMessage").addClass("Xmessage");
			
		} else if ($("#sellerPassword").val().length > 20){
			$("#pwCheckMessage").removeClass("Omessage");
			$("#pwCheckMessage").html("비밀번호는 20자리 이하 입력해주세요.");
			$("#pwCheckMessage").addClass("Xmessage");
			
		} else if ($("#sellerPassword").val() === $("#confirmPassword").val()){
			$("#pwCheckMessage").removeClass("Xmessage");
			$("#pwCheckMessage").html("비밀번호가 일치합니다.");
			$("#pwCheckMessage").addClass("Omessage");
			
		} else if ($("#sellerPassword").val() != $("#confirmPassword").val()){
			$("#pwCheckMessage").removeClass("Omessage");
			$("#pwCheckMessage").html("비밀번호가 일치하지않습니다.");
			$("#pwCheckMessage").addClass("Xmessage");
		}
		
	}
	function registNumCheck(){
		console.log($("#registNum").val());
		var data = {
			"b_no": [$("#registNum").val()]
		}; 
		 console.log(data);
		$.ajax({
		  url: "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=4M1CU2qRmz5HF8MFRnYeN7eWnlxOsAfb7jSRFHHwwHfp00QQ4d74%2Fxkx%2BihFQbredQ8iBL2VAFQuHoLvUs0Q1w%3D%3D",  // serviceKey 값을 xxxxxx에 입력
		  type: "POST",
		  data: JSON.stringify(data), // json 을 string으로 변환하여 전송
		  contentType: "application/json",
		  accept: "application/json",
		  success: function(result) {
				console.log(result.data[0].b_stt);
				if(result.data[0].b_stt == "계속사업자") {
					var html = result.data[0].b_stt + " : 가입 가능합니다.";
					$("#registNum").prop("disabled", true);
					$("#registCheckMessage").addClass("Omessage");
				} else {
					var html = "가입 불가능합니다. 휴업이신 경우 등록 상태를 변경하신 후 진행 해주세요.";
					$("#registCheckMessage").addClass("Xmessage");
				}
				$("#registCheckMessage").html(html);
		  },
		  error: function(result) {
		      console.log(result.responseText); //responseText의 에러메세지 확인
		      $("#registCheckMessage").html("담당자에게 문의하세요");
		  }
		});
	}
	function allCheck() {
  
		var sellerId = $("#sellerId").val();
		var regex = /^[A-Za-z0-9]+$/;
		if($("#sellerId").val() == "") {
			alert("아이디를 입력해주세요.(영어+숫자)");
		} else if (!regex.test($("#sellerId").val())) {
			alert("아이디는 영어 or 영어+숫자로 입력해주세요.");
		} else if ($("#checkMessage").html() != "사용 가능한 아이디입니다.") {
			alert("아이디 중복확인을 해주세요.");
		} else if ($("#sellerPassword").val() == "") {
			alert("비밀번호를 입력해주세요.");
		} else if($("#pwCheckMessage").html() != "비밀번호가 일치합니다.") {
			alert ("비밀번호 확인 버튼을 클릭해주세요.");
		} else if($("#registNum").val() == "") {
			alert ("사업자등록번호를 입력해주세요.");
		} else if($("#registCheckMessage").html() != "계속사업자 : 가입 가능합니다.") {
			alert ("사업자등록번호 확인 버튼을 클릭해주세요.");
		} else if($("#representName").val() == "") {
			alert ("대표자명을 입력해주세요.");
		} else if($("#companyName").val() == "") {
			alert ("상호명을 입력해주세요.");
		} else if($("input[name='sellerType']:checked").val() == "") {
			alert ("사업자 유형을 선택해주세요.");
		} else if($("#customerEmail").val() == "") {
			alert ("이메일을 입력해주세요.");
		} else if($("#customerCenter").val() == "") {
			alert ("대표 연락처를 입력해주세요.");
		} else {
			$("#registNum").prop("disabled", false);
			$("#signIn").submit();
		}
	}
	
</script>
<body>
<!-- header -->
<%@ include file="../../../../css/headerFooter/sellerHeader.jsp" %>

<!-- 각자 main에 들어갈 내용 작성 -->

<div class="container" style="text-align:center" id="sellerSignContainer">
	<h2>파트너 회원가입</h2>
	<div class="sellerSignIn" id="sellerSignInfirstBox">
	<h6>주의사항</h6>
		 카테고리, 상품명, 이미지는 변경하실 수 없습니다.<br>
		 삭제 후 등록 혹은 담당자에게 문의하세요.<br> 
	</div>
	<br><br>
		<form class="" action="insertProduct.do" method="post"
			enctype="multipart/form-data">
		    <div class="input-group mb-3 input-line">
		      <div class="input-group-prepend mb-3">
		        <span class="input-group-text inputTitle">카테고리</span>
		      </div>
		      <select class="form-control custom-select mb-3" name="categoryName" id="categoryName">
					<option disabled selected>선택</option>
					<option value="vege">채소</option>
					<option value="fruit">과일</option>
					<option value="meat">정육/계란</option>
					<option value="seafood">해산물</option>
					<option value="snack">간식/디저트</option>
					<option value="bakary">베이커리</option>
					<option value="seasoning">조미료</option>
					<option value="drink">생수/음료</option>
					<option value="mealkit">간편식/샐러드</option>
				</select>
		    </div>
		    
		    <div class="mb-3">
   		    <div class="input-group input-line">
				<div class="input-group-prepend">
					<span class="input-group-text inputTitle">브랜드명</span>
				</div>
				<input class="form-control" type="text" name="brand" id="brand" placeholder="브랜드명을 입력해주세요." required>
		    </div>
 			<div class="brand_text_cnt text_cnt countText">(0 / 25)</div>
			<div class="error-msg title"></div>
			<div class="btn-space"></div>
		    </div>
		    
		    <div class="mb-3">
			<div class="input-group input-line">
				<div class="input-group-prepend">
					<span class="input-group-text inputTitle">상품명</span>
				</div>
				<input class="form-control" type="text" name="title" id="title" placeholder="상품명을 입력해주세요." required>
		    </div>
		    <div class="brand_text_cnt text_cnt countText">(0 / 50)</div>
		    <div class="error-msg title"></div>
		    <div class="btn-space"></div>
			</div>
			
			<div class="mb-3">
			<div class="input-group input-line">
				<div class="input-group-prepend">
					<span class="input-group-text inputTitle">상품설명</span>
					
				</div>
				<textarea class="form-control" name="content" id="content" rows="10" cols="40" placeholder="상품에 대한 설명을 입력해주세요." required></textarea>
		    </div>
		    <div class="brand_text_cnt text_cnt countText">(0 / 500)</div>
			</div>
			
			<div class="mb-3">
			<div class="input-group input-line mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text inputTitle">상품가격</span>
					
				</div>
				<input type="number" name="price" placeholder="가격을 입력해주세요." id="priceBox" required>
		    </div>
		    <div class="error-msg price"></div>
		    <div class="btn-space"></div>
			</div>
			
			<div class="input-group input-line mb-3">
				<div class="input-group-prepend mb-3" id="prependBox">
					<span class="input-group-text inputTitle">대표이미지</span>
				</div>
				<div class="upload-input custom-file mb-3">
				   <input type="file" class="custom-file-input" id="imageFile" name="imageFile" required>
				   <label class="custom-file-label" for="imageFile">대표이미지를 첨부해 주세요.</label>
				</div>
		    </div>
		    <div class="error-msg file"></div>
		    <div class="btn-space"></div>
		    		    
			<div class="input-group input-line mb-3">
				<div class="input-group-prepend" id="prependBox">
					<span class="input-group-text inputTitle">할인적용여부</span>
				</div>
				
				<div class="form-check-inline ladioBox">
					<label class="form-check-label" for="radio1">
						<input type="radio" name="discount" value="N" id="radio1"/> 
						<span>할인 미적용</span>
					</label>
				</div>
				<div class="form-check-inline ladioBox">
					<label class="form-check-label" for="radio2">
					<input type="radio" name="discount" value="Y" id="radio2"/>
						<span>할인</span>
					</label>
				</div>
				<div class="btn-space"></div>
				<div id="discInfoContainer" style="display: none;">
					<!-- 추가정보를 표시할 컨테이너 -->
					<div class="input-line">
						<div class="input-label">
							<label>할인율</label>
						</div>
						<div class="input-box">
							<div class="input">
								<input type="number" name="discountRate"
									placeholder="할인율을 입력해주세요." required>
							</div>
							<div class="error-msg discountRate"></div>
						</div>
						<div class="btn-space"></div>
					</div>
				</div>

			</div>

			<h3>상품상세정보</h3>
			<div class="mb-3">
	   		    <div class="input-group input-line">
					<div class="input-group-prepend">
						<span class="input-group-text inputTitle">원산지</span>
					</div>
					<input class="form-control" type="text" name="origin" id="origin" placeholder="원산지를 입력해주세요." required>
			    </div>
	 			<div class="brand_text_cnt text_cnt countText">(0 / 15)</div>
				<div class="error-msg origin"></div>
				<div class="btn-space"></div>
		    </div>
		    
		    <div class="mb-3">
				<div class="input-group input-line mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text inputTitle">제조일자</span>
					</div>
						<input class="form-control" type="date" name="manufacturingDate" required>
				</div>
				<div class="error-msg manufact"></div>
				<div class="btn-space"></div>
			</div>
			
			<div class="mb-3">
				<div class="input-group input-line">
					<div class="input-group-prepend">
						<span class="input-group-text inputTitle">유통기한</span>
					</div>
						<input class="form-control" type="date" name="expirationDate" required>
				</div>
				<div class="error-msg expire"></div>
				<div class="btn-space"></div>
			</div>
			
			<div class="mb-3">
			<div class="input-group input-line mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text inputTitle">상품재고수량</span>
					
				</div>
				<input type="number" name="stock" placeholder="재고를 입력해주세요." id="stockBox" required>
		    </div>
		    <div class="error-msg stock"></div>
		    <div class="btn-space"></div>
			</div>
			-----------------------여기부터 시작
			<div class="input-line">
				<div class="input-label">
					<label>주의사항</label>
				</div>
				<div class="input-box">
					<div class="input">
						<textarea name="caution" id="caution" rows="10" cols="40"
							placeholder="상품 관련 주의사항을 입력해주세요." required></textarea>
					</div>
					<div class="error-msg caution"></div>
					<div id="caution_text_cnt" class="text_cnt">(0 / 500)</div>
				</div>
				<div class="btn-space"></div>
			</div>
			<div class="input-line">
				<div class="input-label">
					<label>안내사항</label>
				</div>
				<div class="input-box">
					<div class="input">
						<textarea name="notification" id="notification" rows="10"
							cols="40" placeholder="상품 안내사항을 입력해주세요." required></textarea>
					</div>
					<div class="error-msg noti"></div>
					<div id="notification_text_cnt" class="text_cnt">(0 / 1500)</div>
				</div>
				<div class="btn-space"></div>
			</div>
			<div class="input-line">
				<div class="input-label">
					<label>상세이미지</label>
				</div>
				<div class="input-box">
					<div class="input">
						<div class="upload-input repr-path">
							<input type="file" name="productPhotoFiles" id="content-path" multiple required>
						</div>
					</div>
					<div class="error-msg contentFile"></div>
				</div>
				<div class="btn-space"></div>
			</div> 
            <input type="submit" class="reg-confirm" value="등록하기" onclick="submitForm()">
		</form>
		
	<div id="sellerCancleBox">
	<button class="btn" id="sellerCancle">취소</button>
	</div>
</div>
<div class="custom-file mb-3">
		      <input type="file" class="custom-file-input" id="customFile" name="filename">
		      <label class="custom-file-label" for="customFile">Choose file</label>
		    </div>
<script>
	$(document).ready(function() {
	    $("#sellerCancle").on("click", function() {
	    	location.href="${pageContext.request.contextPath}/sellerLogin.jsp"
	    });
	});
</script>
<!-- footer -->
<%@ include file="../../../../css/headerFooter/sellerFooter.jsp" %>
<script>
// Add the following code if you want the name of the file appear on select
	$(".custom-file-input").on("change", function() {
	  var fileName = $(this).val().split("\\").pop();
	  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
	});
</script>
</body>
</html>