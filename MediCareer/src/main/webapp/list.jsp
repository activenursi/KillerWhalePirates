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

<div id="community" style="display:none">
    <section id="header">
        <div class="heading">
            <div class="back"><a href="javascript:window.history.back()">뒤로 돌아가기</a></div>
            <div class="title">선배 QnA</div>
        </div>
    </section>
    <section id="headerSpace"></section>
    <section class="community">
        
        <div class="lt-item">
            <form name="fboardlist" id="fboardlist" action="<?php echo G5_BBS_URL; ?>/board_list_update.php" onsubmit="return fboardlist_submit(this);" method="post">
            <input type="hidden" name="bo_table" value="<?php echo $bo_table ?>">
            <input type="hidden" name="sfl" value="<?php echo $sfl ?>">
            <input type="hidden" name="stx" value="<?php echo $stx ?>">
            <input type="hidden" name="spt" value="<?php echo $spt ?>">
            <input type="hidden" name="sst" value="<?php echo $sst ?>">
            <input type="hidden" name="sod" value="<?php echo $sod ?>">
            <input type="hidden" name="page" value="<?php echo $page ?>">
            <input type="hidden" name="sw" value="">


            <?php if ($rss_href || $write_href) { ?>
                <ul class="<?php echo isset($view) ? 'view_is_list btn_top' : 'btn_top top btn_bo_user';?>">
                <?php if ($admin_href) { ?><li><a href="<?php echo $admin_href ?>" class="btn_admin btn" title="관리자"><i class="fa fa-cog fa-spin fa-fw"></i><span class="sound_only">관리자</span></a></li><?php } ?>
                <?php if ($rss_href) { ?><li><a href="<?php echo $rss_href ?>" class="btn_b03 btn" title="RSS"><i class="fa fa-rss" aria-hidden="true"></i><span class="sound_only">RSS</span></a></li><?php } ?>
                <?php if ($is_admin == 'super' || $is_auth) {  ?>
                <li>
                    <button type="button" class="btn_more_opt btn_b03 btn is_list_btn" title="게시판 리스트 옵션"><i class="fa fa-ellipsis-v" aria-hidden="true"></i><span class="sound_only">게시판 리스트 옵션</span></button>
                    <?php if ($is_checkbox) { ?>
                    <ul class="more_opt is_list_btn">
                        <li><button type="submit" name="btn_submit" value="선택삭제" onclick="document.pressed=this.value"><i class="fa fa-trash-o" aria-hidden="true"></i> 선택삭제</button></li>
                        <li><button type="submit" name="btn_submit" value="선택복사" onclick="document.pressed=this.value"><i class="fa fa-files-o" aria-hidden="true"></i> 선택복사</button></li>
                        <li><button type="submit" name="btn_submit" value="선택이동" onclick="document.pressed=this.value"><i class="fa fa-arrows" aria-hidden="true"></i> 선택이동</button></li>
                    </ul>
                    <?php } ?>
                </li>
                <?php } ?>
                </ul>
            <?php } ?>

            <?php //if ($is_category) { ?>
<!--                 <nav id="bo_cate" class="category categorySlider" style="display:block"> -->
<!--                     <ul class="swiper-wrapper"> -->
<!--                         <?php echo $category_option ?> -->
<!--                     </ul> -->
<!--                 </nav> -->
            <?php //} ?>

            <ul class="tabs" style="display:block;margin-bottom:20px;">
            <?php

            ?>
                <li class="active" rel="전체">전체</li>
                <li rel="SN">SN</li>
                <li rel="RN">RN</li>
                <li rel="해외">해외</li>
				<li rel="탈임상">탈임상</li>
            </ul>

            <div class="tab_container" style="display:none">

              <!-- #tab1 -->
              <div id="tab1" class="tab_content">
              <nav id="bo_cate" class="category categorySlider" style="">
                    <ul>
                        <?php echo $category_option1 ?>
                    </ul>
                </nav>
              </div>
              <!-- #tab1 -->

              <!-- #tab2 -->
              <div id="tab2" class="tab_content">
              <nav id="bo_cate" class="category categorySlider" style="">
                    <ul>
                        <?php echo $category_option2 ?>
                    </ul>
                </nav>
              </div>
              <!-- #tab2 -->

            </div>
            <!-- .tab_container -->

    

	<%@include file ="/footer.jsp" %>
	
</body>
<script>
	$(document).ready(function(){
	    var swiper = new Swiper(".categorySlider", {
	        slidesPerView: "auto",
	        spaceBetween: 10,
	        freeMode: true,
	        centeredSlides: true,
	    });
	})
	</script>
	
	<script>
	$(function () {
	
	$(".tab_content").hide();
	
	<?php if($tabCon=="1"){ ?>
	$(".tab_content:first").show();
	<?php }else{ ?>
	$(".tab_content:last").show();
	<?php } ?>
	
	$("div.tabs li").click(function () {
	
	$("div.tabs li").removeClass("active");//.css("color", "#555");
	$(this).addClass("active");//.css("color", "#fff");
	$(".tab_content").hide()
	var activeTab = $(this).attr("rel");
	$("#" + activeTab).fadeIn()
	
	getBestList(activeTab);
	getNewList(activeTab);
	
	});
	});
</script>

