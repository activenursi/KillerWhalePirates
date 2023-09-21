<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>이력서 작성</title>
<style>
body {
	background-color: rgb(248 250 252);
}
#main_content {
	width: 1348px;
}
#content{
	width: 700px;
	height : 1500px;
	margin: 0 auto;
	padding-left: 100px;
	background-color: #FFFFFF;
	border: 1px solid rgb(203 213 225);
}
.profile_img{
	font-weight: 700;
}
.img_changeBtn {
	height: 30px;
    width: 70px;
    margin-bottom: 20px;
    background-color: rgb(52, 152, 219);
    border: 1px solid rgb(203 213 225);
    color: #FFFFFF;
    border-radius: 4px;
}
.img_deleteBtn {
	height: 30px;
    width: 70px;
    margin-bottom: 20px;
    background-color: rgb(52, 152, 219);
    border: 1px solid rgb(203 213 225);
    color: #FFFFFF;
    border-radius: 4px;
}
a {
	text-align: left;
	text-decoration: none;
	color:black;
}
.body_entire {
	margin:0 auto;
}
.input_name {
	width: 540px;
	height: 40px;
	background-color: rgb(248 250 252);
	border: 1px solid lightgray;
	border-radius: 4px;
	padding-left: 10px;
}

.input_email {
	width: 540px;
	height: 40px;
	background-color: rgb(248 250 252);
	border: 1px solid lightgray;
	border-radius: 4px;
	padding-left: 10px;
}

.input_education {
	width: 540px;
	height: 40px;
	background-color: rgb(248 250 252);
	border: 1px solid lightgray;
	border-radius: 4px;
	margin-bottom: 5px;
	padding-left: 10px;
}

.input_major {
	width: 540px;
	height: 40px;
	background-color: rgb(248 250 252);
	border: 1px solid lightgray;
	border-radius: 4px;
	padding-left: 10px;
}

.input_certificate {
	width: 540px;
	height: 40px;
	background-color: rgb(248 250 252);
	border: 1px solid lightgray;
	border-radius: 4px;
	padding-left: 10px;
}

.input_career {
	width: 540px;
	height: 40px;
	background-color: rgb(248 250 252);
	border: 1px solid lightgray;
	border-radius: 4px;
	padding-left: 10px;
}

.input_meno {
	width: 540px;
	height: 30px;
	background-color: rgb(248 250 252);
	border: 1px solid lightgray;
	border-radius: 4px;
	padding-left: 10px;
}
.input_date {
	width: 540px;
	height: 40px;
	background-color: rgb(248 250 252);
	border: 1px solid lightgray;
	border-radius: 4px;
	margin-bottom: 5px;
	padding-left: 10px;
}
.input_addr {
	width: 540px;
	height: 40px;
	background-color: rgb(248 250 252);
	border: 1px solid lightgray;
	border-radius: 4px;
	margin-bottom: 5px;
	padding-left: 10px;
}
.input_male{
    background-color: rgb(248 250 252);
    border: 1px solid lightgray;
    border-radius: 4px;
}
.preview_btn {
	float:right;
	height: 35px;
    width: 120px;
    margin-bottom: 20px;
    background-color: rgb(52, 152, 219);
    border: 1px solid rgb(203 213 225);
    color: #FFFFFF;
    border-radius: 4px;
    margin-top: 30px;
}
.small_title {
	white-space: pre-wrap;
    padding-bottom: 10px;
    font-size: 12px;
    line-height: 1.42;
    letter-spacing: normal;
    color: #666;
    margin-top: 10px;
}
</style>
</head>
<body>
<jsp:include page="./Header7.jsp"></jsp:include>
	<main id="main_content">
		<div class="body_entire">
				<div class="back_page">
					<h3><a href="/"> < 이전페이지</a><h3>
				</div>
			<div id="content">
				<div class="profile_img">
					<h2>프로필 사진</h2>
					<p style="font-size: 15px; color: gray; border-bottom: 40px;">회원님을 나타낼 사진이에요.</p>
				</div>
				<div class="profile-section">
					<form class="img_modify">
						<label> <img alt="" src="../img/user1.png" alt="프로필 이미지 수정" style="width:150px; height:100px;">
						<input class="img_changeBtn" type="button" value="바꾸기"> 
						<input class="img_deleteBtn" type="button" value="삭제하기">
						</label>
					</form>
				</div>
				<div>
					<h3 style="margin-bottom:8px;">이름</h3>
					<p class="small_title">이름을 작성해주세요.</p>
					<input class="input_name" type="text" placeholder="이름을 입력해주세요.">
				</div>

				<div>
					<h3 style="margin-bottom:8px;">이메일</h3>
					<p class="small_title">이메일을 작성해주세요.</p>
					<input class="input_email" type="text" placeholder="이메일을 입력해주세요.">
				</div>
				<div>
					<h3 style="margin-bottom:8px;">생년월일</h3>
					<p class="small_title">생년월일을 작성해주세요.</p>
					<input class="input_date" type="text"
						placeholder="생년월일 8자리를 입력해주세요."> 
						<span>
						<br>
						<input class="input_male" type="radio" target="_blank;">남자 
						<input class="input_female" type="radio">여자
					</span>
				</div>
				<div>
					<h3 style="margin-bottom:8px;">주소</h3>
					<p class="small_title">주소를 작성해주세요.</p>
					<input class="input_addr" type="text" placeholder="주소를 입력해주세요.">
				</div>
				<div>
					<h3 style="margin-bottom:8px;">
						학력&nbsp;&nbsp;&nbsp; <span style="font-size: 15px; color: red;">필수</span>
					</h3>
						<p class="small_title">최종 학력과 경력을 작성해주세요.</p>
					<input class="input_education" type="text" placeholder="학력을 입력해주세요."> 
					<br>
					<input class="input_major" type="text" placeholder="전공을 입력해주세요.">
				</div>

				<div>
					<h3 style="margin-bottom:8px;">어학 / 자격증</h3>
					<p class="small_title">취득한 자격증을 작성해주세요.</p>
					<input class="input_certificate" type="text"
						placeholder="취득한 자격증을 입력해주세요.">
				</div>

				<div>
					<h3 style="margin-bottom:8px;">경력 / 업무경험</h3>
					<p class="small_title">경력사항 또는 인턴, 현장실습 등 급여를 받은 업무경험이 있다면 작성해주세요.</p>
					<input class="input_career" type="text"
						placeholder="경력사항 또는 인턴, 현장실습 등 급여를 받은 업무경험이 있다면 자유롭게 작성해보세요!">
				</div>

				<div>
					<h3 style="margin-bottom:8px;">자기소개</h3>
					<textarea class="input_meno" type="text"
						style="resize:none; width:430px; height:150px; ">
					</textarea>
				</div>
				<div>
					<input class="preview_btn" type="button" value="미리보기">
				</div>
			</div>
		</div>
	</main>
	<footer></footer>

</body>
</html>