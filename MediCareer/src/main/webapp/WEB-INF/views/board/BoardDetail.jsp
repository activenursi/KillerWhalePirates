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
 	<link rel="stylesheet" type="text/css" href="resources/css/index.css">
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
            <div class="subject">글제목출력하기</div>
            <div class="info">
                <span> 몇 일전?날짜표시</span>
                <span> 작성자 </span>
            </div>
        </div>
        
        <div class="middle">
            <div class="hash">
                <div class="tit">태그</div>
                <div class="txt"></div>
            </div>
			<script src="https://kit.fontawesome.com/6478f529f2.js" crossorigin="anonymous"> </script>
            <div class="like">
                <a href="javascript:setGood();" id="good_buttonA"><i class="ic-like-o"></i> 
					<p>
						<span id="gCnt">조회수</span>
					</p>
				</a>
            </div>
			
        </div>
        <div class="comment">

            <div class="uppr">
                <div class="total">댓글 <span id="replyCnt">1(댓글수)</span></div>

	                <div class="act"><a href="javascript:viewReply();">댓글달기</a></div>
				
            </div>
            
			<div class="answer" id="replyWrite" name="replyWrite" style="display:block">
                <div class="fhead">
                    <div class="tit">작성하기</div>
                </div>
                <div class="ftext">
					<div class="tw-p-3.5 tw-overflow-y-auto tw-max-h-[500px]">
						<textarea style="height: 120px !important;width:100%;border:solid 0.5px #fff;" placeholder="질문에 대한 답변을 남겨주세요." style="height: 120px !important;" id="wr_content" name="wr_content" class="wr_content"></textarea>
						<div id="write_error_msg" class="write_error_msg" style="color: red;"></div>
					</div>
                </div>
                <div class="fboot">                  
					<div class="con1" style="text-align:right">
						<a href="javascript:writeDb();" style="background-color: #55dfff;">댓글달기</a>
					</div>
                </div>
            </div>


            <div class="cont">
                <ul id="replyList"></ul>
            </div>

           		
        </div>
    </section>

    





</body>
</html>