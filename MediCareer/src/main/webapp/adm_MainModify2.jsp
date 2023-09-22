<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 메인페이지</title>
</head>
<style>
	.companyPage{
		width: 700px;
		margin: 0 auto;
		margin-top: 100px;
	}
	.site_situation{
		text-decoration: underline;
	}
	.tableBox1{
		display: flex;
		justify-content: center;
		align-items: center; /* 수직 가운데 정렬 */
		border:3px solid black;
		width:690px;
		height: 120px;
		text-align: center;
	}
	.tableBox1 .table_box{
		margin : 10px;
		border-collapse: collapse;
	}
	.thline{
		border-left:1px solid black;
		border-right:1px solid black;
		padding-left:10px;
		padding-right:10px;
		border-collapse: collapse;
	}
	.tableBox1 th{
		font-size:24px;
		width: 220px;
	}
	.tableBox2 {
	  width: 690px; /* 화면 너비의 절반을 차지하도록 설정 */
	  display: inline-block; /* 두 테이블을 옆에 배치하기 위해 */
	  vertical-align: top; /* 상단 정렬 (선택 사항) */
	}
	.tableBox2 table th {
		background-color: lightgray;
		border-collapse: collapse;
		border:1px solid black;
	}
	.tableBox2 table {
	  width: 690px;
	  border-collapse: collapse; /* 셀 간의 경계를 합치기 */
	  background-color: lightgray;
	  border:1px solid black;
	  text-align: center;
	}
	
	.tableBox2 td {
	  border: 1px solid black; /* 셀 테두리 설정 (선택 사항) */
	  border-collapse: collapse;
	  background-color: white;
	}
	.memberCategory{
		border:1px solid black;
		 margin-right: 20px;
	}
</style>
<body>
<jsp:include page="./Header7.jsp"></jsp:include>
		<div class="companyPage">
			<h2 class="site_situation">사이트현황</h2>
		<div class="tableBox1">
			<table class="table_box" border-collapse="separate;">
				<tr>
					<th colspan="2">전체 회원수</th>
					<th class="thline">채용 공고 수</th>
					<th>게시글 수</th>
				</tr>
				<tr class="box2_wrap">
					<td class="memberCategory" style="background-color: lightgray;">일반회원</td>
					<td class="memberCategory" style="background-color: lightgray;">기업회원</td>
					<td rowspan="2" class="thline">5</td>
					<td rowspan="2" >3</td>
				</tr>
				<tr>
					<td class="memberCategory">8</td>
					<td class="memberCategory">3</td>
				</tr>
			</table>
		</div>
		<br>
		<br>
		<h2>최근회원목록</h2>
		<div class="tableBox2">
			<table class="table_box2">
				<tr>
					<th class="memeberId">아이디</th>
					<th class="memberEmail">이메일</th>
					<th class="memeberName">이름</th>
					<th class="memberBirth">생년월일</th>
					<th class="memberPhone">휴대전화</th>
					<th class="memberCredate">가입일</th>
					<th class="memberRecent">최근접속</th>
				</tr>
				<tr>
					<td>rladkanro</td>
					<td>rladkanro@naver.com</td>
					<td>홍길동</td>
					<td>93.08.23</td>
					<td>20010-1111-2222</td>
					<td>2023-09-07</td>
					<td>2023-09-07</td>
				</tr>
			</table>
		</div> 
		<br>
		<br>
		<h2>최근문의내역</h2>
		<div class="tableBox2">
			<table>
				<tr>
					<th class="serviceNo">번호</th>
					<th class="serviceCategory">분류</th>
					<th class="memberId">닉네임</th>
					<th class="csTitle">제목</th>
					<th class="csCreDate">작성날짜</th>
					<th class="progressStage">진행상태</th>
				</tr>
				<tr>
					<td>1</td>
					<td>이용문의</td>
					<td>test[test]</td>
					<td>문의테스트입니다.</td>
					<td>2023-09-07</td>
					<td>진행중</td>
				</tr>
			</table>
		</div>
	</div>	
</body>
</html>