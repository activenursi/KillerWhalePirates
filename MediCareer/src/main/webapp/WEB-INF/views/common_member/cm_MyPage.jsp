<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>마이페이지</title>
    <style type="text/css">
/* 초기화 스타일 */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* body 요소 스타일 */
.body_style {
    font-family: Arial, sans-serif; /* 기본 글꼴 설정 */
    background-color: #f5f5f5; /* 배경색 설정 */
    display: flex;
    justify-content: center; /* 수평 가운데 정렬 */
    align-items: center; /* 수직 가운데 정렬 */
    height: 800px; /* 화면 전체 높이만큼 설정 */
}

/* 컨테이너 div 스타일 */
.container {
    display: flex;
    max-width: 1200px; /* 컨테이너 최대 너비 설정 */
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 6px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* 그림자 효과 추가 */
}

/* 사이드 메뉴 스타일 */
.sideMenu {
    display: flex;
    flex-direction: column; /* 세로로 나열하도록 설정 */
    width: 200px;
    background-color: #333;
    color: #fff;
    padding: 10px;
}

.sideMenu h2 {
    text-align: center;
    margin-bottom: 20px;
}

.list_group {
    list-style-type: none;
    padding: 0;
}

.list_group li {
    margin-bottom: 10px;
}

.list_group a {
    text-decoration: none;
    color: #fff;
}

/* 컨텐츠 영역 스타일 */
#myPage_content {
    flex-grow: 1; /* 남은 공간을 확장해서 채우도록 설정 */
    padding: 20px;
}

/* 프로필 정보 스타일 */
.profile_wrap {
    padding: 20px;
}

.profile_wrap p {
    font-size: 18px; /* 1.2em 대신 18px로 설정 */
    margin-bottom: 20px;
}

/* 문서 관리 스타일 */
.document_management {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #f0f0f0;
    border: 1px solid #ccc;
    border-radius: 8px;
    padding: 15px 20px;
    margin-top: 20px;
    list-style: none;
    margin-bottom: 40px;
}

.document_management dl {
    text-align: center;
}

.document_management dt {
    font-size: 18px; /* 1.2em 대신 18px로 설정 */
    font-weight: bold;
    color: #333;
}

.document_management dd {
    font-size: 28px; /* 2em 대신 28px로 설정 */
    font-weight: bold;
    color: #007bff;
}

/* 표 스타일 */
.table_style {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

.th_classification,
.th_title,
.th_writer,
.th_createDate,
.td_classification,
.td_title,
.td_writer,
.td_createDate {
    border: 1px solid #ccc;
    padding: 10px;
    text-align: center;
}

.th_classification,
.th_title,
.th_writer,
.th_createDate {
    background-color: #333;
    color: #fff;
}

/* 버튼 스타일 */
.mp_profileModify {
    font-size: 18px; /* 1em 대신 18px로 설정 */
    background-color: #007bff;
    border: none;
    border-radius: 4px;
    color: #fff;
    padding: 10px 20px;
    cursor: pointer;
    transition: 0.3s;
}

.mp_profileModify:hover {
    background-color: #0056b3;
}
    </style>
</head>
<body class="body_style">
    <%@include file ="../header.jsp" %>
    <div class="container">
        <aside class="sideMenu">
            <!-- 사이드 메뉴 내용 -->
            <h2>${memberDto.nickName}님</h2>
            <ul class="list_group">
                <li class="my_everything"><a href="./myPage.do?no=${member.no}">전체</a></li>
                <li class="application_status"><a href="./ApplicationStatus.do?no=${member.no}">지원 현황</a></li>
                <li class="resume_management"><a href="./ResumeManagement.do?no=${member.no}">이력서 관리</a></li>
                <li class="BoardManagement"><a href="./BoardManagement.do?no=${member.no}">내가 쓴 글</a></li>
                <li class="account_settings"><a href="./AccountSetting.do?no=${member.no}">계정 설정</a></li>
                <li class="account_deletion"><a href="./AccountDeletion.do?no=${member.no}">계정 탈퇴</a></li>
            </ul>
        </aside>
        <div id="myPage_content">
            <div class="profile_wrap">
                <ul class="document_management">
                    <li>
                        <dl>
                            <dt>지원 현황</dt>
                            <dd style="text-align: center;">0</dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>이력서 관리</dt>
                            <dd>2</dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>지원한 공고</dt>
                            <dd>3</dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>서류통과</dt>
                            <dd>2</dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>합격</dt>
                            <dd>1</dd>
                        </dl>
                    </li>
                </ul>
                <div>
                    <p><strong>이력서 관리&nbsp;(최대 3개)</strong></p>
                    <table class="table_style">
                        <tr>
                            <th class="th_classification">분류</th>
                            <th class="th_title">제목</th>
                            <th class="th_writer">작성자</th>
                            <th class="th_createDate">작성 일자</th>
                        </tr>
                        <tr>
                            <td class="td_classification">개발</td>
                            <td class="td_title">개발자 이력서</td>
                            <td class="td_writer">테스트1</td>
                            <td class="td_createDate">2023-09-15</td>
                        </tr>
                    </table>
                </div>
                <br>
                <br>
                <br>
                <div>
                    <p><strong>내가 쓴 글 보기</strong></p>
                    <table class="table_style">
                        <tr>
                            <th class="th_classification">분류</th>
                            <th class="th_title">제목</th>
                            <th class="th_writer">작성자</th>
                            <th class="th_createDate">작성 일자</th>
                        </tr>
                        <tr>
                            <td class="td_classification">커뮤니티</td>
                            <td class="td_title">화면단 너무 어렵다</td>
                            <td class="td_writer">테스트1</td>
                            <td class="td_createDate">2023-09-14</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>