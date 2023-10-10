<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>연습장</title>
<head>
<style type="text/css">
#header_wrap {
   background-color:lightgray;
   color: #fff; /* 텍스트 색상 설정 */
   padding: 20px 0;
}
.logo {
   float:left;
}
.medi-title {
   font-size: 38px;
   font-weight: 700;   
}
.menu {
   display: flex; /* 수평으로 나열하기 위해 flex 속성 적용 */
   justify-content: space-around; /* 메뉴 항목 가로 정렬 */
   align-items: center;
   margin-left: 300px;
}
.menu_wrap {
   margin: 0 15px; /* 메뉴 항목 사이 간격 설정 */
}
.sub_menu1 {
   display:flex;
   flex:2;
   list-style: none;
   font-size: 23px;
   padding: 10px;
   padding-left:40px;
}
.sub_menu2 {
   display:flex;
   flex:1;
   list-style: none;
   font-size: 23px;
}
.member_wrap, .board_wrap, .customer_wrap, .search_wrap, .login_wrap {
   text-decoration: none;
   color: black;
   font-weight: bold;
}

</style>
</head>

<body>
	<header id="header_wrap">
		<div class="inner">
			<nav class="menu">
				<div class="medi-title" style="color:blue">
				<span>MEDICAREER</span>				
				</div>
				<c:choose>
					<c:when test="${sessionScope.member.email ne null}">
						<div class="sub-menu">
							<ul class="menu" style="display:flex">
								<li><a href="./jobPosting/em_list.do">채용 공고</a></li>
								<li><a href="./board/board.do">커뮤니티</a></li>
								<li><a href="./member/myPage.do?no=${member.no}">마이페이지</a></li>
								
							</ul>
							<span style="float: right;"> ${member.name}님 <a
								style="color: white;"
								href="#" onclick="showLogoutModal()">로그아웃</a>
							</span>
						</div>
					</c:when>
					<c:otherwise>
						<div class="sub-menu">
							<ul class="menu1">
								<li><a href="#">채용 공고</a></li>
								<li><a href="#">커뮤니티</a></li>
								<li><a href="#">마이페이지</a></li>
							</ul>
							<span style="float: right;"> <a style="color: white;"
								href="./auth/login.do">로그인</a>
							</span>
						</div>
					</c:otherwise>
				</c:choose>
			</nav>
		</div>
	</header>
</body>
</html>
