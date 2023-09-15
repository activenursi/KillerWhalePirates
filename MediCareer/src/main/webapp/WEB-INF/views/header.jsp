<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/index.css">

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
						<li><a href="/MediCareer/list.jsp">커뮤니티</a></li>
						<li><a href="/MediCareer/myPage.jsp">마이페이지</a></li>
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
	
		<div id="logoutModal" style="display: none;">
		   	<jsp:include page="auth/Logout.jsp" />
		</div>
</body>
	<script type="text/javascript">
		var modal = document.getElementById('logoutModal');
		function showLogoutModal() {
	      
	    	modal.style.display = 'block';
	    }
	</script>

<!-- <script type="text/javascript">
	function loginMoveFnc(){
		var formObj = document.getElementById('simpleForm');
		
		formObj.submit();
	}
</script> -->

</html>