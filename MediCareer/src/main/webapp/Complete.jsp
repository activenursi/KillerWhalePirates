<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 완료</title>
<style>
#registration_complete {
	text-align: center;
	margin-top: 50px;
}
.complete{
	margin-bottom: 64px;
}
.btn_type {
	display: inline-block;
	padding: 10px 20px; /* 버튼 내부 여백 설정 */
	background-color: #007bff; /* 배경색 설정 */
	color: #fff; /* 텍스트 색상 설정 */
	text-decoration: none; /* 기본 링크 텍스트 스타일 제거 */
	border: none; /* 테두리 제거 */
	border-radius: 4px; /* 버튼 모서리 둥글게 만들기 */
	cursor: pointer; /* 커서를 포인터로 변경하여 버튼 스타일 강조 */
}
</style>
</head>
<body>

	<div id="registration_complete">
		<div class="member_complete">
			<h2 class="complete">가입완료</h2>
			<form>
				<label>
					<input class="btn_type" type="button" value="확인">
				</label>
			</form>
		</div>
	</div>
</body>
</html>