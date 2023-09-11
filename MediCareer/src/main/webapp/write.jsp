<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- CSS 파일 연결 -->
 	<link rel="stylesheet" type="text/css" href="resources/css/index.css">
    <!-- JavaScript 파일 연결 -->
    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    <!-- JavaScript 파일 연결 -->
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

</head>

<body>

			<%@include file ="/header.jsp" %>


<div id="community">
    <section class="writeskin" id="bo_w">
        <div class="wrap">
            <form name="fwrite" id="fwrite" action="#" onsubmit="return fwrite_submit(this);" method="post" enctype="multipart/form-data" autocomplete="off">
                <input type="hidden" name="w" value="#">
                <input type="hidden" name="bo_table" value="#">
                <input type="hidden" name="wr_id" value="#">
                <input type="hidden" name="sca" value="#">
                <input type="hidden" name="sfl" value="#">
                <input type="hidden" name="stx" value="#">
                <input type="hidden" name="spt" value="#">
                <input type="hidden" name="sst" value="#">
                <input type="hidden" name="sod" value="#">
                <input type="hidden" name="page" value="#">
                <div class="flex">
                    <div class="lt-item">
                        <div class="form">
                           
                            <dl>
                                <dt>토픽 <p class="error" id="cateError">! 토픽을 설정해주세요.</p></dt>
                                <dd>
                                    <select class="cate" name="ca_name" id="ca_name">
                                        <option value="">카테고리를 설정해주세요.</option>
                                        <?php echo $category_option ?>
                                    </select>
                                </dd>
                            </dl>
                            <dl>
                                <dt>제목 <p class="error" id="subjectError">! 제목은 10글자 이상 입력해주세요.</p></dt>
                                <dd>
                                    <div class="input subject">
                                        <input type="text" name="wr_subject" value="#" id="wr_subject" required class="frm_input full_input" placeholder="제목을 10자 이상 입력해주세요.">
                                    </div>
                                </dd>
                            </dl>
                            <dl>
                                <dt>내용 <div class="anony"><label><input type="checkbox"><p>익명</p><i></i></label></div></dt>
                                <dd>
                                    <div class="textarea">
                                       
                                    </div>
                                </dd>
                            </dl>
                            <dl>
                                <dt>태그 <p class="error" id="tagError">! 태그를 입력해주세요.</p></dt>
                                <dd>
                                    <div class="input">
                                        <input type="text" name="wr_2" value="#" id="wr_2" required class="frm_input full_input" placeholder="태그를 입력해주세요. (예: #커리어 )">
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
</html>