<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴목록</title>
<style>
	.pageTitle{
		text-decoration: underline;
	}
	.wrap-container{
		width: 770px;
		margin: 0 auto;
	}
	table{
		width: 750px;
		border-collapse: collapse; /* 셀 간의 경계를 합치기 */
		background-color: lightgray;
		border:1px solid black;
		text-align: center;
	}
	table th{
		background-color: lightgray;
		border-collapse: collapse;
		border:1px solid black;
	}
	table td{
		border: 1px solid black; /* 셀 테두리 설정 (선택 사항) */
		border-collapse: collapse;
		background-color: white;
	}
	.deleteBtn{
		text-align: right;
		margin-bottom: 14px;
		background-color: rgb(52, 152, 219);
		float:right;
		border:none;
		text-align:center;
		width:80px;
		height:30px;
		border-radius: 4px;
		color: #FFFFFF;
		
	}
	.adm_memberCategory{
		border-bottom: 1px solid gray;
		font-size : 24px;
		font-weight: bold;
		padding-bottom: 12px;
		margin-bottom: 10px;
		margin-top: 100px;
	}
	.category{
		display: none;
	}
	.delLabel{
		color: black;
	}
	.listLabel{
		color: gray;
		margin-right: 20px;
	}
</style>
	
</head>
<body>
	<jsp:include page="./Header7.jsp"></jsp:include>
	<div class="wrap-container">
	<div class="">
		<div class="adm_memberCategory">
		  <input type="radio" id="memberList" class="category" value="memberList">
		  <label for="memberList" class="listLabel" 
		  	onclick="window.location.href = './adm_MemberList.jsp';">회원목록</label>
		
		  <input type="radio" id="memberDelList" class="category" value="memberDelList">
		  <label for="memberDelList" class="delLabel" 
		  	onclick="window.location.href = './adm_MemberDelList.jsp';">회원 탈퇴내역</label>
		</div>
		<div>
			<h3>회원 탈퇴내역</h3>
		</div>
		<div>
			<input class="deleteBtn" type="button" value="선택삭제"> 
		</div>
		<div>
			<table>
				<tr>
					<th><input type="checkbox"></th>
					<th>회원아이디</th>
					<th>회원이메일</th>
					<th style="width:300px;">탈퇴사유</th>
					<th>탈퇴일시</th>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>test</td>
					<td>test@naver.com</td>
					<td style="width:300px;">취업성공</td>
					<td>2023-09-11</td>
				</tr>
			</table>
		</div>
	</div>
	</div>
</body>
</html>
