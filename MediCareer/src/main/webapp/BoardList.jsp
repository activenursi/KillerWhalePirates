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
			float: left;
		}
		
		.board_comment {
			float: left;
		}
		
		.board_recommend {
			float: right;
		}
	</style>
	
</head>

<body>
<%-- 	<%@include file ="/header.jsp" %> --%>
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
	                            <li rel="취업">취업</li>
	                            <li rel="일상">일상</li>
	                        </ul>
	                    </div>
	                    <div class="tool">
	                        <ul>
	                            <li><a href="/MediCareer/BoardWrite.jsp" class="btn btn_08"><span>질문하기</span></a></li>
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
				                    <div class="flex">
				                        <div class="lt-item">
				                            <div class="head">
				                                <div class="cate">
				                                    <span class="cate02">RN</span>
				                                </div>
				                                <div class="hash"><span>#수술</span> <span>#수술방</span> <span>#정형외과</span></div>
				                            </div>
				                            <div class="subject">
				                                <a href="#">프로필테스트입니다.</a>
				                            </div>
				                            <div class="text">
				                                <a href="#">123</a>
				                            </div>
				                        </div>
				                        <div class="rt-item">
				                            <div class="image">
				                                <a href="#">
				                                    <img src="/data/file/review/13a8a413dedf43224f8ca1af31489adb_zHFtMsNk_df2d085a165991279bb05196691d17ca1b9f4bd7.png">
				                                </a>
				                            </div>
				                        </div>
				                    </div>
				                    <div class="bottom">
				                        <div class="info">
				                            <span>2023-08-20 00:52:03</span>
				                            <span>버터</span>
				                        </div>
				                        <div class="tool">
				                            <a href="javascript:;"><img src="../resources/img/icon_latest_viewer.png"> <em>19</em></a>
				                            <a href="javascript:;"><img src="../resources/img/icon_latest_bookmark.png"> <em>0</em></a>
				                            <a href="javascript:;"><img src="../resources/img/icon_latest_comment.png"> <em>0</em></a>
				                        </div>
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
	                        <li>
			                    <div class="flex">
			                        <div class="lt-item">
			                            <div class="head">
			                                <div class="cate">
			                                    <span class="cate02">RN</span>
			                                </div>
			                                <div class="hash"><span>#수술</span> <span>#수술방</span> <span>#정형외과</span></div>
			                            </div>
			                            <div class="subject">
			                                <a href="#">프로필테스트입니다.</a>
			                            </div>
			                            <div class="text">
			                                <a href="#">123</a>
			                            </div>
			                        </div>
			                        <div class="rt-item">
			                            <div class="image">
			                                <a href="#">
			                                    <img src="/data/file/review/13a8a413dedf43224f8ca1af31489adb_zHFtMsNk_df2d085a165991279bb05196691d17ca1b9f4bd7.png">
			                                </a>
			                            </div>
			                        </div>
			                    </div>
			                    <div class="bottom">
			                        <div class="info">
			                            <span>2023-08-20 00:52:03</span>
			                            <span>버터</span>
			                        </div>
			                        <div class="tool">
			                            <a href="javascript:;"><img src="../resources/img/icon_latest_viewer.png"> <em>19</em></a>
			                            <a href="javascript:;"><img src="../resources/img/icon_latest_bookmark.png"> <em>0</em></a>
			                            <a href="javascript:;"><img src="../resources/img/icon_latest_comment.png"> <em>0</em></a>
			                        </div>
			                    </div>
			                </li>
	                    </ul>
	                </div>
	            </form>
	        </section>
	    </div>
	</div>
	<%@include file ="/footer.jsp" %>
</body>