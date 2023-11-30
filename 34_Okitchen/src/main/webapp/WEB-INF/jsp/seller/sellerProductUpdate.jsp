<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SellerLogin</title>
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<!-- 메뉴바 부트스트랩 템플릿 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
	<!-- 메뉴바 외 코드 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/seller.css">
</head>

<script>
	window.onload = function() {
		if("${sellerVO.sellerId}" === ("") ||"${sellerVO.sellerId}" === (null)){
			alert("세션만료 : 다시 로그인 해주세요.")
			location.href="${pageContext.request.contextPath}/sellerLogin.jsp";
		}
		
		if ("${prodVO.discountRate}" != 0) {
			$('#discInfoContainer1').show();
			$('#discInfoContainer2').show();
		} else {
			$('#discInfoContainer1').hide();
			$('#discInfoContainer2').hide();
			additionalInfoDisc1.val('');
			additionalInfoDisc2.val('');
		}
		
	}
	
	$(document).ready(function(){
		
		// 이미지 파일명 표기
		$("#imageFile").on("change", function() {
		  var fileName = $(this).val().split("\\").pop();
		  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
		});
		// 이미지 파일명 표기
		$("#content-path").on("change", function() {
		  var files = $(this)[0].files;
		  var fileNames = [];
		  
		  for (var i = 0; i < files.length; i++) {
			    fileNames.push(files[i].name);
			  }
		  $(this).siblings(".custom-file-label").addClass("selected").html(fileNames.join(",  "));

		  
		});
		
		//브랜드명
		$('#brand').on('keyup', function() {
	        $('#brand_text_cnt').html("("+$(this).val().length+" / 25)");
	        if($(this).val().length > 25) {
	            $(this).val($(this).val().substring(0, 25)); //입력가능한 문자수까지만 보여줌
	            $('#brand_text_cnt').html("(25 / 25)");
	            alert("작성 가능 문자수를 초과하였습니다.")
	        }
	    });

	    
		//상품명
		$('#title').on('keyup', function() {
	        $('#title_text_cnt').html("("+$(this).val().length+" / 50)");
	        if($(this).val().length > 50) {
	            $(this).val($(this).val().substring(0, 50)); //입력가능한 문자수까지만 보여줌
	            $('#title_text_cnt').html("(50 / 50)");
	            alert("작성 가능 문자수를 초과하였습니다.")
	        }
	    });
		
	    //상품설명
		$('#content').on('keyup', function() {
	        $('#content_text_cnt').html("("+$(this).val().length+" / 500)");
	        if($(this).val().length > 500) {
	            $(this).val($(this).val().substring(0, 500));
	            $('#content_text_cnt').html("(500 / 500)");
	            alert("작성 가능 문자수를 초과하였습니다.")
	        }
	    });
	    
		//주의사항
		$('#caution').on('keyup', function() {
	        $('#caution_text_cnt').html("("+$(this).val().length+" / 500)");
	        if($(this).val().length > 500) {
	            $(this).val($(this).val().substring(0, 500));
	            $('#caution_text_cnt').html("(500 / 500)");
	            alert("작성 가능 문자수를 초과하였습니다.")
	        }
	    });
		
		//안내사항
		$('#notification').on('keyup', function() {
	        $('#notification_text_cnt').html("("+$(this).val().length+" / 1500)");
	        if($(this).val().length > 1500) {
	            $(this).val($(this).val().substring(0, 1500));
	            $('#notification_text_cnt').html("(1500 / 1500)");
	            alert("작성 가능 문자수를 초과하였습니다.")
	        }
	    });
	    
	    //원산지
	    $('#origin').on('keyup', function() {
	        $('#origin_text_cnt').html("("+$(this).val().length+" / 15)");
	        if($(this).val().length > 15) {
	            $(this).val($(this).val().substring(0, 15));
	            $('#origin_text_cnt').html("(15 / 15)");
	            alert("작성 가능 문자수를 초과하였습니다.")
	        }
	    });
	    
		//할인 라디오 버튼 변경 이벤트 리스너
		$('input[name="discount"]').change(function(){
			alert("버튼 클릭됨");
			var selectedOption = $('input[name="discount"]:checked').val();		
			var additionalInfoDisc1 = $('input[name="discountRate"]');
			var additionalInfoDisc2 = $('input[name="discountedPrice"]');
			console.log("selectedOption : " + selectedOption)
			if (selectedOption != "N") {
				$('#discInfoContainer1').show();
				$('#discInfoContainer2').show();
				
			} else {
				$('#discInfoContainer1').hide();
				$('#discInfoContainer2').hide();
				additionalInfoDisc1.val(0);
				additionalInfoDisc2.val(0);
			}
		});
		
		$("#calculate").on("click", function() {
			var price = $("#priceBox").val();
			var discountRate = $("#discountRate").val()
			
			$("#discountedPrice").val(price - (price * discountRate / 100));
	    });
		
		<%--
		$("#prodUpdateBtn").on("click", function() {
			$("#sellerProductUpdate").submit();		
			
			console.log($("#imageFile")[0].files[0]);
			var formData = new FormData();
			
			formData.append("content", $("#content").val());
			formData.append("price", $("#price").val());
			formData.append("discountRate", $("#discountRate").val());
			formData.append("imageFile", $("#imageFile")[0].files[0]);
			formData.append("origin", $("#origin").val());
			formData.append("manufacturingDate", $("#manufacturingDate").val());
			formData.append("expirationDate", $("#expirationDate").val());
			formData.append("caution", $("#caution").val());
			formData.append("notification", $("#notification").val());
			formData.append("stock", $("#stockBox").val());
			
			
			$.ajax({
				url: "sellerUpdateProduct.do",
				type: "POST",
				enctype: "multipart/form-data",
				data: formData,
				contentType: false,
				processData: false,
				success: function (response) {
					alert(response);
					location.href="prodDetail.do"
				},
				error: function (jqXHR, textStatus, errorThrown){
					console.log("HTTP 상태 코드: " + jqXHR.status);
			        console.log("서버 응답 내용: " + jqXHR.responseText);
			        console.log("에러 종류: " + textStatus);
			        console.log("에러 객체: ", errorThrown);
					alert("상품 정보 수정 오류 : 담당자에게 문의주세요.");
				}
			});
			
		});
		--%>
		
	});
	
	
