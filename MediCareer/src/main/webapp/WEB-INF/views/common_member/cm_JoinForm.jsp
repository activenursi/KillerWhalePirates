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
	width: 250px;
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
	width: 150px;
	height: 30px;
	float: left;
}

/* 인증이 필요한 input */
.cre_check_input {
	width: 150px;
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
	width: 242px;
	height: 30px;
}

.inputBox_items{
	list-style: none;
	width: 250px;
	height: 50px;
}

#nicknameBlankCheck {
	display: none;
}

#nicknameCheckPass {
	display: none;
}

#nicknameCheckFail {
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

<script type="text/javascript">
	function nicknameCheckFnc() {
		var nicknameObj = document.getElementById("nickname");
		
		var nickname = nicknameObj.value;
		
		var nicknameBlankCheckObj = document.getElementById("nicknameBlankCheck");
		
		if (nickname == "") {
			nicknameBlankCheckObj.style.display = "block";
			nicknameObj.style.borderColor = "red";
		} else {
			nicknameBlankCheckObj.style.display = "none";
			nicknameObj.style.borderColor = "blue";
		}
	}
	
	function passwordCheckFnc() {
		var passwordObj = document.getElementById("password");
		var password = passwordObj.value;
		
		var passwordReg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,24}$/;
		
		var pwdCheckObj = document.getElementById("pwdCheck");
		var pwdBlankCheckObj = document.getElementById("pwdBlankCheck");
		
		var result = true;
		
		if (password == "") {
			pwdCheckObj.style.display = "none";
			pwdBlankCheckObj.style.display = "block";
			passwordObj.style.borderColor = "red";
			result = false;
		} else if (!passwordReg.test(password)) {
			pwdBlankCheckObj.style.display = "none";
			pwdCheckObj.style.display = "block";
			passwordObj.style.borderColor = "red";
			result = false;
		} else {
			pwdBlankCheckObj.style.display = "none";
			pwdCheckObj.style.display = "none";
			passwordObj.style.borderColor = "blue";
			result = true;
		}
		 
		return result;
	}
	
	function passwordDoubleCheckFnc() {
		var passwordObj = document.getElementById("password");
		var passwordCheckObj = document.getElementById("passwordCheck");
		
		var password = passwordObj.value;
		var passwordCheck = passwordCheckObj.value;
		
		var pwdDoubleCheckObj = document.getElementById("pwdDoubleCheck");
		var pwdBlankCheckObj = document.getElementById("pwdBlankCheck");
		
		var result = true;
		
		if (passwordCheck == "") {
			pwdBlankCheckObj.style.display = "block";
			pwdDoubleCheckObj.style.display = "none";
			passwordCheckObj.style.borderColor = "red";
			result = false;
		} else if (password != passwordCheck) {
			pwdBlankCheckObj.style.display = "none";
			pwdDoubleCheckObj.style.display = "block";
			passwordCheckObj.style.borderColor = "red";
			result = false;
		} else {
			pwdDoubleCheckObj.style.display = "none";
			pwdBlankCheckObj.style.display = "none";
			passwordCheckObj.style.borderColor = "blue";
			result = true;
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
				<form class="cre_wrap_inputBox" action="member/addCtr.do" method="post">
					<div>
						<label>
							<li class="inputBox_items">
								<div class="cre_check_div">
									<input type="text" id="nickname" class="cre_check_input" name="nickName" placeholder="닉네임">
								</div>
								<div class="check_btn_div">
									<button id="nicknameCheck" class="check_btn" onclick="nicknameCheckFnc();">중복확인</button>
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
									<input type="email" class="cre_check_input" name="email" placeholder="이메일">
								</div>
								<div class="check_btn_div">
									<button class="check_btn">메일인증</button>
								</div>
							</li>
						</label>
					</div>
					<div>
						<label>
							<li class="inputBox_items">
								<div class="cre_check_div">
									<input type="text" class="cre_check_input" name="email_check" placeholder="인증번호">
								</div>
								<div class="check_btn_div">
									<button class="check_btn">인증확인</button>
								</div>
							</li>
						</label>
					</div>
					<div>
						<label>
							<li class="inputBox_items">
								<input type="text" class="cre_input" name="name" placeholder="이름">
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