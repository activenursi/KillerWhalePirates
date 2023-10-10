<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원정보수정</title>
<style>
.warp-container {
	margin: 0 auto;
	width: 770px;
}

.adm-member-update {
	margin: 0 auto;
	width: 660px;
	margin-top: 100px;
}

.editMember-information {
	text-decoration: underline;
}

.userinfo-table {
	border-collapse: collapse; /* 셀 간의 경계를 합치기 */
	background-color: lightgray;
	border: 1px solid black;
	text-align: center;
	width: 600px;
	height: 300px;
}

.userinfo-table td {
	border: 1px solid black; /* 셀 테두리 설정 (선택 사항) */
	border-collapse: collapse;
	background-color: white;
	padding: 5; /* 기본 패딩 제거 */
	margin: 0; /* 기본 여백 제거 */
	width: 370px;
}

td input {
	padding: 11px; /* 원하는 크기로 패딩 설정 */
	width: 370px;
}

table th {
	font-weight: bolder;
	background-color: lightgray;
	border: 1px solid black;
	border-collapse: collapse;
}

.button {
	display: inline-block;
	padding: 10px 20px;
	background-color: gray; /* 버튼 배경색 지정 */
	color: black; /* 버튼 텍스트 색상 지정 */
	text-decoration: none; /* 링크 밑줄 제거 */
	border: 1px solid #cbd5e1; /* 테두리 제거 */
	border-radius: 4px; /* 버튼 모서리 둥글게 만들기 */
	margin: 5px; /* 버튼 사이 여백 추가 */
	font-weight: bold; /* 텍스트 굵게 설정 */
	font-size: 14px;
	transition: background-color 0.3s; /* 배경색 변화에 애니메이션 적용 */
}

.button:hover {
	background: linear-gradient(to bottom, #999999, #cccccc);
}

.member_btn {
	text-align: center;
	padding-top: 20px;
}
</style>
</head>
<body>
<%@include file ="header.jsp" %>
	<div class="warp-container">
		<div class="adm-member-update">
			<div>
				<h2 class="editMember-information">회원정보수정</h2>
			</div>
			<form>
				<div>
					<table class="userinfo-table">
						<tr>
							<th>닉네임</th>
							<td class=""><input type="text"></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input type="text"></td>
						</tr>
						<tr>
							<th>이메일</th>
							<td><input type="text"></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input type="text"></td>
						</tr>
						<tr>
							<th>비밀번호 확인</th>
							<td><input type="text"></td>
						</tr>
						<tr>
							<th>이력서</th>
							<td><input type="text"></td>
						</tr>
						<tr>
							<th>회원가입일</th>
							<td><input type="text"></td>
						</tr>
					</table>
				</div>
				<div class="member_btn">
					<a href="#" class="button" target="_blank">수정하기</a> <a href="#"
						class="button" target="_blank">회원탈퇴</a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>