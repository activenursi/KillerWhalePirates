<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채용공고 목록(구직자 or 기업 동일)</title>
<style type="text/css">
	body {
		background-color: rgb(248 250 252); /* 밝은 회색*/
	}
	.jopPostingList {
		border: 1px solid rgb(248 250 252);
		height: 900px;
		background-color: #FFFFFF;
		
	}
	.wrap-container{
		width:800px;
		margin: 0 auto;
		padding-top:100px;
		position: relative;
		display: block;
	}
	ul{
		width:660px;
	}
	.PostingList{
		list-style: none;
		width: 660px;
		margin: 0px;
		border-bottom: 2px solid gray;
	}
	.blind {
	  overflow: hidden;
	  position: absolute !important;
	  width: 1px;
	  height: 1px;
	  border: 0;
	  padding: 0;
	  clip: rect(0px, 0px, 0px, 0px);
	}
	.info_text {
	  position: relative;
	  display: inline-block;
	  vertical-align: top;
	  margin-left: 16px;
	  font-size: 14px;
	  line-height: 18px;
	  letter-spacing: -0.28px;
	  font-family: "NanumSquare", "나눔스퀘어", "돋움", dotum, arial, sans-serif;
	}
	.card_title {
	  font-size: 21px;
	  line-height: 27px;
	  letter-spacing: -0.42px;
	  font-weight: bold;
	  font-family: "NanumSquare", "나눔스퀘어", "돋움", dotum, arial, sans-serif;
	}
	.jobPos_logo{
		float: right;
	}
	.new_offer{
		border-bottom: 2px solid gray;
		width: 660px;
		padding-bottom: 7px;
		color:#5AAEFF;
	}
	@font-face {
    font-family: 'TheJamsil5Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
	}
	
	@font-face {
    font-family: 'KOTRAHOPE';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/KOTRAHOPE.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
	}
	.jobPos_logo {
	    font-family: 'KOTRAHOPE', sans-serif; /* 로고 느낌의 글꼴을 적용, 'YourLogoFont'는 실제로 사용하고자 하는 글꼴 이름으로 대체하세요 */
	    color: black; /* 글꼴 색상 조정, 필요에 따라 변경하세요 */
	    /* 기타 스타일 속성을 추가하여 원하는 로고 스타일을 정의할 수 있습니다 */
	}
	.PostingListLink{
	  	text-decoration: none; /* 밑줄 제거 */
    	color: inherit; /* 링크의 기본 색상 유지 */
	}
</style>
</head>
<body>
<%-- <jsp:include page="./Header7.jsp"></jsp:include> --%>
	<div class="wrap-container">
		<div class="jopPostingList">
			<ul>
				<h2 class="new_offer">새로운 알림</h2>
				<c:forEach var="jobPostingDto" items="${jobPostingList}">
				<a class="PostingListLink" href="/jobPosting/em_listOne.do?no=${jobPostingDto.no}">
				<li class="PostingList">
					<div class="jobPos_logo">
						<h2>${jobPostingDto.em_name}</h2>
					</div>
					<h3 class="card_title">[${jobPostingDto.em_name}] ${jobPostingDto.title}
					</h3>	
					<dl>
						<dt class="blind">모집 분야
						<dd class="info_text">
							"${jobPostingDto.primary_duties1}"
						</dd>
						<dt class="blind">모집 경력
						<dd class="info_text">
							"${jobPostingDto.career}"
						</dd>
						<dt class="blind">근로 조건
						<dd class="info_text">
							"${jobPostingDto.type}"
						</dd>
						<dt class="blind">모집 기간
						<dd class="info_text">
							${jobPostingDto.getFormattedCreateDate()} ~ ${jobPostingDto.application_period}
						</dd>
					</dl>
				</li>
				</a>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>