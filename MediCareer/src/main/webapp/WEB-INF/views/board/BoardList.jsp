<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티</title>

 	<!-- CSS 파일 연결 -->
 	<link rel="stylesheet" type="text/css" href="../resources/css/index.css">
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
        <section id="header">
            <div class="heading">
                <div class="back"><a href="javascript:window.history.back()">뒤로 돌아가기</a></div>
                <div class="title">선배 QnA</div>
            </div>
        </section>
        <section id="headerSpace"></section>
		
 <section class="listskin ">


		
        <div class="control">
            <a href="#" class="ctr_top"><i></i> <p class="skip">상단으로 이동</p></a>
<!--             <?php if ($write_href) { ?><a href=<?php echo $write_href ?> class="ctr_write"><i></i> <p class="skip">글쓰기</p></a><?php } ?> -->
          
        </div>
        

            <form name="fboardlist" id="fboardlist" action="<?php echo G5_BBS_URL; ?>/board_list_update.php" onsubmit="return fboardlist_submit(this);" method="post">
                <input type="hidden" name="cm_no" value="#">
                <input type="hidden" name="writer" value="#">
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
                            <li><a href="./add.do" class="btn btn_08"><span>글쓰기</span></a></li>
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
                        
                    </div>
                </div>
                <div class="middle">
                    <div class="onlyme">
                        <label>
                            <input type="checkbox"><p>내 질문만 보기</p>
                        </label>
                    </div>
                    
                    <div class="tool mo-view">
                        <ul>
                            <li><a href="" class="btn btn_08"><span>글쓰기</span></a></li>
                            <li><a href="#" class="btn btn_01"><span>답변하기</span></a></li>
                        </ul>
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

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function () {
	    var swiper = new Swiper(".bestslider .con", {
	        slidesPerView: 2,
	        spaceBetween: 10,
	        navigation: {
	            prevEl: '.bestslider .swiper-arrow-prev',
	            nextEl: '.bestslider .swiper-arrow-next',
	        },
	        breakpoints: {
	            1: {
	                slidesPerView: 1,
	            },
	            769: {
	                slidesPerView: 2,
	            }
	        }
	    });
	});
	
    $(document).ready(function() {
    
        getBestList('전체');
        getNewList('전체');
    });
	
    function getBestList(type) {  //최신순으로
        $.ajax({
        url:"../community/bestlist.do",
        method: "GET",
        data:{
        	category: type
        },
        success: function(data) {
           
            var BestListObj = document.getElementById('bestList');
            var currentDate = new Date();
            
            
            for (var i = 0; i < data.length; i++) {
            	var writeDate = new Date(data[i].write_date);
            	// 두 날짜 간의 차이를 계산
            	var timeDifference = currentDate - writeDate;
            	// 밀리초를 일로 변환 (1일 = 24시간 * 60분 * 60초 * 1000밀리초)
            	var daysAgo = Math.floor(timeDifference / (24 * 60 * 60 * 1000));
            	
                var html = '<li class="swiper-slide" onclick="location.href=\'\';">';
                html += '<div class="flex">';
                html += '<div class="lt-item">';
                html += '<div class="head">';
                html += '<div class="cate">';
                
                // 조건에 따라 카테고리를 설정
                if (data[i].category == '전체') {
                    html += '<span class="cate01">전체</span>';
                } else if (data[i].category == '일상') {
                    html += '<span class="cate02">일상</span>';
                } else if (data[i].category == '취업') {
                    html += '<span class="cate03">취업</span>';
               	}	else if (data[i].category == '해외') {
                   html += '<span class="cate03">해외</span>';
                }
                
                html += '</div>';
                html += '<div class="hash">';
                html += '<span>#수술</span> <span>#수술방</span> <span>#정형외과</span>';
                html += '</div>';
                html += '</div>';
                html += '<div class="subject">';
                html += '<a href="#">' + data[i].title + '</a>';
                html += '</div>';
                html += '<div class="text">';
                html += '<a href="#">' + data[i].content + '</a>';
                html += '</div>';
                html += '</div>';
                html += '</div>';
                html += '<div class="bottom">';
                html += '<div class="info">';
                html += '<span>' + daysAgo + '일 전|</span>';
                html += '<span>' + data[i].writer + '</span>';
                html += '</div>';
                html += '<div class="tool">';
                html += '<a href="javascript:;"><img src="../resources/img/icon_latest_viewer.png"> <em>' + data[i].view_count + '</em></a>';
                html += '<a href="javascript:;"><img src="../resources/img/icon_latest_bookmark.png"> <em>' + data[i].recommend + '</em></a>';
                html += '<a href="javascript:;"><img src="../resources/img/icon_latest_comment.png"> <em>1</em></a>';
                html += '</div>';
                html += '</div>';
                html += '</li>';
                
                // ul 요소에 HTML 코드 추가
                BestListObj.innerHTML += html;
                
                
            }
        },
        error: function(xhr, status, error) {
            // 오류 처리
            alert("오류남");
        }
       
        })
    }
    
    function getNewList(type) {  //최신순으로
        $.ajax({
        url:"../community/newlist.do",
        method: "GET",
        data:{
        	category: type
        },
        success: function(data) {
           
            var NewListObj = document.getElementById('newList');
            var currentDate = new Date();
            
            if (data.length === 0) {
                // data가 비어있을 경우 검색 결과가 없는 메시지를 추가
                var html = '<div class="bot">';
                html += '검색 결과가 없습니다.';
                html += '</div>';
                
             // ul 요소에 HTML 코드 추가
                NewListObj.innerHTML += html;
            } else {
	            for (var i = 0; i < data.length; i++) {
	            	var writeDate = new Date(data[i].write_date);
	            	// 두 날짜 간의 차이를 계산
	            	var timeDifference = currentDate - writeDate;
	            	// 밀리초를 일로 변환 (1일 = 24시간 * 60분 * 60초 * 1000밀리초)
	            	var daysAgo = Math.floor(timeDifference / (24 * 60 * 60 * 1000));
	            	
	            	var html = '<li onclick="location.href=글경로">';
	            	html += '<div class="flex">';
	            	html += '<div class="lt-item">';
	            	html += '<div class="head">';
	            	html += '<div class="cate">';
	            		if (data[i].category == '전체') {
	            	        html += '<span class="cate01">전체</span>';
	            	    } else if (data[i].category == '일상') {
	            	        html += '<span class="cate02">일상</span>';
	            	    } else if (data[i].category == '취업') {
	            	        html += '<span class="cate03">취업</span>';
	            	    }
	
	            	html += '</div>';
	            	html += '<div class="hash"><span>#수술</span> <span>#수술방</span> <span>#정형외과</span></div>';
	            	html += '</div>';
	            	html += '<div class="subject">';
	            	html += '<a href="#">' + data[i].title + '</a>';
	            	html += '</div>';
	            	html += '<div class="text">';
	            	html += '<a href="#">' + data[i].content + '</a>';
	            	html += '</div>';
	            	html += '</div>';
	            	html += '<div class="rt-item"></div>';
	            	html += '</div>';
	            	html += '<div class="bottom">';
	            	html += '<div class="info">';
	            	html += '<span>' + daysAgo + '일 전|</span>';
			            	if(data[i].writer == 'on'){
			            		html+= '<span>익명</span>';
			            	}else{
			            		html+= '<span>'+data[i].writer+'</span>';
			            	}
	            	html += '</div>';
	            	html += '<div class="tool">';
	            	html += '<a href="javascript:;"><img src="../resources/img/icon_latest_viewer.png">';
	            	html +=	'<em>' + data[i].view_count + '</em></a>';
	            	html += '<a href="javascript:;"><img src="../resources/img/icon_latest_bookmark.png">';
	            	html +=	'<em>' + data[i].recommend + '</em></a>';
	            	html += '<a href="javascript:;"><img src="../resources/img/icon_latest_comment.png"><em><span id="replyCnt">1</span></em></a>';
	            	html += '</div>';
	            	html += '</div>';
	            	html += '</li>';
	            	// ul 요소에 HTML 코드 추가
	                NewListObj.innerHTML += html;
	            }//else 안에 for문종료    
        	}//else 종료
        },
        error: function(xhr, status, error) {
            // 오류 처리
            alert("오류남");
        }
       
        })
    }
      	
</script>