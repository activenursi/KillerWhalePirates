<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<style>
	body {
		background-color: rgb(248 250 252);
	}
	
	.forgetPwd_title {
		font-size: 2rem;
		margin-bottom: 60px;
	} 
	
	.findPassword_wrap {
		margin-top: 80px;
	}
	
	.pwdContent_wrap {	
		border: 1px solid;
		width: 700px;
		height: 1200px;
		display: flex;
		padding-top: 70px;
		align-items: center;
		flex-direction: column;
		margin: 0 auto;
		background-color: #FFFFFF;
	}
	
	.account_emailAddr {
		font-size: .875rem;
		font-weight: 700;
	}
	
	.inputBox {
		margin-bottom: 34px;
		padding: 10px;
		width: 250px;
		border-radius: 4px;
		border: 1px solid #94a3b8;
		font-size: 1rem; /* 16px */
	}
	
	.reissue_inputBox {
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: column;
		gap: 30px;
		padding: 10px;
		width: 278px;
		background-color: rgb(52, 152, 219);
		border: none;
		border-radius: 4px;
		color:#FFFFFF;
		font-size: 1rem;
	}
	
	#emailBlankCheck {
		display: none;
	}
	
	#emailIdentify {
		display: none;
	}
	
	#emailCerti {
		display: none;
	}
	
	#emailCertiPass {
		display: none;
	}
	
	#emailCertiFail {
		display: none;
	}
	
	#newPassword {
		display: none;
	}
	
	#pwdCheck {
		display: none;
	}
	
	#pwdBlankCheck {
		display: none;
	}
	
	#pwdDoubleCheck {
		display: none;
	}
	
</style>

<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
	function emailCheckFnc() {
		var emailObj = document.getElementById("email");
		var email = emailObj.value;
		
		var emailBlankCheckObj = document.getElementById("emailBlankCheck");
		var emailIdentifyObj = document.getElementById("emailIdentify");
	
		$.ajax({
			url : "./emailIdentify.do", 
			type : "POST", 
			dataType : "json", 
			data : {"email" : $("#email").val()}, 
			success : function(data) {
				if (email == "") {
					emailBlankCheckObj.style.display = "block";
					emailIdentifyObj.style.display = "none";
					emailObj.style.borderColor = "red";
				}else if (data == 0) {
					emailBlankCheckObj.style.display = "none";
					emailIdentifyObj.style.display = "block";
					emailObj.style.borderColor = "red";
				} else if (data == 1){
					emailBlankCheckObj.style.display = "none";
					emailIdentifyObj.style.display = "none";
					emailObj.style.borderColor = "blue";
				}
			}
		})
	}
	
	function mailSendFnc() {
		var emailObj = document.getElementById("email");
		var email = emailObj.value;
		
		var emailCertiObj = document.getElementById("emailCerti");
		
		$.ajax({
			url : '<c:url value ="./emailCheck.do?email="/>'+email, // GET방식이라 Url 뒤에 email을 뭍힐수있다.
			type : 'GET',
			success : function (data) {
				console.log("data : " +  data);
				code = data;
				alert('인증번호가 전송되었습니다.');
				emailCertiObj.style.display = "block";
			}
		}); // end ajax
	}
	
	function emailCertiBtnFnc() {
		var emailCheckObj = document.getElementById("emailCheck");
		var emailCheck = emailCheckObj.value;
		
		var newPasswordObj = document.getElementById("newPassword");
		
		var emailCertiPassObj = document.getElementById("emailCertiPass");
		var emailCertiFailObj = document.getElementById("emailCertiFail");
		
		var emailValObj = document.getElementById("emailVal");

		if(emailCheck === code){
			emailCertiPassObj.style.display = "block";
			emailCertiFailObj.style.display = "none";
			newPasswordObj.style.display = "block";
			emailCheckObj.style.borderColor = "blue";
			emailValObj.setAttribute("value", "Y");
		}else{
			emailCertiPassObj.style.display = "none";
			emailCertiFailObj.style.display = "block";
			emailCheckObj.style.borderColor = "red";
			emailValObj.setAttribute("value", "N");
		}
	}
	
	function passwordCheckFnc() {
		var passwordObj = document.getElementById("password");
		var password = passwordObj.value;
		
		var passwordReg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,24}$/;
		
		var pwdCheckObj = document.getElementById("pwdCheck");
		var pwdBlankCheckObj = document.getElementById("pwdBlankCheck");

		if (password == "") {
			pwdCheckObj.style.display = "none";
			pwdBlankCheckObj.style.display = "block";
			passwordObj.style.borderColor = "red";
		} else if (!passwordReg.test(password)) {
			pwdBlankCheckObj.style.display = "none";
			pwdCheckObj.style.display = "block";
			passwordObj.style.borderColor = "red";
		} else {
			pwdBlankCheckObj.style.display = "none";
			pwdCheckObj.style.display = "none";
			passwordObj.style.borderColor = "blue";
		}
	}
	
	function passwordDoubleCheckFnc() {
		var passwordObj = document.getElementById("password");
		var passwordCheckObj = document.getElementById("passwordCheck");
		
		var password = passwordObj.value;
		var passwordCheck = passwordCheckObj.value;
		
		var pwdDoubleCheckObj = document.getElementById("pwdDoubleCheck");
		var pwdBlankCheckObj = document.getElementById("pwdBlankCheck");
		
		var passwordValObj = document.getElementById("passwordVal");
		
		if (passwordCheck == "") {
			pwdBlankCheckObj.style.display = "block";
			pwdDoubleCheckObj.style.display = "none";
			passwordCheckObj.style.borderColor = "red";
			passwordValObj.setAttribute("value", "N");
		} else if (password != passwordCheck) {
			pwdBlankCheckObj.style.display = "none";
			pwdDoubleCheckObj.style.display = "block";
			passwordCheckObj.style.borderColor = "red";
			passwordValObj.setAttribute("value", "N");
		} else {
			pwdDoubleCheckObj.style.display = "none";
			pwdBlankCheckObj.style.display = "none";
			passwordCheckObj.style.borderColor = "blue";
			passwordValObj.setAttribute("value", "Y");
		}
	}
	
	function joinValidateFnc() {
		var emailVal = document.getElementById("emailVal").value;
		var passwordVal = document.getElementById("passwordVal").value;
		
		var validate = emailVal + passwordVal;
		
		var result;
		
		if (validate == "YY") {
			result = true;
		} else {
			result = false;
		}
		
		return result;
	}
