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

	<style>

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
                <div class="slider bestslider">
                    <div class="tit">Today Best</div>
                    <div class="con">
                        <!--id="bestList"-->
                        <ul class="swiper-wrapper" id="bestList">


                            
                        </ul>
                        <div class="ctl">
                            <div class="swiper-arrow-prev"><i>이전 슬라이드</i></div>
                            <div class="swiper-arrow-next"><i>다음 슬라이드</i></div>
                        </div>
                        <script>
                        $(function(){
                            var swiper = new Swiper(".bestslider .con", {
                                slidesPerView: 2,
                                spaceBetween: 10,
                                navigation: {
                                    prevEl: '.bestslider .swiper-arrow-prev',
                                    nextEl: '.bestslider .swiper-arrow-next',
                                },
                                breakpoints:{
                                    1:{
                                        slidesPerView: 1,
                                    },
                                    769:{
                                        slidesPerView: 2,
                                    }
                                }
                            });
                        });
                        </script>
                    </div>
                </div>
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