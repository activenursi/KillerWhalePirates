<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입사지원 현황</title>
<style>
.jobApplication-wrap {
	margin: 0 auto;
	width:900px;
	height: 900px;
}
.document_management {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	justify-content: space-around;
	height: 116px;
	border: 1px solid rgb(0, 0, 0);
	padding: 10px;
	line-height: 1.5;
	border-radius: 8px;
	margin-top: 20px;
	list-style: none;
	margin-bottom: 40px;
}

.flex_wrap1, .flex_wrap2, .flex_wrap3, .flex_wrap4 {
	flex: 1;
	text-align: center;
	font-weight: 600;
	border-right: 2px solid black;
}

.flex_wrap5 {
	flex: 1;
	text-align: center;
	font-weight: 600;
}
</style>
</head>
<body>
	<div class="content-wrap">
		<div class="jobApplication-wrap">
			<h2>입사지원 현황</h2>
			<ul class="document_management">
				<li class="flex_wrap1">
					<dl>
						<dt>지원 현황</dt>
						<dd style="text-align: center;">0</dd>
					</dl>
				</li>
				<li class="flex_wrap2">
					<dl>
						<dt>이력서 관리</dt>
						<dd>2</dd>
					</dl>
				</li>
				<li class="flex_wrap3">
					<dl>
						<dt>지원한 공고</dt>
						<dd>3</dd>
					</dl>
				</li>
				<li class="flex_wrap4">
					<dl>
						<dt>서류통과</dt>
						<dd>2</dd>
					</dl>
				</li>
				<li class="flex_wrap5">
					<dl>
						<dt>합격</dt>
						<dd>1</dd>
					</dl>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>