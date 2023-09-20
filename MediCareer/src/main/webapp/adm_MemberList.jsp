<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<style>
	.wrap-container{
		width: 770px;
		margin: 0 auto;
	}
	.admMemberCategory{
		border-bottom: 1px solid gray;
		font-size : 24px;
		font-weight: bold;
		padding-bottom: 12px;
		margin-top: 100px;
	}
  /* 입력 상자 스타일 */
    .search-input {
        padding: 10px;
        width: 300px;
        border: 1px solid #ccc;
        border-radius: 4px;
        outline: none;
        font-size: 16px;
    }

       /* 검색 버튼 스타일 */
    .search-button {
        padding: 10px 20px;
        background-color: gray;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        margin-bottom: 12px;
        margin-top: 12px;
    }

       /* 검색 버튼 호버 효과 */
    .search-button:hover {
        background-color: #5F5F5F;
    }

       /* 입력 상자와 검색 버튼을 감싸는 컨테이너 스타일 */
    .search-container {
        display: flex;
        align-items: center;
        margin-bottom: 12px;
        margin-top: 12px;
    }
    .category{
		display: none;
	}
	.delLabel{
		color: gray;

	}
	.listLabel{
		color: black;
		margin-right: 20px;

	}
	.tableBox2 table{
		width: 750px;
		border-collapse: collapse; /* 셀 간의 경계를 합치기 */
		background-color: lightgray;
		border:1px solid black;
		text-align: center;
	}
	.tableBox2 table th {
		background-color: lightgray;
		border-collapse: collapse;
		border:1px solid black;
	}
	.tableBox2 table td {
		border: 1px solid black; /* 셀 테두리 설정 (선택 사항) */
		border-collapse: collapse;
		background-color: white;
	}
</style>
</head>
<body>
<%-- <jsp:include page="./Header7.jsp"></jsp:include> --%>
	<div class="wrap-container">
		<div>
			<div class="admMemberCategory">
			  <input type="radio" id="memberList" class="category" value="memberList">
			  <label for="memberList" class="listLabel" 
			  	onclick="window.location.href = './adm_MemberList.jsp';">회원목록</label>
			
			  <input type="radio" id="memberDelList" class="category" value="memberDelList">
			  <label for="memberDelList" class="delLabel" 
			  	onclick="window.location.href = './adm_MemberDelList.jsp';">회원 탈퇴내역</label>
			</div>
			<div class="seach-container">
				<input type="text" class="search-input">
				<button class="search-button">검색</button>
			</div>
			<div class="tableBox2">
			<table>
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
		</div>
	</div>
</body>
</html>