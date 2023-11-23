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
		if("${sellerVO}" == ("") ||"${sellerVO}" == (null)){
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
</style>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
function submitForm() {
	alert("등록버튼 클릭됨");
}


	$(document).ready(function(){
		
		//옵션 라디오 버튼 변경 이벤트 리스너
		$('input[name="optionCheck"]').change(function() {
			var selectedOption = $('input[name="optionCheck"]:checked').val();
			var additionalInfoName = $('input[name="optionName"]');
			var additionalInfoStock = $('input[name="optionStock"]');
			var additionalInfoPrice = $('input[name="optionPrice"]');
			
			if (selectedOption === 'Y') {
				// 옵션이 있는 경우, 추가정보를 입력할 수 있는 input 표시
				alert("옵션에 대한 추가정보를 입력합니다.");
				$('#optionInfoContainer').show();
				additionalInfoName.val('');
				additionalInfoStock.val('');
                additionalInfoPrice.val('');
			} else {
				// 옵션이 없는 경우, 추가 정보 input을 숨김
				$('#optionInfoContainer').hide();
				
				// 입력됐던 값 초기화
                additionalInfoName.val('null');
                additionalInfoStock.val(-1); //int
                additionalInfoPrice.val(-1); //int
                // 빈문자열로 초기화하는데 int값으로 저장되어야하니까 추후 오류발생할 수도 있음
                // 오류 발생하는 경우 유효한 기본값 '-1'로 설정. 서버에서 처리해주면 될듯  
			}
		});
			
		//할인 라디오 버튼 변경 이벤트 리스너
		$('input[name="discount"]').change(function(){
			alert("버튼 클릭됨");
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
        
        //옵션상품명
		$('#optionName').on('keyup', function() {
            $('#optionName_text_cnt').html("("+$(this).val().length+" / 25)");
            if($(this).val().length > 25) {
                $(this).val($(this).val().substring(0, 25));
                $('#optionName_text_cnt').html("(25 / 25)");
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
<%@ include file="../../../../css/headerFooter/sellerLogoutHeader.jsp" %>
	<div id="container">
		<h1>상품등록 [registerProduct.jsp]</h1>
		<hr>
		<form class="regi-form" action="insertProduct.do" method="post"
			enctype="multipart/form-data">
			<div class="input-line">
				<div class="input-label">
					<label>카테고리</label>
				</div>
				<div class="input-box category">
					<div class="input" id="input2">
						<select name="categoryName" id="categoryName">
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
				</div>
			</div>
			<div class="input-line">
				<div class="input-label">
					<label>브랜드명</label>
				</div>
				<div class="input-box">
					<div class="input">
						<input type="text" name="brand" id="brand"
							placeholder="브랜드명을 입력해주세요." required>
					</div>
					<div id="brand_text_cnt" class="text_cnt">(0 / 25)</div>
					<div class="error-msg title"></div>
				</div>
				<div class="btn-space"></div>
			</div>
 			<div class="input-line">
				<div class="input-label">
					<label>상품명</label>
				</div>
				<div class="input-box">
					<div class="input">
						<input type="text" name="title" id="title"
							placeholder="상품명을 입력해주세요." required>
					</div>
					<div id="title_text_cnt" class="text_cnt">(0 / 50)</div>
					<div class="error-msg title"></div>
				</div>
				<div class="btn-space"></div>
			</div>
			<div class="input-line">
				<div class="input-label">
					<label>상품설명</label>
				</div>
				<div class="input-box">
					<div class="input">
						<textarea name="content" id="content" rows="10" cols="40"
							placeholder="상품에 대한 설명을 입력해주세요." required></textarea>
					</div>
					<div id="content_text_cnt" class="text_cnt">(0 / 500)</div>
				</div>
			</div>
			<div class="input-line">
				<div class="input-label">
					<label>상품가격</label>
				</div>
				<div class="input-box">
					<div class="input">
						<input type="number" name="price" id="input"
							placeholder="가격을 입력해주세요." required>
					</div>
					<div class="error-msg price"></div>
				</div>
				<div class="btn-space"></div>
			</div>
			<div class="input-line">
				<div class="input-label">
					<label>대표이미지</label>
				</div>
				<div class="input-box">
					<div class="input">
						<div class="upload-input repr-path">
							<input type="file" name="imageFile" id="title-path" required>
						</div>
					</div>
					<div class="error-msg file"></div>
				</div>
				<div class="btn-space"></div>
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
				<div class="input-label">
					<label>원산지</label>
				</div>
				<div class="input-box">
					<div class="input">
						<input type="text" name="origin" id="origin"
							placeholder="원산지를 입력해주세요.">
					</div>
					<div class="error-msg origin"></div>
					<div id="origin_text_cnt" class="text_cnt">(0 / 15)</div>
				</div>
				<div class="btn-space"></div>
			</div>
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
			<div class="input-line">
				<div class="input-label">
					<label>상품재고수량</label>
				</div>
				<div class="input-box">
					<div class="input">
						<input type="number" name="stock" placeholder="재고를 입력해주세요." required>
					</div>
					<div class="error-msg stock"></div>
				</div>
				<div class="btn-space"></div>
			</div>
			<div class="input-line">
				<div class="input-label">
					<label>옵션적용여부</label>
				</div>
				<div class="input-box">
					<fieldset>
						<input type="radio" name="optionCheck" value="N"> 
							<span>옵션미적용</span> 
						<input type="radio" name="optionCheck" value="Y"> 
							<span>적용</span>
					</fieldset>
					<div class="error-msg option"></div>
				</div>
				<div class="btn-space"></div>
				<div id="optionInfoContainer" style="display: none;">
					<!-- 추가정보를 표시할 컨테이너 -->
					<div class="input-line">
						<div class="input-label">
							<label>옵션상품명</label>
						</div>
						<div class="input-box">
							<div class="input">
								<input type="text" name="optionName" id="optionName"
									placeholder="상품 이름을 입력해주세요." required>
							</div>
							<div class="error-msg optionName"></div>
							<div id="optionName_text_cnt" class="text_cnt">(0 / 25)</div>
						</div>
						<div class="btn-space"></div>
					</div>
					<div class="input-line">
						<div class="input-label">
							<label>옵션상품재고수량</label>
						</div>
						<div class="input-box">
							<div class="input">
								<input type="number" name="optionStock"
									placeholder="옵션 재고를 입력해주세요." required>
							</div>
							<div class="error-msg optionStock"></div>
						</div>
						<div class="btn-space"></div>
					</div>
					<div class="input-line">
						<div class="input-label">
							<label>옵션상품가격</label>
						</div>
						<div class="input-box">
							<div class="input">
								<input type="number" name="optionPrice"
									placeholder="옵션 가격을 입력해주세요." required>
							</div>
							<div class="error-msg optionPrice"></div>
						</div>
						<div class="btn-space"></div>
					</div>
				</div>
			</div>
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

	</div>


<!-- footer -->
	<%@ include file="../../../../css/headerFooter/sellerFooter.jsp" %>

</body>
</html>