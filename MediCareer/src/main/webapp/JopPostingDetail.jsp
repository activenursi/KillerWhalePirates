<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채용공고상세</title>
<style type="text/css">
h2 {
	text-decoration: underline;
}

.jopPostingInfo {
	width: 660px;
	height: 80px;
	background-color: grey;
	text-align: center;
}

.jopPostingInfo th {
	font-size: 24px;
}

.jopPostingInfo td {
	font-size: 21px;
}

.jobPostingTitle {
	width: 350px;
}

.jobRatio {
	border-left: 1px solid black;
	border-right: 1px solid black;
	border-collapse: collapse;
	width: 120px;
}

.jobPostingCre {
	width: 190px;
}

.applicantBox {
	width: 660px;
}

.applicantBox table {
	text-align: center;
	border-collapse: collapse;
	border: 1px solid black;
}

.applicantBox table th {
	background-color: gray;
	border-collapse: collapse;
	border-bottom: 1px solid black;
}

.applicantBox tr {
	border: 1px solid black;
}

.applicantName {
	width: 70px;
}

.applicantEmail {
	width: 190px;
}

.applicantBirth {
	width: 100px;
}

.applicantCallNo {
	width: 140px;
}

.applicantResume {
	width: 120px;
}

.applicantCheck {
	width: 40px;
}
/* 모달 스타일링 */
.modal {
  display: none;
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.7);
}

.modal-content {
  background-color: white;
  margin: 25% auto;
  padding: 20px;
  border: 1px solid #888;
  width: 300px;
  text-align: center;
}

.close {
  float: right;
  cursor: pointer;
}

/* 버튼 스타일링 */
button {
  margin: 5px;
  padding: 10px 20px;
}
</style>
<script type="text/javascript" 
	src="/MediCareer/resources/js/jquery-3.7.1.js"></script>

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
				<td class="jobRatio">87%</td>
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
					<td><input type="checkbox" id="checkbox" name="checkboxName"
						value="checkBoxValue"></td>
				</tr>
				<tr>
					<td>홍길동</td>
					<td>Test@test.test</td>
					<td>87.08.29</td>
					<td>010-7877-7888</td>
					<td><a href="#">이력서.hwp</a></td>
					<td><input type="checkbox" id="checkbox" name="checkboxName"
						value="checkBoxValue"></td>
				</tr>
			</table>
		</div>
	</div>
	<br>
	<div>
		<input class="btn" type="button" value="지원마감"> <input
			class="btn" type="button" value="목록으로">
	</div>
	<div id="myModal" class="modal">
		<div class="modal-content">
			<span class="close">&times;</span>
			<p>지원마감하시겠습니까?</p>
			<button id="confirmButton">확인</button>
			<button id="cancelButton">취소</button>
		</div>
	</div>
</body>
<script type="text/javascript">
	//"지원마감" 버튼을 눌렀을 때 모달 창을 표시합니다.
	document.querySelector(".btn[value='지원마감']").addEventListener("click", function() {
	  var modal = document.getElementById("myModal");
	  modal.style.display = "block";
	});
	
	// 닫기 (×) 버튼 또는 취소 버튼을 클릭하면 모달 창을 닫습니다.
	document.querySelector(".close").addEventListener("click", function() {
	  var modal = document.getElementById("myModal");
	  modal.style.display = "none";
	});
	
	document.querySelector("#cancelButton").addEventListener("click", function() {
	  var modal = document.getElementById("myModal");
	  modal.style.display = "none";
	});
	
	// 확인 버튼을 클릭하면 원하는 동작을 수행하고 모달 창을 닫습니다.
	document.querySelector("#confirmButton").addEventListener("click", function() {
	  // 여기에 "지원마감"을 처리하는 코드를 추가하세요.
	  // 모달 창을 닫는 코드
	  var modal = document.getElementById("myModal");
	  modal.style.display = "none";
	});
</script>
</html>