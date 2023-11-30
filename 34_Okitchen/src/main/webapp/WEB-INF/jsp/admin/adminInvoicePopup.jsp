<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>송장번호 입력창</title>
	<!-- 부트스트랩 CSS 추가 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<script>
$(document).ready(function() {
	$('.confirm').on('click', function() {
		console.log("입력버튼 누름");
		
	    let confirmNum = document.getElementById('invoiceNumber').value;
	    console.log("confirmNum: " + confirmNum)
	    
	    // 타이픈 없애주는 코드 '-'
        let numericValue = confirmNum.replace(/[^0-9-]/g, '');
	    
	    
	    if (numericValue.length >= 10 && numericValue.length <= 14) {
	        let userConfirmed = confirm("번호 " + numericValue + "를 입력하시겠습니까?");
	        if (userConfirmed) {
	        	
	        	
	            window.close(); //팝업창 꺼짐.
	            
	        } else {
	            // 사용자가 "취소"를 눌렀을 때의 처리
	            return;
	        }
	    } else {
	        alert("유효한 번호가 아닙니다.\n 입력하신 번호를 다시 확인해 주십시오.");
	    }
	});
});
	
	
</script>
<style>
body {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
    margin: 0;
}

.top-area {
    text-align: center;
}

.input-group {
    margin-top: 20px;
}

#invoiceNumber {
    width: 350px; /* Adjust the width as needed */
}

.confirm {
    margin-left: 10px;
}
	
</style>
</head>
<body>
	<div>
		<div>
			<div class="top-area">
				<div class="input-group input-group-lg">
				    <div class="input-group-prepend">
				        <span class="input-group-text" id="inputGroup-sizing-lg">운송장 번호</span>
				    </div>
				    <input id="invoiceNumber" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg"
				  		placeholder="'-'를 제외한 10~14자리 숫자를 입력" >
					<button class="confirm" >확인</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>