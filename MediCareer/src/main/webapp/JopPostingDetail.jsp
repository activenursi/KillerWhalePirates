<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채용공고상세</title>
<style type="text/css">
	h2{
			text-decoration: underline;
		}
	.jopPostingInfo{
		width: 660px;
		height: 80px;
		background-color: grey;
		text-align: center;
	}
	
	.jopPostingInfo th{
		font-size:24px;
	}
	.jopPostingInfo td{
		font-size:21px;
	}
	.jobPostingTitle{
		width:350px;
	}
	.jobRatio{
		border-left:1px solid black;
		border-right:1px solid black;
		border-collapse: collapse;
		width:120px;
	}
	.jobPostingCre{
		width:190px;
	}
	.applicantBox{
		width:660px;
	}
	.applicantBox table{
		text-align: center;
		border-collapse: collapse;
		border:1px solid black;
	}
	.applicantBox table th {
		background-color: gray;
		border-collapse: collapse;
		border-bottom: 1px solid black;
	}
	.applicantBox tr{
		border:1px solid black;
	}
	.applicantName{
		width:70px;
	}
	.applicantEmail{
		width: 190px;
	}
	.applicantBirth{
		width:100px;
	}
	.applicantCallNo{
		width:140px;
	}
	.applicantResume{
		width:120px;
	}
	.applicantCheck{
		width:40px;
	}
</style>
</head>
<body>
	<div class="jopPostingInfo">
		<table>
			<tr>
				<th class="jobPostingTitle">채용공고제목</th>
				<th class="jobRatio">지원률</th>
				<th class="jobPostingCre">등록날짜</th>
			</tr>
			<tr>
				<td>채용공고테스트입니다</td>
				<td>87%</td>
				<td>2023-09-07</td>
			</tr>
		</table>
	</div>
	<br>
	<br>
	<div>
	<h2>지원자 현황</h2>
		<div class="applicantBox">
			<table>
				<tr>
					<th class="applicantName">이름</th>
					<th class="applicantEmail">이메일</th>
					<th class="applicantBirth">생년월일</th>
					<th class="applicantCallNo">휴대전화</th>
					<th class="applicantResume">이력서</th>
					<th class="applicantCheck">선택</th>
				</tr>
				<tr>
					<td>홍길동</td>
					<td>Test@test.test</td>
					<td>87.08.29</td>
					<td>010-7877-7888</td>
					<td><a href="#">이력서.hwp</a></td>
					<td>
 						<input type="checkbox" id="checkbox" 
 						name="checkboxName" value="checkBoxValue">
 					</td>
				</tr>
				<tr>
					<td>홍길동</td>
					<td>Test@test.test</td>
					<td>87.08.29</td>
					<td>010-7877-7888</td>
					<td><a href="#">이력서.hwp</a></td>
					<td>
 						<input type="checkbox" id="checkbox" 
 						name="checkboxName" value="checkBoxValue">
 					</td>
				</tr>
			</table>
		</div>
	</div>

</body>
</html>