</script>
</head>
<body>
	<div id="findPassword_wrap">
		<div>
			<div class="pwdContent_wrap">
				<h2 class="forgetPwd_title">비밀번호를 잊으셨나요?</h2>
			<form action="./resetPasswordCtr.do" onsubmit="return emailValidateFnc();" method="post">
				<input type="hidden" id="emailVal" value="N">
				<input type="hidden" id="passwordVal" value="N">
				<div>
					<p class="account_emailAddr">계정 이메일 주소</p>
					<input type="text" id="email" class="inputBox" name="email"
						placeholder="example@publy.co" onblur="emailCheckFnc();">
				</div>
				<div id="emailBlankCheck">
					<p>계정 이메일을 입력해주세요.</p>
				</div>
				<div id="emailIdentify">
					<p>존재하지 않는 계정입니다.</p>
				</div>
				<div>
					<input type="button" class="reissue_inputBox" value="인증번호 받기" 
						onclick="mailSendFnc();">
				</div>
				<div id="emailCerti">
					<div>
						<p class="account_emailAddr">인증번호</p>
						<input type="text" id="emailCheck" class="inputBox" 
							name="emailCheck" placeholder="인증번호 6자리를 입력해주세요">
					</div>
					<div id="emailCertiPass">
						<p>인증번호가 일치합니다.</p>
					</div>
					<div id="emailCertiFail">
						<p>인증번호가 불일치 합니다. 다시 확인해주세요.</p>
					</div>
					<div>
						<input type="button" class="reissue_inputBox" 
							onclick="emailCertiBtnFnc();" value="인증번호 확인">
					</div>
				</div>
				<div id="newPassword">
					<div>
						<p class="account_emailAddr">새 비밀번호</p>
						<input type="password" id="password" class="inputBox" name="password" 
							placeholder="새 비밀번호" onblur="passwordCheckFnc();">
					</div>
					<div id="pwdCheck">
						<p>8~20자 영문 대소문자, 숫자, 특수문자를 사용하세요.</p>
					</div>
					<div>
						<p class="account_emailAddr">비밀번호 확인</p>
						<input type="password" id="passwordCheck" class="inputBox" name="password" 
							placeholder="비밀번호 확인" onblur="passwordDoubleCheckFnc();">
					</div>
					<div id="pwdBlankCheck">
						<p>비밀번호를 입력해주세요.</p>
					</div>
					<div id="pwdDoubleCheck">
						<p>비밀번호가 일치하지 않습니다.</p>
					</div>
					<div>
						<input type="submit" class="reissue_inputBox" value="비밀번호 변경">
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

</body>
</html>