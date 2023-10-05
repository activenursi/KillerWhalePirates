<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반회원 로그인 화면</title>
<style type="text/css">
#general_maintain{
	width:700px;
	height: 800px;
	margin: 0 auto;
	text-align: center;
}
#general_login {
	text-align: center;
	margin-top: 113px;
}

.general_logo_title {
	font-weight: 1000;
	font-size: 50px;
}

.general_explanation {
	font-size: 16px;
	margin: 30px;
	font-weight: 800;
}

.general_inputWrap2 {
	padding: 10px;
}

.general_inputWrap3 {
	padding: 10px;
}

.general_creId {
	width: 300px;
	height: 40px;
	font-size: 15px;
	border-color: lightgray;
	border-radius: 4px;
}

.general_crepassword {
	width: 300px;
	height: 40px;
	font-size: 15px;
	border-color: lightgray;
	border-radius: 4px;
}

.general_logBtn {
	width: 300px;
	height: 40px;
	font-size: 15px;
	background-color: rgb(52, 152, 219);
	border-style: none;
	border-radius: 4px;
	color: white;
}

.generalMemeber_log {
	text-decoration-line: none;
	color: black;
	font-weight: 800;
	margin-bottom: 20px;
	margin-right: 40px;
}

.enterprise_log {
	text-decoration-line: none;
	color: gray;
	font-weight: 800;
}
</style>

</head>
<body>
	<div id="general_contentWrap">
		<div id="general_maintain">
			<div id="general_login">
				<p class="general_logo_title">
					MEDI<span style="color: gray">:</span><span style="color: darkblue">CAREER</span>
				</p>
				<p class="general_explanation">
					똑똑한 간호사를 위한 커리어 SNS <br>임상 실무,트렌드,네트워킹까지 한 번에!
				</p>
			</div>
			<div style="text-align: center; margin-bottom: 20px;">
				<a class="generalMemeber_log" href="./login.do">일반회원 로그인</a> 
				<a class="enterprise_log" href="./em_login.do">기업회원 로그인</a>
			</div>
			<div class="general_containerMenu">
				<form action='./loginCtr.do' method='post' style="list-style: none;" width="150px;" height="30px" action=>
					<label>
						<li class="general_inputWrap1">
						<input class="general_creId" type="text" title="여기에 이메일기입" name="email" 
							placeholder="이메일">
					</li>
					</label> <label>
						<li class="general_inputWrap2">
							<input class="general_crepassword" type="password" title="pw입력" name="password"
							placeholder="비밀번호">
						</li>
					</label> 
					<label>
						<li class="general_inputWrap3">
							<input type="submit" value="로그인" class="general_logBtn">
						</li>
					</label>
				</form>
				<div class="general_find_myInfo">
					<div class="general_create_info">
						<span><a href="../member/add.do">일반 회원가입</a></span>
					</div>
					<div class="ent_find_password">
						<span><a href="../member/resetPassword.do">일반 회원 비밀번호 찾기</a></span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer> </footer>
</body>
</html>