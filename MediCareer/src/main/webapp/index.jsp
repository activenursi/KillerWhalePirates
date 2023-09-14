<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>당신보다 당신을 더 잘 아는 메디커리어</title>

<!-- main.css 파일을 연결 -->
<link rel="stylesheet" type="text/css" href="resources/css/index.css">

<style>

header .sub-menu ul.menu li a { color: #fff; /* 다른 페이지에서는 검은색으로 변경 */ }
header .sub-menu ul.menu li a {background-color: transparent; font-size: 16px; color: #fff; font-weight: 700; padding: 20px 16px; display: block; text-decoration: none;}

.firstBack {background-image: url('./resources/images/firstBack.png'); background-size: cover; background-position: center; height: 1000px;}
.secondBack {background-image: url('./resources/images/secondBack.png'); background-size: cover; background-position: center; height: 1000px;}
.thirdBack {background-image: url('./resources/images/thirdBack.png'); background-size: cover; background-position: center; height: 1000px;}

.bodyWrap {padding: 300px 400px;}
.mainInfo {color: #fff; font-size: 80px;font-weight: 800;}
</style>

<script type="text/javascript">

	$(".ctr_top").on('click', function() {
	    $("html, body").animate({
	        scrollTop:0
	    }, '500');
	    return false;
	})

</script>

</head>

<body>

		<%@include file ="/header.jsp" %>
		
		<div class="secondBack"> 
			<div class="bodyWrap">
				<div class="mainInfo">
					<p style="font-size: 30px;">스마트한 간호사 구인구직</p>
					<p>메디커리어</p>
				</div>
			</div>
		</div>
		<div class="firstBack"> 
			<div class="bodyWrap">
				<div class="mainInfo">
					<p style="font-size: 30px;">당신보다 당신을 더 잘 아는</p>
					<p>메디커리어</p>
				</div>
			</div>
		</div>
		<div class="thirdBack"> 
			<div class="bodyWrap">
				<div class="mainInfo">
					<p style="font-size: 30px;">무조건 써야하는</p>
					<p>메디커리어</p>
				</div>
			</div>
		</div>
		
		<%@include file ="/footer.jsp" %>
		
	
</body>
</html>