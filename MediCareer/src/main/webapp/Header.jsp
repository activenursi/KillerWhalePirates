<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* common */
 body {
	color: #333;
	font-size: 16px;
	font-weight: 400;
	line-height: 1.4;
	font-family: 'pretendard', sans-serif;
	height: 3000px;
}

a {
	text-decoration: none;
}

/* header */

header {
	width: 100%;
	background-color: #FAF6F1;
	border-radius: 1px solid #c8c8c8;
	position: fixed;
	top: 0;
	z-index: 9;
}

.inner {
	width: 1100px;
	margin: 0 auto;
	position: relative;
}

header>.inner {
	height: 80px;
}

header .logo {
	width: 100px;
	height: 100px;
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	margin: auto;
}

/*
header .sub-menu {
	position: absolute;
	top: 50%;
	right: 0;
	display: flex;
	transform: translate(0, -50%)
} */


header .sub-menu ul.menu {
	display: flex;
	float:right;
}

header .sub-menu ul.menu li {
	position: relative;
}

header .sub-menu ul.menu:hover li {
	background-color: #A5E9FF;
	color: #fff;
	border-radius: 30px;
}

header .sub-menu ul.menu li::before {
	content: "";
	width: 1px;
	height: 12px;
	background-color: #e5e5e5;
	position: absolute;
	top: 0;
	bottom: 0;
	margin: auto;
}

header .sub-menu ul.menu li:first-child::before {
	display: none;
}

header .sub-menu ul.menu li a {
	background-color: #FAF6F1;
	font-size: 16px;
	font-weight: 700;
	padding: 20px 16px;
	display: block;
	color: #656565;
	text-decoration: none;
}

header .sub-menu ul.menu li a:hover {
	background-color: #A5E9FF;
	color: #fff;
	border-radius: 6px;
}
*/
/* COMMUNITY */
</style>
</head>
<body>

	<header>
		<div id="inner">
			<a href="/" class="logo"> <img src="" style="width: 100px;"
				alt="메디커리어">
			</a>
			<div class="sub-menu">
				<ul>
					<li><a href="/careerInfo.html">채용 공고</a></li>
					<li><a href="/careerInfo.html">커뮤니티</a></li>
					<li><a href="/careerInfo.html">마이페이지</a></li>
				</ul>
			</div>
		</div>
	</header>
	<section class="visual">
		<div class="inner"></div>
	</section>
	<footer>
		<div class="footerClass">
			<p class="footerInfo">저희 조는 조남용,손진원,조대형,이승준입니다.</p>
		</div>
	</footer>

</body>
</html>