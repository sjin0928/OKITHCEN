<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송지 수정 페이지</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cssStyle/updateAddress.css"/>
<script>
	//주소창 api
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣기.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
    
    //수정완료 버튼 눌렀을 때
    function updateAddress(){

    	// 주소와 상세주소 값을 합쳐서 hidden 필드에 설정해서
        var address = document.getElementById("sample6_address").value;
        var detailAddress = document.getElementById("sample6_detailAddress").value;
		//alert(address);
		//alert(detailAddress);
        address += " " + detailAddress;
       	//alert(address);
     
       	
       	$.ajax("addressChange.do",{
        	type:"post",
        	data: JSON.stringify({userAddress: address }),
        	dataType : "json",
        	contentType :"application/json; charset=utf-8",
        	success : function(data){
        		alert('성공');
		       	window.opener.location.reload();
		        window.close();
        	},
        	error : function(error){
        		console.log('AJAX 오류', error);
				alert('실패');         		
        	}
        });
    }
</script>
</head>
<body>
	<div class="editDelieveryContainer">
		<h2>배송지 변경</h2>
		<form id="addressForm" action="updateAddress.do" method="post">
			<div class="editDelieveryContent">
				<span>기본 배송지</span>
				<div class="editDelieveryDetail" style="background-color: rgba(240, 240, 240, 0.8);">
					<div class="editAddressDetail">
						<label class="AddressName">주소</label>
						<div class="addressDiv">
							<div class="nowAddress">${user.userAddress }</div>
							<div style="display:inline-block;">
								<input type="hidden" id="sample6_postcode" placeholder="우편번호"> 
								<input id="addressInputBtn" type="button" onclick="sample6_execDaumPostcode()" value="주소 찾기"><br> 
								<input type="text" name="userAddress" id="sample6_address" placeholder="주소"><br> 
								<input type="text" name="userAddressDetail" id="sample6_detailAddress" placeholder="상세주소"> 
								<input type="hidden"id="sample6_extraAddress" placeholder="참고항목">
							</div>
						</div>
					</div>
					<div class="editReceiver">
						<label class="receiver">받으실 분</label>
						<div class="nameDiv">
							<p>${user.userName }</p>
						</div>
					</div>
					<div class="editPhoneNum">
						<label>휴대폰</label>
						<div>
							<p>${user.userPhonenum }</p>
						</div>
					</div>
				</div>
			</div>
		</form>
		<div>
			<button id="saveUpdateAddressBtn" type="button" onclick ="updateAddress()">
				<span>저장</span>
			</button>
		</div>

	</div>
</body>
</html>