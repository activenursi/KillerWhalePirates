<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 회원가입(이메일)</title>
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
.ent_wrapInputBox{
	margin: 0 auto;
	width: 200px;
	height: 50px;
	float:left;
}
/* 닉네임 */
.ent_InputCompanyName {
	width: 600px;
	height: 30px;
	
}
.ent_inputId {
	width: 600px;
	height: 30px;
}
.ent_inputEstablishment {
	width: 600px;
	height: 30px;
}
.ent_inputName {
	width: 600px;
	height: 30px;
}
.ent_inputAddr {
	width: 600px;
	height: 30px;
}
.ent_inputEmail {
	width: 600px;
	height: 30px;
}
.ent_inputCompanyPwd { 
	width: 600px;
	height: 30px;
}
.ent_inputItems{
	list-style: none;
	width: 200px;
	height: 70px;
	text-align: left;
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
	margin:20px;
	float:right;
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
				<h3><p style="text-align: left;">서비스 이용을 위한 기업정보를 등록해주세요</p></h3>			
				<form class="ent_wrapInputBox">
					<div>
						<label>
							<li class="ent_inputItems">
								<p class="ent_inputWrap">기업명<span style="color:red;">*</span></p>
								<input class="ent_InputCompanyName" type="text" placeholder="예) 메디커리어"></li>
						</label>
					</div>
					<div>
						<label>
							<li class="ent_inputItems">
							<p class="ent_inputWrap">사업자등록번호<span style="color:red;">*</span></p>
								<input class="ent_inputId" type="text" placeholder="'-'제외 10자리"></li>
						</label>
					</div>	
					<div>
						<label>
							<li class="ent_inputItems">
								<p class="ent_inputWrap">담당자이름<span style="color:red;">*</span></p>
								<input class="ent_inputName" type="text" placeholder="예) 홍길동"></li>
						</label>
					</div>
					<div>
						<label>
							<li class="ent_inputItems">
								<p class="ent_inputWrap">담당자 전화번호<span style="color:red;">*</span></p>
								<input class="ent_inputEstablishment" type="tel" placeholder="예) 010-5654-7897"></li>
						</label>
					</div>
					<div>
						<label>
							<li class="ent_inputItems">
							<p class="ent_inputWrap">기업 회원회사 주소<span style="color:red;">*</span></p>
							<input class="ent_inputAddr" type="address" placeholder="예) ㅇㅇ시 ㅇㅇ구 ㅇㅇ동"></li>
						</label>
					</div>
					<div>
						<label>
							<li class="ent_inputItems">
							<p class="ent_inputWrap">기업 회원회사 이메일<span style="color:red;">*</span></p>
								<input class="ent_inputEmail" type="email" placeholder="예) email@email.com"></li>
						</label>
					</div>
					<div>
						<label>
							<li class="ent_inputItems">
							<p class="ent_inputWrap">기업 회원회사 비밀번호<span style="color:red;">*</span></p>
								<input class="ent_inputCompanyPwd" type="password" placeholder="비밀번호"></li>
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