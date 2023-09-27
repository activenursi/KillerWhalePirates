<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공고 일반 수정2</title>
<style>
body {
	height: 2000px;
	width: 700px;
	margin: 0 auto;
}

#before_page {
	text-align: left;
}

#template_content {
	border: 1px solid lightgray;
	width: 700px;
	height: 1100px;
	margin-bottom: 10px;
	border-radius: 4px;
	display: grid; /* 또는 display: grid; */
	justify-content: left;
	align-items: center; /* 세로 중앙 정렬 */
	padding-left: 30px;
}
#loc {
	border: 1px solid lightgray;
	width: 700px;
	margin-bottom: 10px;
	border-radius: 4px;
}

#recruitment_period {
	border: 1px solid lightgray;
	width: 700px;
	border-radius: 4px;
}
.procedure-list{
	display: flex;
	list-style: none;
}
.arrow{
	margin-top: 38px;
	color:black;
	font-weight: 1000;
}
.circle{
	width: 100px; /* 원의 지름을 설정합니다. */
    height: 100px; /* 원의 높이도 지름과 동일하게 설정합니다. */
    background-color: #3498db; /* 배경색을 설정합니다. */
    border-radius: 50px; /* 원 모양으로 만듭니다. */
    text-align: center; /* 텍스트를 가운데 정렬합니다. */
    line-height: 100px; /* 텍스트를 수직 가운데 정렬합니다. */
    color: white; /* 텍스트의 색상을 설정합니다. */
}
.more_info{
	margin-bottom: 0px;
	border-bottom: 3px solid black;
	width:350px;
	
}
.condition {
	list-style: none;
}
.how_apply{
	margin-left: 40px;
}
</style>

</head>
<body>
	<!-- (카카오 오븐) 공고 일반 수정 -->
		<div id="main_title">
			<h2 style="margin-left:-200px;" onclick="" class="before_page">< 이전 페이지</h2>
		</div>
	<main>
		<h2 class="more_info">상세요강</h2>
		<div id="template_content">
			<ul class="condition">
				<li><h2>근무조건</h2></li>
				<li><b>근무형태 </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					계약직</li>
				<li><b>근무지역</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 서울
				<li><b>근무시간</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 09:00~18:30</li>
				<li class="job1">
					<b>급&nbsp;&nbsp;&nbsp;여</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					<strong> 면접 후 결정</strong>
				</li>
			</ul>
			<ul class="condition">
				<li><h2>지원조건</h2></li>
				<li><b>담당업무</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 피부관리사</li>
				<li><b>모집인원</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 계약직</li>
				<li><b>연령</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 무관</li>
				<li><b>경력</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 신입</li>
			</ul>
			<ul class="condition">
				<li><h2>주요업무</h2></li>
				<li><b>주요업무1</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 팩</li>
				<li><b>주요업무2</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ?????</li>
				<li><b>주요업무3</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ?????</li>
			</ul>
			<ul class="condition">
				<li><h2>채용담당자</h2></li>
				<li><b>담당자명</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ???</li>
				<li><b>전화</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					02-1234-56789</li>
				<li><b>이메일</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					email@naver.com</li>
			</ul>
			<div>
			    <h2 style="margin-left:35px;">전형절차</h2>
			    <ol class="procedure-list">
			        <li class="circle">서류 제출</li>
			        <li class="arrow">&nbsp;〉&nbsp;</li>
			        <li class="circle">1차 면접</li>
			        <li class="arrow">&nbsp;〉&nbsp;</li>
			        <li class="circle">합격 결과</li>
			    </ol>
			</div>
			<ul class="condition">
				<li><h2>복리후생</h2></li>
				<li><p>4대보험, 자유로운 휴가, 인센티브&명절격려금, 자격증 수당 지급</p></li>
			</ul>
		</div>
		<br>
		<div id="loc">
			<ul class="condition">
				<li><h2>근무지역</h2></li>
				<li
					style="border: 1px solid; background-color: green; 
					width: 400px; height: 200px; margin-left: 100px;">
					<b>#근무위치</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</li>
				<br>

				<li style="margin-left: 100px;">서울 강남구 테헤란로 121 원빌딩 8F, 9F, 10F</li>
			</ul>
		</div>
		<div id="recruitment_period">
			<ul class="condition">
				<li><h2>모집기간</h2></li>
				<li><b>근무지역</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					2023.09.09~2024.10.22</li>
			</ul>
		</div>
	</main>
	<footer></footer>
</body>
</html>