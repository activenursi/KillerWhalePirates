<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 관리</title>
<style>
.bodyEntire-wrap {
	border: 1px solid;
	width: 900px;
	height: 900px;
	margin: 0 auto;
}
.boardmanagement-wrap {
	width: 770px;
	height: 800px;
	margin: 0 auto;
	margin-top: 80px;
}
.boardmanagement-list {
	margin-bottom: 60px;
}
.writer_wrap1, .writer_wrap2 {
	width: 40px;
	text-align: center;
}
</style>
</head>
<body>
	<div class="bodyEntire-wrap">
		<div class="boardmanagement-wrap">
			<p class="boardmanagement-list">
				<strong>게시물 관리&nbsp;(최대 3개)</strong>
			</p>
			<table style="border-bottom: 1px solid; width:770px; ">
				<tr class="writer_wrap1" style="border-bottom: 1px solid">
					<th style="width: 100px; border-bottom: 1px solid;">분류</th>
					<th style="width: 470px; border-bottom: 1px solid;">제목</th>
					<th style="width: 80px; border-bottom: 1px solid;">작성자</th>
					<th style="width: 120px; border-bottom: 1px solid;">작성 일자</th>
				</tr>
				<tr class="writer_wrap2">
					<td>커뮤니티</td>
					<td>화면단 너무 어렵다</td>
					<td>테스트1</td>
					<td>2023-09-15</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>