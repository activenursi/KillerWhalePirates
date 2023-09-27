<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>마이페이지</title>
    <style type="text/css">
        /* 스타일링을 위한 CSS 코드 */
        .cm_sideMenu {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            margin: 0px;
            padding: 0px;
            position: absolute;
    		top: 100px;
        }

        .sideMenu {
            width: 200px; /* 사이드바 너비 조정 */
            background-color: #f0f0f0;
            padding: 10px;
			margin-top: 100px;
        }

        .list_group {
            list-style-type: none;
            padding: 0;
        }
        
        .my_everything {
        	font-size: 15px;
		    color: rgb(34, 34, 34);
		    margin-bottom: 24px;
		    cursor: pointer;
		    position: relative;
		    font-weight: 400;
		    margin-bottom: 10px;
        }
        
        .application_status {
        	font-size: 15px;
		    color: rgb(34, 34, 34);
		    margin-bottom: 24px;
		    cursor: pointer;
		    position: relative;
		    font-weight: 400;
		    margin-bottom: 10px;
        }
        
        .resume_management {
        	font-size: 15px;
		    color: rgb(34, 34, 34);
		    margin-bottom: 24px;
		    cursor: pointer;
		    position: relative;
		    font-weight: 400;
		    margin-bottom: 10px;
        }
        
        .my_posts {
        	font-size: 15px;
		    color: rgb(34, 34, 34);
		    margin-bottom: 24px;
		    cursor: pointer;
		    position: relative;
		    font-weight: 400;
		    margin-bottom: 10px;
        }
        
        .account_settings {
	        font-size: 15px;
		    color: rgb(34, 34, 34);
		    margin-bottom: 24px;
		    cursor: pointer;
		    position: relative;
		    font-weight: 700;
		    border-top: 1px solid black;
		    padding-top: 24px;
		    margin-bottom: 10px;
        }
        
        .account_deletion {
       	    font-size: 15px;
		    color: rgb(34, 34, 34);
		    margin-bottom: 24px;
		    cursor: pointer;
		    position: relative;
		    font-weight: 400;
		    margin-bottom: 10px;
        }
    </style>
</head>
<body class="cm_sideMenu">
	<aside class="sideMenu">
        <!-- 사이드 메뉴 내용 -->
        <h2>${memberDto.nickName}님</h2>
        <ul class="list_group">
            <li class="my_everything"><a href="#">전체</a></li>
            <li class="application_status"><a href="#">지원 현황</a></li>
            <li class="resume_management"><a href="#">이력서 관리</a></li>
            <li class="my_posts"><a href="#">내가 쓴 글</a></li>
            <li class="account_settings"><a href="#">계정 설정</a></li>
            <li class="account_deletion"><a href="#">계정 탈퇴</a></li>
        </ul>
    </aside>
</body>
</html>