<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업페이지</title>

<style>
	h2{
		text-decoration: underline;
	}
	.tableBox1{
		border:3px solid black;
		width:660px;
		font-size:24px;
		text-align: center;
	}
	.tableBox1 table{
		margin : 10px;
		border-collapse: collapse;
	}
	.thline{
		border-left:1px solid black;
		border-right:1px solid black;
		border-collapse: collapse;
	}
	.tableBox1 th{
		width: 220px;
	}
	.tableBox2{
		width:660px;
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
	.jobPostingNo{
		width:40px;
	}
	.jobPostingTitle{
		width:360px;
	}
	.jobPostingCre{
		width:105px;
	}
	.jobRatio{
		width:50px;
	}
	
	.jobPostingMod{
		width:105px;
	}
	
	
	
</style>
</head>
<body>
	<h2>채용공고현황</h2>
	<div class="tableBox1">
		<table>
			<tr>
				<th>채용 공고 수</th>
				<th class="thline">채용 공고 수</th>
				<th>채용 공고 수</th>
			</tr>
			<tr>
				<th>8</th>
				<th class="thline">5</th>
				<th>3</th>
			</tr>
		</table>
	</div>
	<br>
	<br>
	<h2>채용진행</h2>
	<div class="tableBox2">
		<table>
			<tr>
				<th class="jobPostingNo">번호</th>
				<th class="jobPostingTitle">채용공고제목</th>
				<th class="jobRatio">지원률</th>
				<th class="jobPostingCre">등록날짜</th>
				<th class="jobPostingMod">수정날짜</th>
			</tr>
			<tr>
				<td>1</td>
				<td>채용공고테스트입니다</td>
				<td>87%</td>
				<td>2023-09-07</td>
				<td>2023-09-07</td>
			</tr>
		</table>
	</div>
	<br>
	<br>
	<h2>채용공고목록</h2>
	<div class="tableBox2">
		<table>
			<tr>
				<th class="jobPostingNo">번호</th>
				<th class="jobPostingTitle">채용공고목록</th>
				<th class="jobPostingCre">등록날짜</th>
				<th class="jobPostingMod">수정날짜</th>
			</tr>
			<tr>
				<td>1</td>
				<td>채용공고테스트입니다</td>
				<td>2023-09-07</td>
				<td>2023-09-07</td>
			</tr>
		</table>
	</div>
</body>
</html>