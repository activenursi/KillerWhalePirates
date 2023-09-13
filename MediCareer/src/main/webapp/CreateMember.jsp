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
	width: 660px;
	height: 500px;
	margin: 0 auto;
	text-align: center;
}
/* 입력란 */
.cre_wrap_inputBox{
	margin: 0 auto;
	width: 200px;
	height: 50px
}
/* 닉네임 */
.cre_input_nickname {
	width: 200px;
	height: 30px;
}
/* 아이디 */
.cre_input_id {
	width: 200px;
	height: 30px;
}
/* 비밀번호 */
.cre_input_password {
	width: 200px;
	height: 30px;
}
/* 비밀번호 재확인 */
.cre_input_password_check {
	width: 200px;
	height: 30px;
}
/* 이름 */
.cre_input_name {
	width: 200px;
	height: 30px;
}
/* 생년월일 */
.cre_input_birthday {
	width: 200px;
	height: 30px;
}

/* 이메일 인증 */
.cre_input_email_completed { 
	width: 200px;
	height: 30px;
}

/* 인증 번호 */
.cre_input_certification_number { 
	width: 200px;
	height: 30px;
}
.inputBox_items{
	list-style: none;
	width: 200px;
	height: 50px
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
				<h2 style="color:darkblue;">MEDI<span style="color: #007bff">:</span><span style="color: #ff0064">CAREER</span> 
					&nbsp;&nbsp;&nbsp; Sign in with MyMerci</h2>
			</div>
			<div id="info_wrap">
				<!-- 일단 ? -->
				<form class="cre_wrap_inputBox">
					<div>
						<label>
							<li class="inputBox_items">
								<input class="cre_input_nickname" type="text" placeholder="닉네임"></li>
						</label>
					</div>
					<div>
						<label>
							<li class="inputBox_items">
							<input class="cre_input_id" type="id" placeholder="아이디"></li>
						</label>
					</div>
					<div>
						<label>
							<li class="inputBox_items">
							<input class="cre_input_password" type="password"
								placeholder="비밀번호"></li>

							<li class="inputBox_items">
							<input class="cre_input_password_check" type="password"
								placeholder="비밀번호 확인"></li>
						</label>
					</div>
					<div>
						<label>
							<li class="inputBox_items">
								<input class="cre_input_name" type="text" placeholder="이름"></li>
						</label>
					</div>
					<div>
						<label>
							<li class="inputBox_items">
								<input class="cre_input_birthday" type="text" placeholder="생년월일"></li>
						</label>
					</div>
					<div>
						<label>
							<li class="inputBox_items">
								<input class="cre_input_email_completed" type="email"
								placeholder="이메일 인증"></li>
						</label>
					</div>
					<div>
						<label>
							<li class="inputBox_items">
								<input class="cre_input_certification_number" type="text"
								placeholder="인증번호"></li>
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
<script type="text/javascript">
	
</script>
</html>