<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>이력서 작성</title>
<style>
#main_content {
	width: 1348px;
}
#content{
	margin-left:600px;
	margin-top:70px;
	width: 1000px;
	align-items: center;
	
}
.profile_img{
	font-weight: 700;
}
.img_modify{
	margin-left: 80px;
}
a{
	text-align: left;
	text-decoration: none;
	color:black;
}
.body_entire{
	margin:0 auto;
}
.input_name {
	width: 200px;
	height: 30px;
}

.input_email {
	width: 200px;
	height: 30px;
}

.input_education {
	width: 200px;
	height: 30px;
}

.input_major {
	width: 200px;
	height: 30px;
}

.input_certificate {
	width: 430px;
	height: 30px;
}

.input_career {
	width: 430px;
	height: 30px;
}

.input_meno {
	width: 200px;
	height: 30px;
	
}
.input_date {
	width: 200px;
	height: 30px;
}
.input_male{
    position: absolute;
    clip: rect(0 0 0 0);
    width: 1px;
    height: 1px;
    margin: -1px;
    overflow: hidden;
    border:1px solid;
}
</style>
</head>
<body>
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
						<label> <img alt="" src="" alt="프로필 이미지 수정"> 이미지 <input
							type="button" value="바꾸기"> <input type="button"
							value="삭제하기">
						</label>
					</form>
				</div>
				<div>
					<h3 style="margin-bottom:8px;">이름</h3>
					<input class="input_name" type="text" placeholder="이름을 입력해주세요.">
				</div>

				<div>
					<h3 style="margin-bottom:8px;">이메일</h3>
					<input class="input_email" type="text" placeholder="이메일을 입력해주세요.">
				</div>
				<div>
					<h3 style="margin-bottom:8px;">생년월일</h3>
					<input class="input_date" type="text"
						placeholder="생년월일 8자리를 입력해주세요."> 
						<span>
						<input class="input_male" type="radio" target="_blank;">남자 
						<input class="input_female" type="radio">여자
					</span>
				</div>
				<div>
					<h3 style="margin-bottom:8px;">
						학력&nbsp;&nbsp;&nbsp; <span style="font-size: 15px; color: red;">필수</span>
					</h3>

					<input class="input_education" type="text"
						placeholder="학력을 입력해주세요."> <input class="input_major"
						type="text" placeholder="전공을 입력해주세요.">
				</div>

				<div>
					<h3 style="margin-bottom:8px;">어학 / 자격증</h3>
					<input class="input_certificate" type="text"
						placeholder="취득한 자격증을 입력해주세요.">
				</div>

				<div>
					<h3 style="margin-bottom:8px;">경력 / 업무경험</h3>
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
					<h3 style="margin-bottom:8px;">경력 / 업무경험</h3>
					<input class="input_preview" type="button" value="미리보기">
				</div>
			</div>
		</div>
	</main>
	<footer></footer>

</body>
</html>