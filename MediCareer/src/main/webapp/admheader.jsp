<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/index.css">
</head>
<body>

	<header>
       <div class="inner">
           <a href="/MediCareer/index.jsp" class="logo">
               <img src="./resources/images/medicareer_logo.png" style="width: 100px;" alt="메디커리어">
           </a>
           <div class="sub-menu">
               <ul class="menu">
                   <li>
                       <a href="/MediCareer/careerInfo.jsp">채용 공고</a>
                   </li>
                   <li>
                       <a href="/MediCareer/list.jsp">커뮤니티</a>
                   </li>
                   <li>
                   	   <a href="/MediCareer/myPage.jsp">마이페이지</a>
                   </li>
                   <li>
                   		<a href="/auth/login.do">로그인</a>
                   </li>
               </ul>
           </div>
       </div>
       
       
        	<form action="auth/login.do" id="simpleForm" method="get">
			<input type="button"value="로그인 화면으로 이동" onclick="loginMoveFnc();">
		</form> 
       
    </header>

</body>

<!-- <script type="text/javascript">
	function loginMoveFnc(){
		var formObj = document.getElementById('simpleForm');
		
		formObj.submit();
	}
</script> -->

</html>