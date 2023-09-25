<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계정 설정</title>
<style>
.AccountSetting-wrap {
	border: 1px solid;
	width: 770px;
	height: 800px;
	margin: 0 auto;
}
.basicInfocontent-wrap {
	border: 1px solid rgb(251, 251, 253);
	width: 455px;
	height: 240px;
	background-color: rgb(251, 251, 253);
	margin: 0 auto;
	padding-left: 35px;
	margin-top: 24px;
}
.basicInfo-wrap {
	margin-top: 0px;
}
.inputText-email {
	width: 300px;
	height: 40px;
	background-color: #FFFFFF;
	border: 1px solid lightgray;
	border-radius: 4px;
	font-size: 1rem;
}
.inputText-submit {
	height: 45px;
	background-color: #FFFFFF;
	border: 1px solid lightgray;
	border-radius: 4px;
	font-size: 1rem;
}
</style>
</head>
<body>
	<div class="bodyEntire-wrap">
		<div class="AccountSetting-wrap">
				<h1>계정 설정</h1>
			<div class="basicInfocontent-wrap">
				<h2 class="basicInfo-wrap">기본 정보</h2>
				<div>
					<b>이메일</b>
					<p style="font-size: 13px; color: rgb(102, 102, 102);">
						변경된 이메일은 로그인 아이디로 적용되며, 재로그인이 필요합니다. <br>지원한 이력이 있는 경우, 지원
						정보에도 변경된 메일이 적용됩니다.
					</p>
				</div>
				<form>
					<input class="inputText-email" type="email" name="email" id="email" value="" placeholder="n****@naver.com"> 
					<input class="inputText-submit"  type="submit" name="submit" value="메일 변경">
				</form>
			</div>
		</div>
	</div>

</body>
</html>