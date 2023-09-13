<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티</title>

 	<!-- CSS 파일 연결 -->
 	<link rel="stylesheet" type="text/css" href="resources/css/index.css">
    <!-- JavaScript 파일 연결 -->
    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    <!-- JavaScript 파일 연결 -->
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
	<!-- swiper CSS CDN 연결 -->
	<link
		rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css"
	/>
	<!-- swiper Javascript CDN 연결 -->
	<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
	
	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" 
		class="bi bi-pencil" viewBox="0 0 16 16">
		<path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 
		1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 
		4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 
		1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 
		3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 
		1-.468-.325z"/>
	</svg>
	

	<!-- Demo styles -->
	<style>
		html,
		body {
			position: relative;
			height: 100%;
		}
		
		body {
			font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
			font-size: 14px;
			margin: 0px;
			padding: 0px;
		}
		
		.swiper {
			width: 100%;
			height: 100%;
		}
		
		.swiper-slide {
			text-align: center;
			font-size: 18px;
			background: #fff;
			display: flex;
			justify-content: center;
			align-items: center;
		}
		
		.swiper-slide img {
			display: block;
			width: 100%;
			height: 100%;
			object-fit: cover;
		}
		
		.board_info {
			text-align: left;
			font-size: 12px;
			color: gray;
		}
		
		.board_title {
			text-align: left;
			font-size: 25px;
			font-weight: bold;
		}
		
		.board_content {
			text-align: left;
			font-size: 14px;
		}
		
		.board_state {
			font-size: 12px;
			color: gray;
		}
		
		.board_answer {
			text-align: left;
		}
		
		.board_comment {
			text-align: left;
		}
		
		.board_recommend {
			text-align: right;
		}
	</style>
	
</head>

<body>
	<%@include file ="/header.jsp" %>
	<div id="community" >
	    <div class="wrap">
	        <section class="listskin ">
	         <form name="fboardlist" id="fboardlist" action="#" onsubmit="return fboardlist_submit(this);" method="post">
	                <input type="hidden" name="bo_table" value="<?php echo $bo_table ?>">
	                <input type="hidden" name="sfl" value="#">
	                <input type="hidden" name="stx" value="#">
	                <input type="hidden" name="spt" value="#">
	                <input type="hidden" name="sst" value="#">
	                <input type="hidden" name="sod" value="#">
	                <input type="hidden" name="page" value="#">
	                <input type="hidden" name="sw" value="#">
	                <div class="header">
	                    <div class="tabs">
	                        <ul>
	                            <li class="active" rel="전체">전체</li>
	                            <li rel="SN">SN</li>
	                            <li rel="RN">RN</li>
	                            <li rel="해외">해외</li>
	                            <li rel="탈출">탈출</li>
	                        </ul>
	                    </div>
	                    <div class="tool">
	                        <ul>
	                            <li><a href="/MediCareer/write.jsp" class="btn btn_08"><span>질문하기</span></a></li>
	                            <li><a href="#" class="btn btn_01"><span>답변하기</span></a></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="tit">Today Best</div>
					<!-- Swiper -->
					<div class="swiper mySwiper">
						<div class="swiper-wrapper">
						    <div class="swiper-slide">
						    	<a>
						    		<div>
							    		<p class="board_info">
											<span>n 시간 전</span>
								    		<span>&nbsp;·&nbsp;</span>
								    		<span>(닉네임)님의 질문</span>
							    		</p>
						    		</div>
						    		<p class="board_title">
						    			<span>제목이 들어가는 부분</span>
						    		</p>
						    		<p class="board_content">이 곳에는 내용이 들어가는데 두줄 이상이면 자르고 ...처리</p>
						    		<div class="board_state">
						    			<span class="board_answer">
						    				답변
						    				&nbsp;
						    				<span>n</span>
						    			</span>
						    			<span class="board_comment">
						    				댓글
						    				&nbsp;
						    				<span>n</span>
						    			</span>
						    			<span class="board_recommend">
						    				추천
						    				&nbsp;
						    				<span>n</span>
						    			</span>
						    		</div>
						    	</a>
						    </div>
						    <div class="swiper-slide">Slide 2</div>
						    <div class="swiper-slide">Slide 3</div>
						    <div class="swiper-slide">Slide 4</div>
						    <div class="swiper-slide">Slide 5</div>
						    <div class="swiper-slide">Slide 6</div>
						    <div class="swiper-slide">Slide 7</div>
						    <div class="swiper-slide">Slide 8</div>
						    <div class="swiper-slide">Slide 9</div>
						    <div class="swiper-slide">Slide 10</div>
					  	</div>
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
					</div>
					
					<!-- Swiper JS -->
					<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
					
					<!-- Initialize Swiper -->
					<script>
						var swiper = new Swiper(".mySwiper", {
							navigation: {
								nextEl: ".swiper-button-next",
								prevEl: ".swiper-button-prev",
							},
						});
					</script>
	                <div class="middle">
	                    <div class="onlyme">
	                        <label>
	                            <input type="checkbox"><p>내 질문만 보기</p>
	                        </label>
	                    </div>
	                </div>
	                <div class="list">
	                    <ul id="newList" class="paging_list">
	                        
	                    </ul>
	                </div>
	            </form>
	        </section>
	    </div>
	</div>
	<%@include file ="/footer.jsp" %>
</body>