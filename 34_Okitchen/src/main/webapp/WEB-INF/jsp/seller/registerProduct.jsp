<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록페이지</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/seller.css">
	<!-- 메뉴바 부트스트랩 템플릿 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/lux/bootstrap.min.css" integrity="sha384-9+PGKSqjRdkeAU7Eu4nkJU8RFaH8ace8HGXnkiKMP9I9Te0GJ4/km3L1Z8tXigpG" crossorigin="anonymous">
</head>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	window.onload = function() {
		if("${sellerVO.sellerId}" === ("") ||"${sellerVO.sellerId}" === (null)){
			alert("세션만료 : 다시 로그인 해주세요.")
			location.href="${pageContext.request.contextPath}/sellerLogin.jsp";
		}
	}
</script>

<style>
	#input {
		width: 200px;
	}
	#error {
		color: red;
	}
	
	#container {
    margin: auto; /* 수평 가운데 정렬을 위해 margin을 auto로 설정합니다. */
    width: 50%; /* 필요에 따라 적절한 너비를 지정할 수 있습니다. */
}

/* 아래의 스타일은 선택적으로 적용할 수 있습니다. */
#regi_form {
    max-width: 100%; /* 폼의 최대 너비를 지정합니다. */
    margin: 0 auto; /* 폼을 수평으로 가운데 정렬합니다. */
    padding: 40px; /* 내용 주위에 간격을 만듭니다. */
    border: 1px solid #ddd; /* 폼 주위에 테두리를 추가합니다. */
    border-radius: 8px; /* 테두리의 모서리를 둥글게 만듭니다. */
}
	
.input-line {
    display: flex;
    align-items: center;
    margin-bottom: 10px; /* 두 div 사이의 간격을 조절할 수 있는 값입니다. */
}

.input-label {
    margin-right: 10px; /* 레이블과 선택 상자 사이의 간격 조정 */
}

.input-box.category {
    flex: 0.5; /* 카테고리 박스가 남은 공간을 차지하도록 설정 */
}
.input-group-text {
    flex: 0.07;
}

.button-container {
        text-align: center; /* 텍스트를 가운데 정렬합니다. */
    }

    .reg-confirm {
        margin-top: 10px; /* 위쪽 여백을 조절하여 버튼을 조금 아래로 이동시킵니다. */
    }
.input-group .form-control {
        width: 100%;
    }

   .text_cnt {
       margin-top: 15px; /* 필요한 만큼의 간격을 설정하세요 */
   }
    
.date-group {
	display: inline-flex;
}    
.date-group .input-line{
	margin-right: 20px;
}    

