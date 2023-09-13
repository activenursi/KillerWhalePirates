<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반 로그인 화면</title>
<style type="text/css">
#general_Login {
	text-align: center;
	margin-top: 113px;
}
.general_logoTitle{
	 font-weight: 1000;
	 font-size:50px;
}
.general_explanation{
	 font-size:16px;
	 margin:30px;
	 font-weight: 800;
}
.general_contentMenu {
	position: absolute;
	width: 400px;
	height: 400px;
	text-align: center;
	margin-left: -200px;
	margin-top: -94px;
	left: 50%;
	top: 50%;
}

.general_inputWrap2 {
	padding: 10px;
}

.general_inputWrap3 {
	padding: 10px;
}
.generalMemeber_log {
	text-decoration-line: none;
	color:black;
	 font-weight: 800;
}
.enterprise_log{
	text-decoration-line: none;
	color:gray;
	font-weight: 800;
}

</style>
<script type="text/javascript">
	function corporate_logFnc() {
		window.open("Enterprise.jsp"); // 기업 로그인으로 이동
	}
	function general_membership_logFnc() {
		window.open("GeneralMemberLog.jsp"); // 일반 로그인으로 이동
	}
</script>
</head>
<body>
	<div id="general_contentWrap">
	<header id="general_titlelogo">
		<div id="general_Login">
			<p class="general_logoTitle">
				MEDI<span style="color: gray">:</span><span style="color: darkblue">CAREER</span>
			</p>
			<p class="general_explanation">
				똑똑한 간호사를 위한 커리어 SNS <br>임상 실무,트렌드,네트워킹까지 한 번에!
			</p>
		</div>
		<div style="text-align:center;">
			<a class="generalMemeber_log" href="/" onclick="general_membership_logFnc()"  target="_blank" 
				style="margin-right: 40px;">일반회원 로그인</a>
			<a class="enterprise_log" href="/" onclick="corporate_logFnc()" target="_blank">기업 로그인</a>
		</div>
	</header>
	<main>
	<div class="general_contentMenu">
		<form style="list-style: none;" width="150px;" height="30px">
			<label>
				<li class="general_inputWrap1">
					<input type="text" title="여기에 id 기입"
					placeholder="아이디" name="id"
					style="width: 300px; height: 40px; font-size: 15px; border-color: lightgray; border-radius: 4px;">
				</li>
			</label> 
			<label>
				<li class="general_inputWrap2">
					<input type="password" maxlength="8"
					title="pw입력" name="pwd" placeholder="비밀번호"
					style="width: 300px; height: 40px; font-size: 15px; border-color: lightgray; border-radius: 4px;">
				</li>
			</label> 
			<label>
				<li class="general_inputWrap3">
					<input type="submit" value="로그인"
					style="width: 300px; height: 40px; font-size: 15px; background-color: rgb(52, 152, 219); 
					border-style: none; border-radius: 4px; color: white;">
				</li>
			</label>
		</form>
		
		<div class="general_findMyInfo">
			<div class="general_createMember">
				<span>아이디가 없나요? &nbsp;&nbsp;&nbsp; <a href="/">회원가입</a></span>
			</div>
			<div class="general_findId">
					<span>아이디를 잊었나요? &nbsp;&nbsp;&nbsp; 
					<a href="/">아이디 찾기</a></span>
				</div>
			<div class="general_findPassword">
				<span>비밀번호를 잊었나요? &nbsp;&nbsp;&nbsp; <a href="/">비밀번호 찾기</a></span>
			</div>
		</div>
	</div>
	</main>
	</div>
	
	<footer> </footer>
</body>
</html>