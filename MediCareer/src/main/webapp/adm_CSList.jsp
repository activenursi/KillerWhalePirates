<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 게시물관리</title>
<style>
	h2{
		text-decoration: underline;
	}
	.tableBox2 table{
		text-align: center;
		border-collapse: collapse;
		border:1px solid black;
	}
	.tableBox2 table th {
		background-color: gray;
		border-collapse: collapse;
		border:1px solid black;
	}
	.tableBox2 table td {
		border-collapse: collapse;
		border:1px solid black;
	}
</style>
</head>
<body>
	<div>
		<div>
			<div>
				<h2>고객지원</h2>
			</div>
		</div>
		<form>
		<div class="tableBox2">
			<table>
				<tr>
					<th class="">번호</th>
					<th class="">분류</th>
					<th class="">제목</th>
					<th class="">작성자</th>
					<th class="">작성일자</th>
					<th class="">진행상태</th>
					<th class="">담당자</th>
				</tr>
				<tr>
					<td>1</td>
					<td>이용문의</td>
					<td>비밀번호찾기가안되요.</td>
					<td>홍길동</td>
					<td>2023-09-07</td>
					<td>진행단계<td>
					<td>최고관리자</td>
				</tr>
			</table>
		</div>
		
		</form> 
	</div>
</body>
</html>