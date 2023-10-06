<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세</title>

	<!-- CSS 파일 연결 -->
 	<link rel="stylesheet" type="text/css" href="../resources/css/index.css">
<style>
#layerPopup{
    padding: 10px 10px;
/*    border: 3px solid #A5E9FF;*/
    position: absolute;
    /* left: 100px; */
    top: 100px;
    background: #fff;
    width: 98%;
    height: 371px;
    z-index: 99;
    margin: 1% 1%;
}

#layerPopup button{
  cursor:pointer;
}

#singoBox{
	width:100%;

}

#singoCon{
	margin-top:10px;
	padding : 10px;
	width:100%;
	border:solid 3px #A5E9FF;
	height:250px;
}



</style>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>

<body>

<div id="community">
    <section id="header">
        <div class="heading">
            <div class="back"><a href="#">뒤로 돌아가기</a></div>
            <div class="title">커뮤니티</div>
        </div>
    </section>
    <section id="headerSpace"></section>
    <section id="bo_v" class="viewskin">
        <div class="header">
	         <c:if test="${not empty category}">
			    <div class="cate">
			        <c:choose>
			            <c:when test="${category == '일상'}">
			                <span class="cate01">일상</span>
			            </c:when>
			            <c:when test="${category == '취업'}">
			                <span class="cate02">취업</span>
			            </c:when>
			            <c:when test="${category == '해외'}">
			                <span class="cate03">해외</span>
			            </c:when>			            
			        </c:choose>
			    </div>
			</c:if>          
        </div>
        <div class="upper">
            <div class="subject">${boardDto.title}</div>
            <div class="info">
                <span id="date"></span>
                <span>${boardDto.writer}</span>
            </div>
            <div class="content">
            	<span>${boardDto.content}</span>
            </div>
        </div>
        
        <div class="middle">
            <div class="hash">
                <div class="tit">태그</div>
                <div class="txt"></div>
            </div>
		
            <div class="like">
                <a href="javascript:setGood();" id="good_buttonA"><i class="ic-like-o"></i> 
				
						<span id="gCnt">조회수</span>
				
				</a>
            </div>
			
        </div>
        <div class="comment">
				
            <div class="uppr">
                <div class="total">댓글 <span id="replyCnt">1(댓글수)</span></div>
				<div class="replyList">
					<ul>
					
					</ul>
				</div>
	              <div class="act"><a href="#" id="commentLink">댓글달기</a></div>
				
            </div>
            
			<div class="answer" id="replyWrite" name="replyWrite">
                <div class="fhead">
                    <div class="tit">작성하기</div>
                </div>
                <div class="ftext">
					<div class="tw-p-3.5 tw-overflow-y-auto tw-max-h-[500px]">
						<textarea style="height: 120px !important;width:100%;border:solid 0.5px #fff;" placeholder="댓글을 남겨주세요." style="height: 120px !important;" id="wr_content" name="wr_content" class="wr_content"></textarea>
						<div id="write_error_msg" class="write_error_msg" style="color: red;"></div>
					</div>
                </div>
                <div class="fboot">                  
					<div class="con1" style="text-align:right">
						<a href="javascript:writeDb();" style="background-color: #55dfff;">작성하기</a>
					</div>
                </div>
            </div>


            <div class="cont">
                <ul id="replyList"></ul>
            </div>

           		
        </div>
    </section>
</div>
</body>

<script type="text/javascript">
	window.onload = function() {
	    var currentDate = new Date(); // 현재 날짜와 시간을 가져옵니다.
	    var writeDate = new Date(${boardDto.write_date});
	    // 두 날짜 간의 차이를 계산
	    var timeDifference = currentDate - writeDate;
	    alert(timeDifference);
	    // 밀리초를 일로 변환 (1일 = 24시간 * 60분 * 60초 * 1000밀리초)
	    var daysAgo = Math.floor(timeDifference / (24 * 60 * 60 * 1000));
	    var daysObj = document.getElementsById("date");
	    daysObj.innerHTML = daysAgo + '일 전'; 
	}

	
</script>
</html>