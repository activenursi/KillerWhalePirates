<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계정탈퇴</title>
<style>
.AccountSetting-wrap {
	border: 1px solid;
	width: 770px;
	height: 800px;
	margin: 0 auto;
	display: flex;
    flex-direction: column;
    -webkit-box-align: center;
    align-items: center;
}

.basicInfocontent-wrap {
	border: 1px solid rgb(251, 251, 253);
	height: 550px;
	background-color: rgb(251, 251, 253);
	margin: 0 auto;
	margin-top: 24px;
	padding: 48px 0px;
	display: flex;
    flex-direction: column;
    -webkit-box-align: center;
    align-items: center;
    border-radius: 8px;
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
	letter-spacing: -1px;
}

.inputText-submit {
	height: 45px;
	background-color: #FFFFFF;
	border: 1px solid lightgray;
	border-radius: 4px;
	font-size: 1rem;
}
.close-account {
	display: flex;
	flex-direction: column;
	align-items: center;
	margin-top: 20px;
}
.unsubscribe {
	width: 200px;
	height: 50px;
	border: none;
	color: white;
	background-color: gray;
	border-radius: 4px;	
	align-items: center;
	margin-top: 32px;
}
.detail {
	list-style: none;
	margin-left: 0px;
	margin-bottom: 20px;
}
.notification-wrap {
	width: 430px;
}
.detail_matters{
	margin-top: 20px;
    margin-bottom: 32px;
    padding-bottom: 32px;
    border-bottom: 1px solid rgb(228, 228, 228);
    padding-left: 0px;
}
.subheading {
	word-break: keep-all; 
	font-size: 15px; 
	margin-left: 0px;
}
</style>
</head>
<body>
	<div class="bodyEntire-wrap">
		<div class="AccountSetting-wrap">
			<h1>계정 탈퇴</h1>
			<div class="basicInfocontent-wrap">
				<form class="notification-wrap"> <!-- 안내사항 -->
					<h3 class="basicInfo-wrap">회원 탈퇴 전, 안내 사항을 꼭 확인해주세요.</h3>
					<ul class="detail_matters">
						<li class="detail">
							<dt style="line-height: 22px;"><b>1) 탈퇴 아이디 복구 불가</b></dt>
							<dd class="subheading">
							탈퇴 후에는 아이디와 데이터 복구가 불가능합니다. 신중하게 선택해주세요.</dd>
						</li>
						<li class="detail">
							<dt style="line-height: 22px;"><b>2) 서비스 이용 기록 삭제</b></dt>
							<dd class="subheading">
							프로필 등록 정보, 입사지원정보, 입사지원 현황 등 취업에 필요한 서비스 이용 기록이 모두 삭제되며, 
							삭제된 데이터는 복구되지 않습니다. 필요한 데이터는 미리 백업을 해두시기 바랍니다.</dd>
						</li>
					</ul>
					<dt style="line-height: 22px;"><b>본인 확인</b></dt>
					<dd style="margin-left: 0px;">본인 확인을 위해 이메일 인증을 완료해 주세요.</dd>
					<br>
					<div class="emailAuthentication-wrap">
						<label class="" action="" for="email" style="padding-bottom: 6px; ">이메일</label>
						<br>
						<input class="inputText-email" type="email" name="email" id="email"value="" placeholder="nursi@naver.com"> 
						<input class="inputText-submit" type="submit" name="submit" value="메일 인증">
					</div>
					<div class="close-account"> <!-- 계정 탈퇴 -->
						<label for="unsubscribe">안내 사항을 모두 확인했으며 이에 동의합니다.</label>
						<button type="submit" class="unsubscribe" id="unsubscribe" name="unsubscribe">탈퇴하기</button>
					</div>
				</form>
			</div>
		</div>
	</div>


</body>
</html>