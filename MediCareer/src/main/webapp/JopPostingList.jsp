<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	.PostionList{
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
</style>
</head>
<body>
<%-- <jsp:include page="./Header7.jsp"></jsp:include> --%>
	<div class="wrap-container">
		<div class="jopPostingList">
			<ul>
				<h2 class="new_offer">새로운 알림</h2>
				<li class="PostionList">
					<div class="jobPos_logo">
						<h2>MEDI<span style="color:gray">:</span><span style="color:darkblue">CAREER</span></h2>
					</div>
					<h3 class="card_title">[MediCareer] Nursing Assistant Position(테스트)
					</h3>	
					<dl>
						<dt class="blind">모집 분야
						<dd class="info_text">
							"간호조무사"
						</dd>
						<dt class="blind">모집 경력
						<dd class="info_text">
							"경력"
						</dd>
						<dt class="blind">근로 조건
						<dd class="info_text">
							"정규"
						</dd>
						<dt class="blind">모집 기간
						<dd class="info_text">
							"23.09.08 ~ 23.10.11"
						</dd>
					</dl>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>