<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입(이메일)</title>
<style>

#create_logo {
	margin: 0 auto;
}

/* 로고 */
#cre_inputBox_logo { 
	width: 400px;
	height: 500px;
	margin: 0 auto;
	text-align: center;
}

.info_wrap {
	width: 250px;
	height: 250px;
}

/* 입력란 */
.cre_wrap_inputBox{
	margin: 0 auto;
	width: 250px;
	height: 50px;
	float: left;
}

/* 인증이 필요한 input을 감싸는 div*/
.cre_check_div {
	float: left;
}

/* 인증이 필요한 input */
.cre_check_input {
	width: 304px;
	height: 30px;
}

/* 중복, 인증 버튼을 감싸는 div */
.check_btn_div {
	width: 75px;
	height: 35px;
	float: right;
}

/* 중복, 인증 버튼 */
.check_btn {
	width: 75px;
	height: 35px;
}

/* 일반 input */
.cre_input {
	width: 392px;
	height: 30px;
}

.inputBox_items{
	list-style: none;
	width: 400px;
	height: 50px;
}

#nicknameBlankCheck {
	display: none;
}

#nicknameRuleCheck {
	display: none;
}

#nicknameCheckPass {
	display: none;
}

#nicknameCheckFail {
	display: none;
}

#emailBlankCheck {
	display: none;
}

#emailRuleCheck {
	display: none;
}

#emailCertiPass {
	display: none;
}

#emailCertiFail {
	display: none;
}

#nameBlankCheck {
	display: none;
}

#nameRuleCheck {
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

/* 회원가입 버튼 */
.cre_input_joinMembership{
	display: inline-block;
	padding: 10px 20px; /* 버튼 내부 여백 설정 */
	background-color: rgb(52, 152, 219); /* 배경색 설정 */
	color: #fff; /* 텍스트 색상 설정 */
	text-decoration: none; /* 기본 링크 텍스트 스타일 제거 */
	border: none; /* 테두리 제거 */
	border-radius: 4px; /* 버튼 모서리 둥글게 만들기 */
	cursor: pointer; /* 커서를 포인터로 변경하여 버튼 스타일 강조 */
}
</style>

