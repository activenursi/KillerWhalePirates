<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>연습장</title>
<head>
<style type="text/css">
/* 메뉴 스타일링 */
#header_wrap {
	background-color:lightblue;
	color: #fff; /* 텍스트 색상 설정 */
	padding: 10px 0; /* 상하 여백 설정 */
}
.logo {
	float:left;
}
.menu {
	display: flex; /* 수평으로 나열하기 위해 flex 속성 적용 */
	justify-content: space-between; /* 메뉴 항목 가로 정렬 */
	padding-top: 8px;
}
.menu_wrap {
	margin: 0 15px; /* 메뉴 항목 사이 간격 설정 */
}
.sub_menu1 {
	display:flex;
	flex:2;
	list-style: none;
}
.sub_menu2 {
	display:flex;
/* 	justify-content:flex-end; */
	flex:1;
	list-style: none;
}
.a_wrap {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
	<header id="header_wrap">
		<div class="inner">
			<div class="logo">
				<a href="/MediCareer/index.jsp"> 
					<img src="../img/medicareer1_logo.png" style="width: 150px;" alt="메디커리어">
				</a>
			</div>
			<nav class="menu">
				<ul class="sub_menu1">
					<li class="menu_wrap">
						<a href="#" class="a_wrap">회원관리</a>
					</li>
					<li class="menu_wrap">
						<a href="#" class="a_wrap">게시판 관리</a>
					</li>
					<li class="menu_wrap">
						<a href="#" class="a_wrap">고객지원</a>
					</li>
				</ul>
				<ul class="sub_menu2">
					<li class="menu_wrap">
						<a href="#" class="a_wrap">검색</a>
					</li>
					<li class="menu_wrap">
						<a href="#" class="a_wrap">로그인</a>
					</li>
				</ul>
			</nav>
		</div>
	</header>
</body>
</html>


