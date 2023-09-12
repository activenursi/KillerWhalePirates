<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원정보수정</title>
<style>
	.warp-container{
		margin: 0 auto;
		width: 770px;
	}
	.adm-member-update{
		margin: 0 auto;
		width: 660px;
	}
	table{
		border: 1px solid black;
		border-collapse: collapse;
	}
	table td{
		border: 1px solid black;
		border-collapse: collapse;
		 padding: 0; /* 기본 패딩 제거 */
	  	margin: 0; /* 기본 여백 제거 */
	}

	td input {
	  padding: 5px; /* 원하는 크기로 패딩 설정 */
	}
	table th{
		font-weight: bolder;
		background-color: gray;
		border: 1px solid black;
		border-collapse: collapse;
	}
	.button {
	  display: inline-block;
	  padding: 10px 20px;
	  background-color: gray; /* 버튼 배경색 지정 */
	  color: black; /* 버튼 텍스트 색상 지정 */
	  text-decoration: none; /* 링크 밑줄 제거 */
	  border: 1px solid #cbd5e1 ; /* 테두리 제거 */
	  border-radius: 4px; /* 버튼 모서리 둥글게 만들기 */
	  margin: 5px; /* 버튼 사이 여백 추가 */
	  font-weight: bold; /* 텍스트 굵게 설정 */
	  font-size : 14px;
	  transition: background-color 0.3s; /* 배경색 변화에 애니메이션 적용 */
	}
	.button:hover {
		background: linear-gradient(to bottom, #999999, #cccccc);
	}
	
</style>
</head>
<body>
	<div class="warp-container">
		<div class="adm-member-update">
			<div>
				<h2>회원정보수정</h2>
			</div>
		<form>
			<div>
				<table>
					<tr>
						<th>닉네임</th>
						<td><input type="text" >
						</td>
					</tr>
					<tr>
						<th>아이디</th>
						<td><input type="text" >
						</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="text" >
						</td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" >
						</td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td><input type="text" >
						</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" >
						</td>
					</tr>
					<tr>
						<th>이력서</th>
						<td><input type="text" >
						</td>
					</tr>
					<tr>
						<th>회원가입일</th>
						<td><input type="text" >
						</td>
					</tr>	
				</table>
			</div>
			<div>
				<a href="#" class="button" target="_blank">수정하기</a> 
				<a href="#" class="button" target="_blank">회원탈퇴</a>
			</div>
		</form>
		</div>
	</div>
</body>
</html>