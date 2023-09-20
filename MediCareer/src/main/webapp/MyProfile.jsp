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
		height: 600px;
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
	</style>
</head>
<body>
<%-- <jsp:include page="./Header7.jsp"></jsp:include> --%>
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
					<input class="input_email" type="text" id="account" name="account" placeholder="계정 설정">
					<input class="change_wrap" type="button" id="setting" name="setting" value="메일 변경">
					<br>
					<label for="account"></label>
					<input class="input_email" type="text" id="account" name="account" placeholder="닉네임">
					<label for="setting"></label>
					<input class="change_wrap" type="button" id="setting" name="setting" value="닉네임 변경">
					<br>
					<label for="account"></label>
					<input class="input_email" type="text" id="account" name="account" placeholder="비밀번호">
					<label for="setting"></label>
					<input class="change_wrap" type="button" id="setting" name="setting" value="비밀번호 재설정">
					<br>
					<label for="account"></label>
					<input class="input_email" type="text" id="account" name="account" placeholder="주소">
					<label for="setting"></label>
					<input class="change_wrap" type="button" id="setting" name="setting" value="주소 변경">
				</form>
			</div>
		</div>
</body>
</html>