</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
	$(document).ready(function(){
		//할인 라디오 버튼 변경 이벤트 리스너
		$('input[name="discount"]').change(function(){
			var selectedOption = $('input[name="discount"]:checked').val();		
			var additionalInfoDisc = $('input[name="discountRate"]');
			
			if (selectedOption === 'Y') {
				$('#discInfoContainer').show();
				additionalInfoDisc.val('');
			} else {
				$('#discInfoContainer').hide();
				additionalInfoDisc.val(0);
			}
		});
		
		//브랜드명
		$('#brand').on('keyup', function() {
            $('#brand_text_cnt').html("("+$(this).val().length+" / 25)");
            if($(this).val().length > 25) {
                $(this).val($(this).val().substring(0, 25)); //입력가능한 문자수까지만 보여줌
                $('#brand_text_cnt').html("(25 / 25)");
                alert("작성 가능 문자수를 초과하셨습니다")
            }
        })
        
		//상품명
		$('#title').on('keyup', function() {
            $('#title_text_cnt').html("("+$(this).val().length+" / 50)");
            if($(this).val().length > 50) {
                $(this).val($(this).val().substring(0, 50)); //입력가능한 문자수까지만 보여줌
                $('#title_text_cnt').html("(50 / 50)");
                alert("작성 가능 문자수를 초과하셨습니다")
            }
        })
		
        //상품설명
		$('#content').on('keyup', function() {
            $('#content_text_cnt').html("("+$(this).val().length+" / 500)");
            if($(this).val().length > 500) {
                $(this).val($(this).val().substring(0, 500));
                $('#content_text_cnt').html("(500 / 500)");
                alert("작성 가능 문자수를 초과하셨습니다")
            }
        })
        
		//주의사항
		$('#caution').on('keyup', function() {
            $('#caution_text_cnt').html("("+$(this).val().length+" / 500)");
            if($(this).val().length > 500) {
                $(this).val($(this).val().substring(0, 500));
                $('#caution_text_cnt').html("(500 / 500)");
                alert("작성 가능 문자수를 초과하셨습니다")
            }
        })
		
		//안내사항
		$('#notification').on('keyup', function() {
            $('#notification_text_cnt').html("("+$(this).val().length+" / 1500)");
            if($(this).val().length > 1500) {
                $(this).val($(this).val().substring(0, 1500));
                $('#notification_text_cnt').html("(1500 / 1500)");
                alert("작성 가능 문자수를 초과하셨습니다")
            }
        })
        
        //원산지
        $('#origin').on('keyup', function() {
            $('#origin_text_cnt').html("("+$(this).val().length+" / 15)");
            if($(this).val().length > 15) {
                $(this).val($(this).val().substring(0, 15));
                $('#origin_text_cnt').html("(15 / 15)");
                alert("작성 가능 문자수를 초과하셨습니다")
            }
        })
        
        //상품등록 유효성 체크 (확인 못했음)
        /* $('.reg-confirm').click(function(){
        	
        	if($('inqut[name=title]').val() === "") {
                alert("상품 이름을 입력해 주세요");
                $('input[name=title]').focus();
                return false;
            }
        	
        	if($('inqut[name=content]').val() === "") {
                alert("상품 설명을 입력해 주세요");
                $('input[name=content]').focus();
                return false;
            }
        	
        	if($('inqut[name=price]').val() === "") {
                alert("상품 가격을 입력해 주세요");
                $('input[name=price]').focus();
                return false;
            }
        	
        	if($('inqut[name=origin]').val() === "") {
                alert("원산지를 입력해 주세요");
                $('input[name=origin]').focus();
                return false;
            }
        	
        	if($('inqut[name=stock]').val() === "") {
                alert("재고를 입력해 주세요");
                $('input[name=stock]').focus();
                return false;
            }
        	
        	if($('inqut[name=caution]').val() === "") {
                alert("주의사항을 입력해 주세요");
                $('input[name=caution]').focus();
                return false;
            }
        	
        	if($('inqut[name=notification]').val() === "") {
                alert("안내사항을 입력해 주세요");
                $('input[name=notification]').focus();
                return false;
            }
        	
        }); */
        
        
	});
	
	//상품가격 초과된 값 입력시 (적용X)
	function checkMaxValue() { 
		var input = $('#input');
		var error = $('#error');
		var inputValue = parseInt(input.val(), 10); //입력된 값을 10진수로 
		
		if (inputValue > 9999999) {
			error.text('최대 입력값을 초과했습니다.');
		} else {
			error.text('');
		}
		
	}
	
