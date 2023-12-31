<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 게시물관리</title>
<style>
#adm_boardList {
	margin: 0 auto;
	width: 900px;
	height: 1400px;
}

h2 {
	text-decoration: underline;
	margin-bottom: 30px;
}

.post_management {
	margin: 0 auto;
	width: 900px;
	margin-top: 120px;
	height: 1400px;
}

.tableBox2 table {
	text-align: center;
	border-collapse: collapse;
	width: 900px;
}

.tableBox2 table th {
	border-collapse: collapse;
	border-bottom: 1px double black;
}

.tableBox2 table td {
	border-collapse: collapse;
	border-bottom: 1px solid black;
}

.table_wrap {
	margin-bottom: 20px;
}

.post_delete {
	float: right;
}
</style>
</head>
<body>
	<div id="adm_boardList">
		<div class="post_management">
			<div class="post_wrap">
				<h2>게시물관리</h2>
			</div>
			<form>
				<div class="tableBox2">
					<table class="table_wrap">
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
					<div class="post_delete">
						<input type="button" value="선택삭제">
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>