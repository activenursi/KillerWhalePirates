<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<form class="cre_wrap_inputBox" action="join" method="post">
					<div>
						<label>
							<li class="inputBox_items">
								<div class="cre_check_div">
									<input type="text" class="cre_check_input" name="nickname" placeholder="닉네임">
								</div>
								<div class="check_btn_div">
									<button class="check_btn">중복확인</button>
								</div>
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
								<input type="password" class="cre_input" name="password" placeholder="비밀번호">
							</li>

							<li class="inputBox_items">
								<input type="password" class="cre_input" name="password_check" placeholder="비밀번호 확인">
							</li>
						</label>
					</div>
					<div>
						<label>
							<input type="button" class="cre_input_joinMembership" value="회원가입">
						</label>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>