</script>
</head>
<body>

	<!-- header -->
	<%@ include file="/css/headerFooter/sellerLogoutHeader.jsp" %>

	<div id="container">
		<hr>
		<form class="regi-form" action="insertProduct.do" method="post" id="regi_form"
			enctype="multipart/form-data">
			<div class="input-line">
				<div class="input-label">
					<label>카테고리</label>
				</div>
				<div class="input-box category">
					<div class="input" id="input2">
						<select class="form-select" id="categoryName" name="categoryName">
							<option disabled selected>선택</option>
							<option value="vege">채소</option>
							<option value="fruit">과일</option>
							<option value="meat">정육/계란</option>
							<option value="seafood">해산물</option>
							<option value="snack">간식/디저트</option>
							<option value="bakery">베이커리</option>
							<option value="seasoning">조미료</option>
							<option value="drink">생수/음료</option>
							<option value="mealkit">간편식/샐러드</option>
						</select>
						
					</div>
				</div>
			</div>
			<div class="input-line">
				<div class="input-group mb-3">
				  <label class="input-group-text" for="brand" id="basic-addon1">브랜드명</label>
				  <input type="text" class="form-control" id="brand" name="brand" placeholder="브랜드명을 입력해주세요." required>
				  <div id="brand_text_cnt" class="text_cnt">(0 / 25)</div>
				</div>
			</div>
 			<div class="input-line">
				<div class="input-group mb-3">
				  <label class="input-group-text" for="brand" id="basic-addon1">상품명</label>
				  <input type="text" class="form-control" name="title" id="title" placeholder="상품명을 입력해주세요." required>
				  <div id="title_text_cnt" class="text_cnt">(0 / 50)</div>
				</div>
			</div>
			<div class="input-line">
				<div class="input-group">
				  <span class="input-group-text">상품설명</span>
				  <textarea name="content" id="content" rows="10" cols="40"
				  	class="form-control" placeholder="상품에 대한 설명을 입력해주세요." required></textarea>
				  <div id="content_text_cnt" class="text_cnt" style="margin-top: 235px;" >(0 / 500)</div>	
				</div>
			</div>
			<div class="input-line">
				<div class="input-group mb-3">
				  <label class="input-group-text" for="brand" id="basic-addon1">상품가격</label>
				  <input type="number" name="price" id="input" placeholder="가격을 입력해주세요." required
				  	class="form-control">
				</div>
			</div>
			<div class="input-line">
				<div class="input-group mb-3">
					<label class="input-group-text" for="" id="basic-addon1">대표이미지</label>
				  <input type="file" name="imageFile" id="title-path" class="form-control" required>
				</div>
			</div>
			<div class="input-line">
				<div class="input-label">
					<label>할인적용여부</label>
				</div>
				<fieldset>
					<label> <input type="radio" name="discount" value="N"/> 
						<span>할인 미적용</span>
					</label> <label> <input type="radio" name="discount" value="Y" />
						<span>할인</span>
					</label>
				</fieldset>
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

			<div class="input-line">
				<div class="input-group mb-3">
				  <label class="input-group-text" for="brand" id="basic-addon1">원산지</label>
				  <input type="text" class="form-control" name="origin" id="origin" placeholder="원산지를 입력해주세요." required>
				  <div id="origin_text_cnt" class="text_cnt">(0 / 15)</div>
				</div>				
			</div>
			<div class="date-group">
				<div class="input-line">
					<div class="input-label">
						<label>제조일자</label>
					</div>
					<div class="input-box">
						<div class="input">
							<input type="date" name="manufacturingDate" required>
						</div>
						<div class="error-msg manufact"></div>
					</div>
					<div class="btn-space"></div>
				</div>
				<div class="input-line">
					<div class="input-label">
						<label>유통기한</label>
					</div>
					<div class="input-box">
						<div class="input">
							<input type="date" name="expirationDate" required>
						</div>
						<div class="error-msg expire"></div>
					</div>
					<div class="btn-space"></div>
				</div>
			</div>
			<div class="input-line">
				<div class="input-group mb-3">
				  <label class="input-group-text" for="brand" id="basic-addon1">상품재고수량</label>
				  <input type="number" class="form-control"  name="stock" placeholder="재고를 입력해주세요." required>
				</div>
			</div>
			<div class="input-line">
				<div class="input-group">
				  <span class="input-group-text">주의사항</span>
				  <textarea name="caution" id="caution" rows="10" cols="40"
				  	class="form-control" placeholder="상품 주의사항을 입력해주세요." required></textarea>
				  <div id="caution_text_cnt" class="text_cnt" style="margin-top: 235px;">
				  	(0 / 500)
			  	  </div>	
				</div>				
			</div>
			
			
			<div class="input-line">
				<div class="input-group">
				  <span class="input-group-text">안내사항</span>
				  <textarea name="notification" id="notification"  rows="10" cols="40"
				  	class="form-control" placeholder="상품 안내사항을 입력해주세요." required></textarea>
				  <div id="notification_text_cnt" class="text_cnt" style="margin-top: 235px;">
				  	(0 / 1500)
		  		  </div>	
				</div>				
			</div>
			<div class="input-line">
				<div class="input-group mb-3">
					<label class="input-group-text" for="" id="basic-addon1">상세이미지</label>
				  <input type="file" name="productPhotoFiles" id="content-path" multiple required class="form-control">
				</div>				
			</div> 
			<div class="button-container">
            	<input type="submit" class="reg-confirm btn btn-outline-warning" 
            		style="--bs-btn-hover-color: white;"
            		value="등록하기" onclick="submitForm()">
           	</div>
		</form>
	</div>

<!-- footer -->
<%@ include file="../../../../css/headerFooter/sellerFooter.jsp" %>

</body>
</html>