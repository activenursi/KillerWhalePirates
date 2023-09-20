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
	}
	.tableBox2 table th {
		border-collapse: collapse;
		border-bottom: 1px double black;
	}
	.tableBox2 table td {
		border-collapse: collapse;
		border-bottom:1px solid black;
	}
</style>

</head>
<body>
	<div>
		<div>
			<div>
				<h2>게시물관리</h2>
			</div>
		</div>
		<form>
		<div class="tableBox2">
			<table>
				<tr>
					<th class="memeberId"><input type="checkbox"></th>
					<th class="memberEmail">분류</th>
					<th class="memeberName">제목</th>
					<th class="memberBirth">작성자</th>
					<th class="memberPhone">작성일자</th>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>커뮤니티</td>
					<td>Ajax가 뭔가요?</td>
					<td>홍길동</td>
					<td>2023-09-07</td>
				</tr>
			</table>
		</div>
		<div>
			<input type="button" value="선택삭제">
		</div>
		</form> 
	</div>
</body>
</html>