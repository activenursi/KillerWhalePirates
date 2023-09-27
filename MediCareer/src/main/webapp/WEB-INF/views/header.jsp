<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/index.css">

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

	<header>
		<div class="inner">
			<a href="./home.do" class="logo"> <img
				src="./resources/images/medicareer_logo.png" style="width: 100px;"
				alt="메디커리어">
			</a>
		</div>

		<!--        	<form action="auth/login.do" id="simpleForm" method="get">
			<input type="button"value="로그인 화면으로 이동" onclick="loginMoveFnc();">
		</form> -->
		<c:choose>
			<c:when test="${sessionScope.member.email ne null}">
				<div class="sub-menu">
					<ul class="menu">
						<li><a href="/MediCareer/careerInfo.jsp">채용 공고</a></li>
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

<!-- <script type="text/javascript">
	function loginMoveFnc(){
		var formObj = document.getElementById('simpleForm');
		
		formObj.submit();
	}
</script> -->

</html>