</script>
<body>
<!-- header -->
<%@ include file="../../../../css/headerFooter/sellerLogoutHeader.jsp" %>

<!-- 각자 main에 들어갈 내용 작성 -->

<div class="container" style="text-align:center" id="sellerSignContainer">
	<h2>상품 수정</h2>
	<div class="sellerSignIn" id="sellerSignInfirstBox">
	<h6>주의사항</h6>
		 카테고리, 브랜드명, 상품명, 이미지는 변경하실 수 없습니다.<br>
		 삭제 후 등록 혹은 담당자에게 문의하세요.<br> 
	</div>

		<form id="sellerProductUpdate" method="post" enctype="multipart/form-data" action="sellerUpdateProduct.do">
			<input type="hidden" name="productId" value="${prodVO.productId }">
		    <div class="input-group mb-3 input-line">
		      <div class="input-group-prepend mb-3">
		        <span class="input-group-text inputTitle">카테고리</span>
		      </div>
		      <input class="form-control mb-3" type="text" name="categoryName" id="categoryName" value="${prodVO.categoryName }" disabled required>
		    </div>
		    
		    <div class="mb-3">
   		    <div class="input-group input-line">
				<div class="input-group-prepend">
					<span class="input-group-text inputTitle">브랜드명</span>
				</div>
				<input class="form-control" type="text" name="brand" id="brand" value="${prodVO.brand }" disabled required>
		    </div>
		    </div>
		    
		    <div class="mb-3">
			<div class="input-group input-line">
				<div class="input-group-prepend mb-3">
					<span class="input-group-text inputTitle">상품명</span>
				</div>
				<input class="form-control mb-3" type="text" name="title" id="title" value="${prodVO.title }" disabled required>
		    </div>
			</div>
			
			<div class="mb-3">
			<div class="input-group input-line">
				<div class="input-group-prepend input">
					<span class="input-group-text inputTitle">상품설명</span>
				</div>
				<textarea class="form-control" name="content" id="content" rows="10" cols="40" required>${prodVO.content }</textarea>
		    </div>
		    <div class="text_cnt countText" id="content_text_cnt" >(${prodVO.content.length() } / 500)</div>
			</div>
			
			<div class="mb-3">
			<div class="input-group input-line mb-3">
				<div class="input-group-prepend priceBox">
					<span class="input-group-text inputTitle">상품가격</span>
				<input class="form-control priceBox" type="number" name="price" value="${prodVO.price }" id="priceBox" required>
		    </div>
		    <div class="error-msg price"></div>
		    <div class="btn-space"></div>
			</div>
			
		    <div class="error-msg file"></div>
		    <div class="btn-space"></div>
		    		    
			<div class="input-group input-line mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text inputTitle mb-3">할인적용여부</span>
				</div>
				<label class="form-check-label ladioBox form-control mb-3" for="radio1">
					<input type="radio" name="discount" value="N" ${prodVO.discountRate eq '0' ? 'checked' : ''} id="radio1"/> 
					<span>할인 미적용</span>
				</label>
				<label class="form-check-label ladioBox form-control mb-3" for="radio2">
				<input type="radio" name="discount" value="Y" ${prodVO.discountRate != '0' ? 'checked' : ''} id="radio2"/>
					<span>할인</span>
				</label>
				<div class="btn-space"></div>
			</div>
			
			<div class="input-group input-line mb-3" style="display: none;" id="discInfoContainer1">
				<!-- 추가정보를 표시할 컨테이너 -->
				<div class="input-group input-line">
					<div class="input-group-prepend" >
						<span class="input-group-text inputTitle">할인율</span>
					</div>
					<input class="form-control" type="number" name="discountRate" id="discountRate" value="${prodVO.discountRate}" required>
				</div>
				<div class="error-msg discountRate"></div>
				<div class="btn-space"></div>
			</div>
			<div class="input-group input-line mb-3" style="display: none;" id="discInfoContainer2">
				<!-- 추가정보를 표시할 컨테이너 -->
				<div class="input-group input-line">
					<div class="input-group-prepend mb-3" id="DPBox">
						<span class="input-group-text inputTitle">할인적용금액</span>
					</div>
					<input class="form-control mb-3" type="number" name="discountedPrice" id="discountedPrice" value="${prodVO.discountedPrice }" disabled>
					<button type="button" class="btn" id="calculate">계산</button>
				</div>
				<div class="error-msg discountedPrice"></div>
				<div class="btn-space"></div>
			</div>
			
			<div class="mb-3">
				<div class="mb-3">
					<div class="input-group input-line">
						<div class="input-group-prepend">
							<span class="input-group-text inputTitle">대표이미지</span>
						</div>
						<button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#modal" id="prodImg">
							<img class="prodImg" alt="대표이미지" src="${pageContext.request.contextPath}/productImage/title/${prodVO.image}"/>
						</button>
				    </div>

					<div class="modal fade" id="modal" role="dialog">
						<div class="modal-dialog modal-xl">
						
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title">대표이미지</h4>
								</div>
								<div class="modal-body" data-bs-dismiss="modal">
									<img class="modalImg" alt="대표이미지" src="${pageContext.request.contextPath}/productImage/title/${prodVO.image}"/>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-danger" data-bs-dismiss="modal" >Close</button>
									
								</div>
							</div>
						</div>
					</div>	
											
				    <div class="input-group input-line">
				    	<div class="input-group-prepend">
							<span class="input-group-text inputTitle">변경 이미지</span>
						</div>
						<div class="upload-input custom-file">
				    	<input type="file" class="custom-file-input" id="imageFile" name="imageFile" >
						<label class="custom-file-label" for="imageFile">이미지를 첨부해주세요.</label>
						</div>
					</div>
				</div>
			</div>
			<br>
			<h3>상품상세정보</h3>
			<div class="mb-3">
	   		    <div class="input-group input-line">
					<div class="input-group-prepend">
						<span class="input-group-text inputTitle">원산지</span>
					</div>
					<input class="form-control" type="text" name="origin" id="origin" value="${prodVO.origin}" required>
			    </div>
	 			<div class="text_cnt countText" id="origin_text_cnt">(${prodVO.origin.length() } / 15)</div>
				<div class="error-msg origin"></div>
				<div class="btn-space"></div>
		    </div>
		    
		    <div class="mb-3">
				<div class="input-group input-line ">
					<div class="input-group-prepend ">
						<span class="input-group-text inputTitle">제조일자</span>
					</div>
					<input class="form-control selectBox" type="date" id="manufacturingDate" name="manufacturingDate" value="${prodVO.manufacturingDate}" required>
				</div>
				<div class="error-msg manufact"></div>
				<div class="btn-space"></div>
			</div>
			
			<div class="mb-3">
				<div class="input-group input-line  mb-3">
					<div class="input-group-prepend mb-3" >
						<span class="input-group-text inputTitle">유통기한</span>
					</div>
					<input class="form-control mb-3 selectBox" type="date" id="expirationDate" name="expirationDate" value="${prodVO.expirationDate}" required>
				</div>
				<div class="error-msg expire"></div>
				<div class="btn-space"></div>
			</div>
			
			<div class="mb-3">
			<div class="input-group input-line">
				<div class="input-group-prepend" id="stock">
					<span class="input-group-text inputTitle">상품재고수량</span>
				</div>
				<input class="form-control" type="number" name="stock" value="${prodVO.stock}" id="stockBox" required>
		    </div>
		    <div class="error-msg stock"></div>
		    <div class="btn-space"></div>
			</div>

			<div class="mb-3">
			<div class="input-group input-line">
				<div class="input-group-prepend ">
					<span class="input-group-text inputTitle">주의사항</span>
					
				</div>
				<textarea class="form-control" name="caution" id="caution" rows="10" cols="40" required>${prodVO.caution}</textarea>
		    </div>
		    <div class="text_cnt countText" id="caution_text_cnt">(${prodVO.caution.length() } / 500)</div>
			</div>
			<div class="error-msg caution"></div>
		    <div class="btn-space"></div>
			
			<div class="mb-3">
			<div class="input-group input-line">
				<div class="input-group-prepend">
					<span class="input-group-text inputTitle">안내사항</span>
				</div>
				<textarea class="form-control" name="notification" id="notification" rows="10" cols="40" required>${prodVO.notification}</textarea>
		    </div>
		    <div class="text_cnt countText" id="notification_text_cnt">(${prodVO.notification.length() } / 500)</div>
			</div>
			<div class="error-msg noti"></div>
		    <div class="btn-space"></div>

		    <div class="mb-3">
				<div class="mb-3">
					<div class="input-group input-line">
						<div class="input-group-prepend">
							<span class="input-group-text inputTitle">상세이미지</span>
						</div>
						<c:forEach var="PIvo" items="${PIList}">
						
							<button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#modal${PIvo.imageId }" id="detailImg">
								<img class="detailImg" alt="상세이미지" src="${pageContext.request.contextPath}/productImage/detail/${PIvo.productPhoto}"/>
							</button>
							<input type="hidden" id="imageId" name="imageId" value="${PIvo.imageId }">
							<div class="modal" id="modal${PIvo.imageId }">
								<div class="modal-dialog modal-xl">
									<div class="modal-content">
										<div class="modal-header">
											<h4>상세이미지</h4>
										</div>
										<div class="modal-body" data-bs-dismiss="modal">
											<img class="modalImg" alt="상세이미지" src="${pageContext.request.contextPath}/productImage/detail/${PIvo.productPhoto}"/>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						
				    </div>
				    <div class="input-group input-line">
				    	<div class="input-group-prepend">
							<span class="input-group-text inputTitle">변경 이미지</span>
						</div>
						<div class="upload-input custom-file">
							<input type="file" class="custom-file-input upload-input repr-path" id="content-path" name="productPhotoFiles" multiple>
							<label class="custom-file-label imageFileBox" for="imageFile">이미지를 'ctrl + 클릭'으로 한번에 여러장 첨부해주세요.</label>
						</div>
					</div>
				</div>
			</div>
		    <div class="error-msg contentFile"></div>
		    <div class="btn-space"></div>
			
           	<input type="submit" id="prodUpdateBtn" class="btn reg-confirm" value="수정하기" >

		</form>
		
	<div id="sellerCancleBox">
	<button class="btn" id="sellerCancle">취소</button>
	</div>
</div>

<script>
	$(document).ready(function() {
	    $("#sellerCancle").on("click", function() {
	    	location.href="${pageContext.request.contextPath}/product/prodDetailSeller.do?productId=${prodVO.productId}";
	    });
	});
</script>
<!-- footer -->
<%@ include file="../../../../css/headerFooter/sellerFooter.jsp" %>

</body>
</html>