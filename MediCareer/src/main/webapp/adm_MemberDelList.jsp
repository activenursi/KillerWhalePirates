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
		border-collapse: collapse;
	}
	table th{
		background-color : gray;
		border: 1px solid black;
	}
	table td{
		border: 1px solid black;
	}
	.deleteBtn{
		text-align: right
	}
	.admMemberCategory{
		border-bottom: 1px solid gray;
		font-size : 24px;
		font-weight: bold;
		padding-bottom: 12px;
	}
	.category{
		display: none;
	}
	.delLabel{
		color: black;
	}
	.listLabel{
		color: gray;
	}
</style>
	
</head>
<body>
	<div class="wrap-container">
	<div class="">
		<div class="admMemberCategory">
		  <input type="radio" id="memberList" class="category" value="memberList">
		  <label for="memberList" class="listLabel" 
		  	onclick="window.location.href = './adm_memberList.jsp';">회원목록</label>
		
		  <input type="radio" id="memberDelList" class="category" value="memberDelList">
		  <label for="memberDelList" class="delLabel" 
		  	onclick="window.location.href = './adm_memberDelList.jsp';">탈퇴내역</label>
		</div>
		
		
		<div class="deleteBtn"><input type="button" value="선택삭제"> </div>
		<div>
			<table>
				<tr>
					<th><input type="checkbox"></th>
					<th>회원아이디</th>
					<th>회원이메일</th>
					<th>탈퇴사유</th>
					<th>탈퇴일시</th>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>test</td>
					<td>test@naver.com</td>
					<td>취업성공</td>
					<td>2023-09-11</td>
				</tr>
				
			</table>
		</div>
	</div>
	</div>
</body>
</html>
