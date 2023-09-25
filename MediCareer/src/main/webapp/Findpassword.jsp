<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<style>
	body {
		background-color: rgb(248 250 252);
	}
	.forgetpwd_title {
		font-size: 2rem;
		margin-bottom: 60px;
	} 
	.findpassword_wrap {
		margin-top: 80px;
	}
	.pwdcontent_wrap {	
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
	
	.email_inputBox {
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
</style>
</head>
<body>
	<div id="findpassword_wrap">
		<div>
			<div class="pwdcontent_wrap">
				<h2 class="forgetpwd_title">비밀번호를 잊으셨나요?</h2>
			<form action="">
				<div>
					<p class="account_emailAddr">계정 이메일 주소</p>
					<input class="email_inputBox" type="text" name="email"
						placeholder="example@publy.co">
				</div>
				<div>
					<input class="reissue_inputBox" type="submit" name=""
						value="비밀번호 재설정 이메일 받기">
				</div>
			</form>
		</div>
	</div>
</div>

</body>
</html>