<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
	function nicknameValidateFnc() {
		var nicknameObj = document.getElementById("nickname");
		var nickname = nicknameObj.value;
		
		var nicknameBlankCheckObj = document.getElementById("nicknameBlankCheck");
		var nicknameRuleCheckObj = document.getElementById("nicknameRuleCheck");
		var nicknameCheckPassObj = document.getElementById("nicknameCheckPass");
		var nicknameCheckFailObj = document.getElementById("nicknameCheckFail");
		
		var nicknameReg = /^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,16}$/;

		if (nickname == "") {
			nicknameBlankCheckObj.style.display = "block";
			nicknameRuleCheckObj.style.display = "none";
			nicknameCheckFailObj.style.display = "none";
			nicknameCheckPassObj.style.display = "none";
			nicknameObj.style.borderColor = "red";
		} else if (!nicknameReg.test(nickname)) {
			nicknameBlankCheckObj.style.display = "none";
			nicknameRuleCheckObj.style.display = "block";
			nicknameCheckFailObj.style.display = "none";
			nicknameCheckPassObj.style.display = "none";
			nicknameObj.style.borderColor = "red";
		} else {
			nicknameBlankCheckObj.style.display = "none";
			nicknameRuleCheckObj.style.display = "none";
			nicknameCheckFailObj.style.display = "none";
			nicknameCheckPassObj.style.display = "none";
			nicknameObj.style.borderColor = "blue";
		}
	}
	
	function nicknameCheckFnc() {
		var nicknameObj = document.getElementById("nickname");
		
		var nicknameValObj = document.getElementById("nicknameVal");
		
		var nicknameCheckPassObj = document.getElementById("nicknameCheckPass");
		var nicknameCheckFailObj = document.getElementById("nicknameCheckFail");
		
		$.ajax({
			url : "./nicknameCheck.do", 
			type : "POST", 
			dataType : "json", 
			data : {"nickName" : $("#nickname").val()}, 
			success : function(data) {
				if (data == 1) {
					nicknameCheckFailObj.style.display = "block";
					nicknameCheckPassObj.style.display = "none";
					nicknameObj.style.borderColor = "red";
				} else if (data == 0) {
					nicknameCheckFailObj.style.display = "none";
					nicknameCheckPassObj.style.display = "block";
					nicknameObj.style.borderColor = "blue";
					nicknameValObj.setAttribute("value", "Y");
				}
			}
		})
	}
	
	function emailCheckFnc() {
		var emailObj = document.getElementById("email");
		var email = emailObj.value;
		
		var emailBlankCheckObj = document.getElementById("emailBlankCheck");
		var emailRuleCheckObj = document.getElementById("emailRuleCheck");
		
		var emailReg = /^[a-z0-9]+@[a-z]+\.[a-z]{2,3}$/;
		
		if (email == "") {
			emailBlankCheckObj.style.display = "block";
			emailRuleCheckObj.style.display = "none";
			emailObj.style.borderColor = "red";
		} else if (!emailReg.test(email)) {
			emailBlankCheckObj.style.display = "none";
			emailRuleCheckObj.style.display = "block";
			emailObj.style.borderColor = "red";
		} else {
			emailBlankCheckObj.style.display = "none";
			emailRuleCheckObj.style.display = "none";
			emailObj.style.borderColor = "blue";
		}
	}
	
	function emailCheckBtnFnc() {
		var emailObj = document.getElementById("email");
		var email = emailObj.value;
		
		alert("이메일: " + email);
		
		$.ajax({
			url : '<c:url value ="./emailCheck.do?email="/>'+email, // GET방식이라 Url 뒤에 email을 뭍힐수있다.
			type : 'GET',
			success : function (data) {
				console.log("data : " +  data);
				code = data;
				alert('인증번호가 전송되었습니다.');
			}
		}); // end ajax
	}
	
	function emailCertiBtnFnc() {
		var emailCheckObj = document.getElementById("emailCheck");
		var emailCheck = emailCheckObj.value;
		
		var emailCertiPassObj = document.getElementById("emailCertiPass");
		var emailCertiFailObj = document.getElementById("emailCertiFail");
		
		var emailValObj = document.getElementById("emailVal");

		if(emailCheck === code){
			emailCertiPassObj.style.display = "block";
			emailCertiFailObj.style.display = "none";
			emailCheckObj.style.borderColor = "blue";
			emailValObj.setAttribute("value", "Y");
		}else{
			emailCertiPassObj.style.display = "none";
			emailCertiFailObj.style.display = "block";
			emailCheckObj.style.borderColor = "red";
			emailValObj.setAttribute("value", "N");
		}
	}
	
	function nameCheckFnc() {
		var nameObj = document.getElementById("name");
		var name = nameObj.value;
		
		var nameBlankCheckObj = document.getElementById("nameBlankCheck");
		var nameRuleCheckObj = document.getElementById("nameRuleCheck");
		
		var nameValObj = document.getElementById("nameVal");
		
		var nameReg = /^[가-힣]{2,17}$/;
		
		if (name == "") {
			nameBlankCheckObj.style.display = "block";
			nameRuleCheckObj.style.display = "none";
			nameObj.style.borderColor = "red";
		} else if (!nameReg.test(name)) {
			nameBlankCheckObj.style.display = "none";
			nameRuleCheckObj.style.display = "block";
			nameObj.style.borderColor = "red";
		} else {
			nameBlankCheckObj.style.display = "none";
			nameRuleCheckObj.style.display = "none";
			nameObj.style.borderColor = "blue";
			nameValObj.setAttribute("value", "Y");
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
		var nicknameVal = document.getElementById("nicknameVal").value;
		var emailVal = document.getElementById("emailVal").value;
		var nameVal = document.getElementById("nameVal").value;
		var passwordVal = document.getElementById("passwordVal").value;
		
		var validate = nicknameVal + emailVal + nameVal + passwordVal;
		
		var result;
		
		if (validate == "YYYY") {
			result = true;
		} else {
			result = false;
		}
		
		return result;
	}
</script>

</head>
<body>
	<div id="create_logo">
		<div id="cre_inputBox_logo">
			<div class="logo"
				style="border-bottom: 1px solid #d0d0d0; margin-bottom: 17px;">
				<h1 style="color:darkblue;">
					MEDI<span style="color: #007bff">:</span><span style="color: #ff0064">CAREER</span> 
				</h1>
				<h1>회원가입</h1>
			</div>
			<div id="info_wrap">
				<!-- 일단 ? -->
				<form class="cre_wrap_inputBox" action="./addCtr.do" onsubmit="return joinValidateFnc();" method="post">
					<input type="hidden" id="nicknameVal" value="N">
					<input type="hidden" id="emailVal" value="N">
					<input type="hidden" id="nameVal" value="N">
					<input type="hidden" id="passwordVal" value="N">
					<div>
						<label>
							<li class="inputBox_items">
								<div class="cre_check_div">
									<input type="text" id="nickname" class="cre_check_input" name="nickName" 
										placeholder="닉네임" onblur="nicknameValidateFnc();">
								</div>
								<div class="check_btn_div">
									<input type="button" id="nicknameCheck" class="check_btn" 
										onclick="nicknameCheckFnc();" value="중복확인">
								</div>
							</li>
						</label>
					</div>
					<div id="nicknameBlankCheck">
						<label>
							<li class="inputBox_items">
								<p>닉네임을 입력해주세요.</p>
							</li>
						</label>
					</div>
					<div id="nicknameRuleCheck">
						<label>
							<li class="inputBox_items">
								<p>2자 이상 8자 이하의 영어, 숫자, 한글로 입력해주세요.</p>
								<p>한글 초성 및 모음은 불가능합니다.</p>
							</li>
						</label>
					</div>
					<div id="nicknameCheckPass">
						<label>
							<li class="inputBox_items">
								<p>사용 가능한 닉네임입니다.</p>
							</li>
						</label>
					</div>
					<div id="nicknameCheckFail">
						<label>
							<li class="inputBox_items">
								<p>이미 존재하는 닉네임입니다.</p>
							</li>
						</label>
					</div>
					<div>
						<label>
							<li class="inputBox_items">
								<div class="cre_check_div">
									<input type="email" id="email" class="cre_check_input" 
										name="email" placeholder="이메일" onblur="emailCheckFnc();">
								</div>
								<div class="check_btn_div">
									<input type="button" class="check_btn" onclick="emailCheckBtnFnc();" value="메일인증">
								</div>
							</li>
						</label>
					</div>
					<div id="emailBlankCheck">
						<label>
							<li class="inputBox_items">
								<p>이메일을 입력해주세요.</p>
							</li>
						</label>
					</div>
					<div id="emailRuleCheck">
						<label>
							<li class="inputBox_items">
								<p>이메일 형식을 확인해 주세요.</p>
							</li>
						</label>
					</div>
					<div>
						<label>
							<li class="inputBox_items">
								<div class="cre_check_div">
									<input type="text" id="emailCheck" class="cre_check_input" 
										name="emailCheck" placeholder="인증번호 6자리를 입력해주세요">
								</div>
								<div class="check_btn_div">
									<input type="button" class="check_btn" onclick="emailCertiBtnFnc();" value="인증확인">
								</div>
							</li>
						</label>
					</div>
					<div id="emailCertiPass">
						<label>
							<li class="inputBox_items">
								<p>인증번호가 일치합니다.</p>
							</li>
						</label>
					</div>
					<div id="emailCertiFail">
						<label>
							<li class="inputBox_items">
								<p>인증번호가 불일치 합니다. 다시 확인해주세요.</p>
							</li>
						</label>
					</div>
					<div>
						<label>
							<li class="inputBox_items">
								<input type="text" id="name" class="cre_input" name="name" 
									placeholder="이름" onblur="nameCheckFnc();">
							</li>
						</label>
					</div>
					<div id="nameBlankCheck">
						<label>
							<li class="inputBox_items">
								<p>이름을 입력해주세요.</p>
							</li>
						</label>
					</div>
					<div id="nameRuleCheck">
						<label>
							<li class="inputBox_items">
								<p>한글 2~17자 이내에서 입력해주세요.(자음, 모음, 공백 불가)</p>
							</li>
						</label>
					</div>
					<div>
						<label>
							<li class="inputBox_items">
								<input type="password" id="password" class="cre_input" name="password" 
									placeholder="비밀번호" onblur="passwordCheckFnc();">
							</li>
						</label>
					</div>
					<div id="pwdCheck">
						<label>
							<li class="inputBox_items">
								<p>8~20자 영문 대소문자, 숫자, 특수문자를 사용하세요.</p>
							</li>
						</label>
					</div>
					<div>
						<label>
							<li class="inputBox_items">
								<input type="password" id="passwordCheck" class="cre_input" name="password" 
									placeholder="비밀번호 확인" onblur="passwordDoubleCheckFnc();">
							</li>
						</label>
					</div>
					<div id="pwdBlankCheck">
						<label>
							<li class="inputBox_items">
								<p>비밀번호를 입력해주세요.</p>
							</li>
						</label>
					</div>
					<div id="pwdDoubleCheck">
						<label>
							<li class="inputBox_items">
								<p>비밀번호가 일치하지 않습니다.</p>
							</li>
						</label>
					</div>
					<div>
						<label>
							<li class="inputBox_items">
								<input type="submit" class="cre_input_joinMembership" value="회원가입">
							</li>
						</label>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>