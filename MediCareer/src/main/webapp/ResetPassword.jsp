<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<style>
body {
	background-color: rgb(248, 250, 252);
}

.resetpwd-title {
	font-size: 2rem;
	margin-bottom: 60px;
}

.resetPasswordwrap {
	margin-top: 80px;
}

.pwdcontent-wrap {
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

.account-password, .account_reconfirmPassword {
	font-size: .875rem;
	font-weight: 700;
}

.pwd-inputBox {
	padding: 10px;
	margin-bottom: 20px; width : 250px;
	border-radius: 4px;
	border: 1px solid #94a3b8;
	width: 250px; border-radius : 4px; border : 1px solid #94a3b8;
	font-size: 12px; /* 16px */
}

.pwd-check {
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
	color: #FFFFFF;
	font-size: 1rem;
}
</style>
</head>
<body>
	<div id="resetPassword-wrap">
		<div>
			<div class="pwdcontent-wrap">
				<h2 class="resetpwd-title">비밀번호 재설정</h2>
				<form>
					<div>
						<p class="account-password">새 비밀번호(영문,숫자 8자리 이상)</p>
						<input class="pwd-inputBox" type="password" name="password"
							placeholder="새 비밀번호(영문,숫자 8자리 이상)">
						<p class="account_reconfirmPassword">새 비밀번호 확인</p>
						<input class="pwd-inputBox" type="password" name="password"
							placeholder="새 비밀번호 확인"> 
						<label>
							<button class="pwd-check" type="submit" name="password">비밀번호
								재설정하기</button>
						</label>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>