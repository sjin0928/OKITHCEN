<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송 요청사항</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/updateRequest.css"/>
<script>
	//form 안에서 radio 각각 조건
	$(document).ready(function() {
		$('input[name="deliveryLocation"]').change(function() {
			if ($(this).val() === '기타장소') {
				$('.allEntryMethods').hide();
				$('.otherLocations').show();
			} else {
				$('.allEntryMethods').show();
				$('.otherLocations').hide();
			}
		});

		$('input[name="entryMethod"]').change(function() {
			if ($(this).val() === "경비실 호출") {
				$(".entryMehthodCall").show();
			} else {
				$(".entryMehthodCall").hide();
			}
		});

		$('input[name="entryMethod"]').change(function() {
			if ($(this).val() === "기타") {
				$(".otherEntryMethods").show();
			} else {
				$(".otherEntryMethods").hide();
			}
		});
	});
	

	//취소 버튼 눌렀을때 화면 닫기
	function closePopup() {
		window.close();
	} 
	
	//수정 버튼 눌렀을 때 정보 처리
	function saveRequest() {
    var formData = new FormData(document.getElementById("deliveryForm"));

    formData.append("selectedDeliveryLocation", $("input[name='deliveryLocation']:checked").val());
    formData.append("selectedEntryMethod", $("input[name='entryMethod']:checked").val());
	if ($("input[name='deliveryLocation']:checked").val() === "기타장소" ) {
		formData.append("otherDeliveryLocation", $(".otherLocations textarea").val());
	}
    if ($("input[name='entryMethod']:checked").val() === "경비실 호출") {
        formData.append("entryMethodCallDetails", $(".entryMehthodCall textarea").val());
    } else if ($("input[name='entryMethod']:checked").val() === "기타") {
        formData.append("otherEntryMethodDetails", $(".otherEntryMethods textarea").val());
    }
    
    $.ajax("saveRequest.do",{
        type: "post",
        data: formData,
        processData: false,
        contentType: false,
        success: function (data) {
           //alert("성공");
           window.close();
           location.href = "reOrderForm.do";
           window.opener.location.reload();
        },
        error: function () {
            alert("다시 도전");
        }
    });
}
</script>
</head>
<body>
	<form id="deliveryForm" name="deliveryForm" action="saveRequest.do" enctype="multipart/form-data">
		<h2 class="requestTitle">배송 요청사항</h2>
		<div class="receiverRequest">
			<p class="receiverInfo">받으실 분</p>
			<input class="receiverName" type="text" value="${loginUser.userName }" readonly>
		</div>
		<div class="receiverPhoneNum">
			<p class="receiverInfo">휴대폰</p>
			<input class="receiverPhone" type="text" value="${loginUser.userPhonenum }" readonly>
		</div>
		<div class="receiverPlace">
			<p class="receiverInfo">받으실 장소</p>
			<div class="doorLocation">
				<input class="receiverLocation" type="radio" name="deliveryLocation"
					value="문 앞"> 문 앞
			</div>
			<div class="etcLocations">
				<input class="receiverLocation" type="radio" name="deliveryLocation"
					value="기타장소"> 기타 장소
			</div>
			<div style="display: none;" class="otherLocations">
				<textarea cols="30" rows="5" placeholder="원하시는 장소를 자세히 입력해주세요"></textarea>
			</div>

		</div>
		<div class="allEntryMethods">
			<p>공동현관 출입 방법</p>
			<div class="entryPublic">
				<input type="radio" name="entryMethod" value="공동현관 비밀번호">
				공동현관 비밀번호
			</div>
			<div class="freeEntry">
				<input type="radio" name="entryMethod" value="자유 출입 가능">자유 출입 가능
			</div>
			<div class="callSecurity">
				<input type="radio" name="entryMethod" value="경비실 호출">경비실 호출
				<div style="display: none;" class="entryMehthodCall">
					<textarea cols="30" rows="5" placeholder="경비실 호출 방법을 자세히 입력해주세요"></textarea>
				</div>
			</div>
			<div class="etcEntry">
				<input type="radio" name="entryMethod" value="기타">기타
				<div style="display: none;" class="otherEntryMethods">
					<textarea cols="30" rows="5" placeholder="출입방법을 상세히 기재해주세요"></textarea>
				</div>
			</div>
		</div>
	</form>
	<div class="requestBtn">
		<button class="resetRequest" type="button" onclick="closePopup()">취소</button>
		<button class="saveRequest" type="button" onclick="saveRequest()">저장</button>
	</div>
</body>
</html>