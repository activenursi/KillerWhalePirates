<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 글쓰기</title>

	<!-- CSS 파일 연결 -->
 	<link rel="stylesheet" type="text/css" href="../resources/css/index.css">
    <!-- JavaScript 파일 연결 -->
    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    <!-- JavaScript 파일 연결 -->
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

</head>

<body>

<%-- <%@include file ="/header.jsp" %> --%>

<div id="community">
    <section class="writeskin" id="bo_w">
        <div class="wrap">
            <form action="./addCtr.do" onsubmit="return fwrite_submit(this);" method="post" enctype="multipart/form-data" >
                <input type="hidden" name="cm_no" value="1">
                <input type="hidden" name="writer" value="홍길동">
                <div class="flex">
                    <div class="lt-item">
                        <div class="form">
                           
                            <dl>
                                <dt>토픽 <p class="error" id="cateError">! 토픽을 설정해주세요.</p></dt>
                                <dd>
                                    <select class="cate" name="category" id="ca_name">
                                        <option value="">카테고리를 설정해주세요.</option>
                                        <option value="일상">일상</option>
    									<option value="취업">취업</option>
    									<option value="해외">해외</option>
                                    </select>
                                </dd>
                            </dl>
                            <dl>
                                <dt>제목 <p class="error" id="subjectError">! 제목은 10글자 이상 입력해주세요.</p></dt>
                                <dd>
                                    <div class="input subject">
                                        <input type="text" name="title" value="#" id="wr_subject" required class="frm_input full_input" placeholder="제목을 10자 이상 입력해주세요.">
                                    </div>
                                </dd>
                            </dl>
                            <dl>
                                <dt>내용 <div class="anony"><label><input type="checkbox"><p>익명</p><i></i></label></div></dt>
                                <dd>
                                    <div class="textarea">
                                       <textarea name="content"></textarea>
                                    </div>
                                </dd>
                            </dl>
                            <dl>
                                <dt>태그 <p class="error" id="tagError">! 태그를 입력해주세요.</p></dt>
                                <dd>
                                    <div class="input">
                                        <input type="text" name="tag_name" value="#" id="wr_2" required class="frm_input full_input" placeholder="태그를 입력해주세요. (예: #커리어 )">
                                    </div>
                                </dd>
                            </dl>
							<dl>
                                <dt>이미지 업로드</dt>
                                <dd>
                                    <div class="button">
                                        <button type="button" id="" class="btn btn_01">이미지 업로드</button>
                                    </div>
                                </dd>
                            </dl>
                          

                        </div>
                    </div>
                    <div class="rt-item">
                        <div class="caution">
                            <ul>
                                <li>
                                    제목은 구체적인 질문 형태로 작성해주세요. 💡<br>
                                    <br>
                                    •좋은 제목 : 수술방 테이블 어떤 방법으로 짜시나요?<br>
                                    •나쁜 제목 : 수술방 고수분들 도와주세요.
                                </li>
                                <li>
                                    질문과 문제 상황이 같이 포함될수록 좋아요. 💡<br>
                                    <br>
                                    • 실무와 관련된 질문이라면 어떤 상황에서 문제가<br>
                                    발생하는지, 함께 적어주시면 더 좋은 답변을 받을 수<br>
                                    있어요.<br>
                                    <br>
                                    • 이미지를 첨부해 주시면 문제 상황을 정확하게 파악<br>
                                    할 수 있어요.
                                </li>
                                <li>
                                    태그를 최소 1개 이상 입력해 주세요. 💡<br>
                                    <br>
                                    •다른 사람들이 질문의 내용을 파악하는데 필요해요.<br>
                                    <br>
                                    •태그는 최대 5개까지 입력할 수 있어요.
                                </li>
                            </ul>
                        </div>
                        <div class="button">
                            <a href="/MediCareer/list.jsp" class="btn btn_02">취소</a>
                            <button type="submit" id="btn_submit" class="btn btn_01" accesskey="s">작성</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
</div>

</body>
<script type="text/javascript">

    function fwrite_submit(form) { // 게시글입력 유효성검사
        var titleField = form.elements["title"];
        var titleValue = titleField.value.trim(); // 문자열 양 끝 공백 제거
        
        var contentField = form.elements["content"];
        var contentValue = contentField.value.trim(); // 문자열 양 끝 공백 제거
        
        var tagField = form.elements["tag_name"];
        var tagValue = tagField.value.trim(); // 문자열 양 끝 공백 제거
        
        if (titleValue.length < 5) {
            alert("제목은 5글자 이상 입력해주세요.");
            return false; // 제출 중지
        }else{
        	var forbiddenWords = ["티발", "씨네", "금지어3"]; // 금지어 목록
		
        	// 금지어를 정규 표현식으로 변환
        	var forbiddenWordsPattern = new RegExp(forbiddenWords.join('|'), 'i'); // 'i' 플래그는 대소문자를 무시하도록 합니다.

        	// 사용자가 입력한 문자열

        	// 정규 표현식을 사용하여 금지어를 검사
        	if (forbiddenWordsPattern.test(titleValue)) {
        	   alert("제목에 금지어가 포함되어 있습니다.");
        	   return false; // 제출 중지
        	} 
        }
        
        if (contentValue.length < 10) {
            alert("내용은 최소 10글자 이상 입력해주세요.");
            return false; // 제출 중지
        }else{
        	var forbiddenWords = ["티발", "씨네", "금지어3"]; // 금지어 목록

        	// 금지어를 정규 표현식으로 변환
        	var forbiddenWordsPattern = new RegExp(forbiddenWords.join('|'), 'i'); // 'i' 플래그는 대소문자를 무시하도록 합니다.

        	// 사용자가 입력한 문자열

        	// 정규 표현식을 사용하여 금지어를 검사
        	if (forbiddenWordsPattern.test(contentValue)) {
        	   alert("내용에 금지어가 포함되어 있습니다.");
        	   return false; // 제출 중지
        	} 
        }
        
        if (tagValue.length < 1) {
            alert("태그를 최소 1개 이상 입력해주세요 예: #일상");
            return false; // 제출 중지
        }else{ //태그 정규식(앞에#붙이기)
        	var tagsArray = tagValue.split(/[, ]+/);
    		
    		var formattedTags = tagsArray.map(function(tag) {
    		    return tag.replace(/^#?/, '#');
    		});
    		
    		var result = formattedTags.join(', ');
    		tagValue = result;
        }
		alert(tagValue);
        return true; // 제출 진행
    }
</script>
</html>
