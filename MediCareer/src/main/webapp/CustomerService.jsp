<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 센터</title>
<style>
	.customerService{
		width:660px;
		margin: 0 auto;
	}
	.customerService1{
		width:410px;
		margin: 0 auto;
	}
	.text-base{
		font-weight: bold;
	}
	
	.button {
		
	  display: inline-block;
	  padding: 10px 20px;
	  background-color: #f5fafc; /* 버튼 배경색 지정 */
	  color: #0f172a; /* 버튼 텍스트 색상 지정 */
	  text-decoration: none; /* 링크 밑줄 제거 */
	  border: 1px solid #cbd5e1 ; /* 테두리 제거 */
	  border-radius: 4px; /* 버튼 모서리 둥글게 만들기 */
	  margin: 5px; /* 버튼 사이 여백 추가 */
	  font-weight: bold; /* 텍스트 굵게 설정 */
	  font-size : 14px;
	  transition: background-color 0.3s; /* 배경색 변화에 애니메이션 적용 */
	}

	.button:hover {
	  background-color: #2980b9; /* 마우스 호버시 배경색 변경 */
	}
	.custom-input{
		border-radius: 4px;
		width: 420px;
		height: 40px;
		font-size : 15px;
		margin-bottom : 15px;
	}
	#categorySelect{
		border-radius: 4px;
		width: 420px;
		height: 40px;
		font-size : 15px;
		margin-bottom : 15px;
	}
	
	.cs-text{
		resize:none;
		border-radius: 4px;
		width: 420px;
		height: 150px;
		font-size : 15px;
		margin-bottom : 15px;
	}
	.cs-agree{
		width: 300px;
		float : left;
		margin-bottom: 0px;
	}
	.cs-agree1{
		margin-top: 0px;
		margin-bottom: 4px;
		font-size: 14px;
		color: gray;
	}
	.agree-detail{
		text-align: right;
	}
	.agree-view{
		margin-bottom : 0px;
	}
	
	.send-button {
		width: 420px;
		height: 40px;
		border-radius: 4px;
		background-color: #007bff; /* 버튼의 기본 배경색 */
		color: #fff; /* 버튼 텍스트 색상 */
		padding: 10px 20px; /* 버튼 패딩 */
		border: none; /* 테두리 없음 */
		cursor: pointer; /* 포인터 모양으로 변경 */
		transition: background-color 0.3s; /* 배경색 변화에 트랜지션 적용 */
		margin-top: 15px;
	}

	/* 버튼 눌렸을 때 스타일 */
	.send-button:active,
	.send-button:focus {
	  background-color: #0056b3; /* 버튼이 눌렸을 때 배경색 변경 */
	}
</style>
</head>

<body>
<div class="customerService">
	<div class="customerService1">
		<div>
			<h1>고객센터</h1>
		</div>
		<div>
			<p class="text-base">무엇이든 물어보세요!</p>
			<p>휴일을 제외한 평일에는 하루 이내에 답변드릴게요. 혹시 하루가 지나도 답변이 오지 않으면, 스팸 메일함을
				확인해주세요.</p>
		</div>
		<div>
			<a href="#" class="button" target="_blank">자주묻는질문</a> 
			<a href="#" class="button" target="_blank">커뮤니티가이드</a>
			<a href="#" class="button" target="_blank">회원탈퇴</a>
		</div>
		<form>
			<div>
				<p class="text-base">이용문의</p>
				<input type="text" class="custom-input" placeholder="답변 받으실 이메일을 입력해주세요."
					class="" value="">

				<div>
					<select id="categorySelect" >
						<option disabled selected hidden>질문 유형을 선택해주세요.</option>
						<option value="question">이용 문의</option>
						<option value="report">오류 신고</option>
						<option value="service_suggestion">서비스 제안</option>
						<option value="extra">기타</option>
					</select>
				</div>
				<div>
					<textarea rows="5" class="cs-text" placeholder="내용을 적어주세요."></textarea>
				</div>
				<div>
					<div class="cs-agree">
						<input type="checkbox" id="email-agree" checked> <label
							for="email-agree" class="">(필수) 개인정보 수집 및 이용 동의 </label>
					</div>
					<a href="#" target="_blank" class="agree-detail">
						<p class="agree-view">보기</p>
					</a>
				</div>
				<div class="cs-agree1">답변을 보내드리기 위해 필요해요</div>
				
			</div>
			<button type="button" class="send-button" disabled>보내기</button>
		</form>
	</div>
</div>
</body>
</html>