<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>이력서 미리보기</title>
<style>
#main_content {
	width: 1348px;
}

#content {
	margin-top: 70px;
	width: 700px;
	height : 900px;
	margin: 0 auto;
	margin-left: 600px;
}
.profile_img {
	font-weight: 700;
}
a {
	text-align: left;
	text-decoration: none;
	color: black;
}

.body_entire {
	margin: 0 auto;
}
.input_male {
	position: absolute;
	clip: rect(0, 0, 0, 0);
	width: 1px;
	height: 1px;
	margin: -1px;
	overflow: hidden;
	border: 1px solid;
}
.input_female{
	position: absolute;
	clip: rect(0, 0, 0, 0);
	width: 1px;
	height: 1px;
	margin: -1px;
	overflow: hidden;
	border: 1px solid;
}
.input_prev_name{
	border:none;
	padding: 10px;
	width: 600px;
}
.input_prev_email {
	border:none;
	padding: 10px;
	width: 600px;
}
.input_prev_education{
	border:none;
	padding: 10px;
	v
}
.input_prev_major{
	border:none;
	padding: 10px;
	v
}
.input_prev_certificate{
	border:none;
	padding: 10px;
	width: 600px;
}
.input_prev_career{
	border:none;
	padding: 10px;
	width: 600px;
}
.input_prev_myself{
	border:1px solid lightgray;
	padding: 10px;
	width: 600px;
	height: 150px;
	margin-bottom: 30px;
}
.img_user{
	width:200px;
	height: 100px;
}
.keyword_wrap{
	border-bottom: 1px solid gray;
}
.small_title {
	white-space: pre-wrap;
    padding: 10px;
    background-color: #f3f9fe;
    font-size: 12px;
    line-height: 1.42;
    letter-spacing: normal;
    color: #666;
    margin-top: 10px;
}
.preview_close {
	height: 35px;
    width: 120px;
    margin-bottom: 20px;
    background-color: rgb(52, 152, 219);
    border: 1px solid rgb(203 213 225);
    color: #FFFFFF;
    border-radius: 4px;
    float:right;
}
</style>
</head>
<body>
	<main id="main_content">
		<div class="body_entire">
			<div id="content">
				<form>
					<div class="profile_img">
						<h2>이력서 미리보기</h2>
						<p style="font-size: 15px; color: gray; border-bottom: 40px;">회사에게는
						이렇게 보여요.</p>
					</div>
					<div class="profile-section">
						<form class="img_modify">
							<label><img name="img_modify"class="img_user" src="../img/user1.png" alt="프로필 이미지 수정"></label>
						</form>
					</div>
					<div>
						<label for="input_name"><h3 class="keyword_wrap">이름</h3></label>
						<input class="input_prev_name" id="input_name" type="text" value="홍길동">
					</div>
					<div>
						<label for="input_email"><h3 class="keyword_wrap">이메일</h3></label>
						<p class="small_title">이메일을 작성해주세요.</p>
						<br>
						<input class="input_prev_email" id="input_name" type="text" value="nursi@naver.com">
					</div>
					<div>
						<label for="input_education"><h3 class="keyword_wrap">학력</h3></label>
						<p class="small_title">최종 학력과 경력을 작성해주세요.</p>
						<br>
						<input class="input_prev_education" id="input_education" type="text" value="인하대학교"> 
						<br>
						<input class="input_prev_major" id="input_education" type="text" value="간호학과">
					</div>
	
					<div>
						<label for="input_certificate"><h3 class="keyword_wrap">어학 / 자격증</h3></label>
						<p class="small_title">취득한 자격증을 작성해주세요.</p>
						<br>
						<input class="input_prev_certificate" id="input_certificate" type="text"
							value="취득한 자격증을 작성해주세요.">
					</div>
	
					<div>
						<label for="input_career"><h3 class="keyword_wrap">경력 / 업무경험</h3></label>
						<p class="small_title">경력사항 또는 인턴, 현장실습 등 급여를 받은 업무경험이 있다면 자유롭게 작성해보세요!</p>
						<br>
						<input class="input_prev_career" type="text" id="input_career"
							value="경력사항 또는 인턴, 현장실습 등 급여를 받은 업무경험이 있다면 자유롭게 작성해보세요!">
					</div>
	
					<div>
						<h3 class="keyword_wrap" style="margin-bottom: 8px;">자기소개</h3>
						<p class="small_title">간단한 자기소개를 작성해보세요.</p>
						<br>
						<textarea class="input_prev_myself" id="keyword_wrap" placeholder="간단한 자기소개 작성해보세요!"
							style="resize: none;">
						</textarea>
					</div>
					<div>
						<input class="preview_close" type="button" value="닫기">
					</div>
				</form>
			</div>
		</div>
	</main>
	<footer></footer>

</body>
</html>