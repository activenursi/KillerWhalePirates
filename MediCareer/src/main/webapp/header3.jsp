<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header3 랜딩 페이징 외 헤더</title>

<link rel="stylesheet" type="text/css" href="./resources/css/index2.css">
<style>
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
header .sub-menu {
	margin-right: 150px;
}
#header_wrap {
	color: #fff; /* 텍스트 색상 설정 */
	padding: 20px 0;
}
.medi-title {
	font-size: 38px;
	font-weight: 700;
	float:left;	
}
.menu {
	display: flex; /* 수평으로 나열하기 위해 flex 속성 적용 */
	justify-content: center; /* 메뉴 항목 가로 정렬 */
	align-items: center;
	margin-left: 300px;
	float:left;
}
.menu_wrap {
	margin: 0 15px; /* 메뉴 항목 사이 간격 설정 */
}
.sub-menu {
	display: flex;
}
.sub_menu1 {
	display:flex;
	list-style: none;
	font-size: 20px;
	padding-right:500px;
}
.sub_menu2 {
	display:flex;
	flex:1;
	list-style: none;
	font-size: 20px;
	margin-left: 100px;
}
.sub_menu3 {
	display:flex;
	list-style: none;
	font-size: 20px;
	padding-right: 600px;
}
.sub-menuWrap1 {
	display:flex;
	flex:1;
	list-style: none;
	font-size: 20px;
	margin-left: 100px;
}
.sub-menuWrap2 {
	display:flex;
	flex:1;
	list-style: none;
	font-size: 20px;
	margin-left: 100px;
}
.member_wrap, .board_wrap, .customer_wrap, .search_wrap, .login_wrap {
	text-decoration: none;
	color: #000000;
	font-weight: bold;
}
</style>

<script type="text/javascript">
	// 해당 a 태그들을 클릭했을 때의 동작
	document.addEventListener('DOMContentLoaded', function() {
		var menuLinks = document.querySelectorAll('.menu1 a');

		menuLinks.forEach(function(link) {
			link.addEventListener('click', function(event) {
				// 이벤트의 기본 동작을 중단
				event.preventDefault();

				alert('로그인 후 이용해주세요.');
				
				
				window.location.href = './auth/login.do';

			});
		});
	});
</script>
</head>
<body>
	<header id="header_wrap">
		<div class="inner_wrap">
			<nav class="menu">
				<h2 class="medi-title" style="color:blue">MEDI<span style="color:gray">:</span><span style="color:#FF0064">CAREER</span></h2>
                  <div class="sub-menu">
			<c:choose>
               <c:when test="${sessionScope.member.email ne null}">
                     <ul class="sub_menu1">
                        <li style="margin-right:40px"><a href="./jobPosting/em_list.do">채용공고</a></li>
                        <li style="margin-right:40px"><a href="./board/board.do">커뮤니티</a></li>
                        <li style="margin-right:40px"><a href="./member/myPage.do?no=${member.no}">마이페이지</a></li>
                        
                     </ul>
                     <span class="sub-menuWrap2"style="float: right;"> ${member.name}님 <a
                        style="color: #000000;"
                        href="#" onclick="showLogoutModal()">로그아웃</a>
                     </span>
               </c:when>
               <c:otherwise>
                     <ul class="sub_menu3">
                        <li style="margin-right:40px"><a href="#">채용공고</a></li>
                        <li style="margin-right:40px"><a href="#">커뮤니티</a></li>
                        <li style="margin-right:40px"><a href="#">마이페이지</a></li>
                     </ul>
                     <span class="sub-menuWrap1" style="float: right;"> <a style="color:#000000;" href="./auth/login.do">로그인</a>
                     </span>
               </c:otherwise>
            </c:choose>
                    </div>
<!-- 				
<ul class="sub_menu1"> -->
<!-- 					<li class="menu_wrap"> -->
<!-- 						<a href="#" class="member_wrap">채용공고</a> -->
<!-- 					</li> -->
<!-- 					<li class="menu_wrap"> -->
<!-- 						<a href="#" class="board_wrap">커뮤니티</a> -->
<!-- 					</li> -->
<!-- 					<li class="menu_wrap"> -->
<!-- 						<a href="#" class="customer_wrap">마이페이지</a> -->
<!-- 					</li> -->
<!-- 				</ul> -->
<!-- 				<ul class="sub_menu2"> -->
<!-- 					<li class="menu_wrap"> -->
<!-- 						<a href="#" class="login_wrap">로그인</a> -->
<!-- 					</li> -->
<!-- 				</ul> -->
			</nav>
		</div>
	</header>
	<div id="logoutModal" class="modal">
        <div class="modal-content">
          <p>로그아웃 하시겠습니까?</p>
          <button onclick="confirmLogout()">확인</button>
          <button onclick="cancelLogout()">취소</button>
        </div>
   </div>
</body>
	<script type="text/javascript">
		var modal = document.getElementById('logoutModal');
		function showLogoutModal() {
	      
	    	modal.style.display = 'block';
	    }
		function confirmLogout() {
	        // 로그아웃 처리를 여기에 추가 (예: 서버로 로그아웃 요청 등)
	        // ...
			location.href = '<%=request.getContextPath()%>/auth/logout.do';

			document.getElementById('logoutModal').style.display = 'none';
	    }

	    function cancelLogout() {
	        // 모달 창 닫기
	    	 modal.style.display = 'none';
	    }
	</script>

</html>