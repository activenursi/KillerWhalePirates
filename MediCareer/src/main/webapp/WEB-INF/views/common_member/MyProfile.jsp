<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>구직자 프로필 페이지(수정)</title>
	<style type="text/css">
	body {
		background-color: rgb(248 250 252);
	}
	.body_entire{
		background-color:#FFFFFF;
		border:1px solid rgb(203 213 225);
		width:700px;
		height: 710px;
		margin: 0 auto;
		margin-top: 20px;
	}
	.profile_wrap{
		background-color:#FFFFFF;
		border:1px solid rgb(203 213 225);
		display: flex;
		width:500px;
		height: 120px;
		margin:0 auto;
		margin-bottom: 35px;
		margin-top: 10px;
	}
	.user_profileImg{
		flex:1;
		border-right: 1px solid rgb(203 213 225);
		margin-left: 40px;
	}
	.user_profileInfo{
		flex:2;
		padding: 20px;
	}
	.email_change{
		padding-left:120px;
		margin-bottom: 50px;
	}
	.input_email{
		padding:10px;
		width:300px;
		margin-bottom: 20px;
		border:1px solid lightgray;
		border-radius: 4px;
		background-color: rgb(248 250 252); /* 밝은 회색*/
	}
	.change_wrap{
		height: 35px;
		width:120px;
		margin-bottom: 20px;
		background-color: rgb(52, 152, 219); /* 밝은 파란색*/
		border:1px solid rgb(203 213 225);
		color:#FFFFFF;
		border-radius: 4px;
	}
	.user_mail {
		margin-bottom: 10px;
		margin-top: 0px;
	}
	.user_ninkname {
		margin-bottom: 10px;
		margin-top: 0px;
	}
	.user_password {
		margin-bottom: 10px;
		margin-top: 0px;
	}
	.user_addr {
		margin-bottom: 10px;
		margin-top: 0px;
	}
	.small_title {
		font-size:12px;
		color:#666;
	}
	.withdrawal{
		height: 35px;
		width:120px;
		margin-bottom: 20px;
		background-color: rgb(52, 152, 219); /* 밝은 파란색*/
		border:1px solid rgb(203 213 225);
		color:#FFFFFF;
		border-radius: 4px;
	}
	</style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<div id="content_wrap">
		<div class="body_entire"> 
			<div class="profile_wrap">
				<div class="user_profileImg">
					<img src="../img/user1.png" alt="프로필 유저" style="width:100px; height:80px;">
					<label for="editing"></label>
					<input type="button" id="editing" name="editing" value="프로필 편집">
				</div>
				<div class="user_profileInfo">	
					<label for="name">이승준</label>
					<br>
					<label for="email">nursi@naver.com</label>
				</div>
			</div>
				<form class="email_change">
				<div>
					<p class="user_mail">이메일<span style="color:red">*</span></p>
					<input class="input_email" type="text" id="account" name="account" placeholder="nursi@naver.com">
					<input class="change_wrap" type="button" id="setting" name="setting" value="메일 변경">
					<br>
				</div>
				<div>
					<p class="user_ninkname">닉네임<span style="color:red">*</span></p>
					<label for="account"></label>
					<input class="input_email" type="text" id="account" name="account" placeholder="길동이">
					<label for="setting"></label>
					<input class="change_wrap" type="button" id="setting" name="setting" value="닉네임 변경">
					<br>
				</div>
				<div>
					<p class="user_password">비밀번호<span style="color:red">*</span></p>
					<label for="account"></label>
					<input class="input_email" type="text" id="account" name="account" placeholder="********">
					<label for="setting"></label>
					<input class="change_wrap" type="button" id="setting" name="setting" value="비밀번호 재설정">
					<br>
				</div>
				<div>
					<p class="user_addr">개인 정보 보호<span style="color:red">*</span></p>
					<p class="small_title">내 계정을 안전하게 보호하기 위한 정보를 관리할 수 있습니다.</p>
					<label for="setting"></label>
					<input class="withdrawal" type="button" id="setting" name="setting" value="회원 탈퇴">
				</div>
				</form>
			</div>
		</div>
</body>
</html>