<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.17.0/font/bootstrap-icons.css">
<meta charset="UTF-8">
<title>마이페이지</title>
<style type="text/css">
#myPage_content{
	width:800px;
	height:800px;
	margin: 0 auto;
	margin-top: 50px;
	background-color: #f0f0f0;
	padding: 10px;
	border: 1px solid #ccc;
}
.box_sizing {
	display: flex; /* 또는 다른 레이아웃 속성을 사용하여 요소를 나란히 배치할 수 있습니다. */
	justify-content: space-between; /* 박스를 가로로 분산 정렬합니다. */
}

.box {
	flex: 1; /* 박스를 동일한 너비로 만듭니다. */
	height: 138px;
	background-color: white;
	padding: 10px;
	border: 1px solid gray;
	border-radius: 6px;
	margin-right: 16px;
	box-sizing: border-box; /* 내부 박스의 크기 계산에도 border-box 모델을 사용합니다. */
}

.box1 {
	flex: 2; /* 박스를 동일한 너비로 만듭니다. */
	height: 138px;
	background-color: white;
	padding: 10px;
	border: 1px solid gray;
	border-radius: 6px;
	box-sizing: border-box; /* 내부 박스의 크기 계산에도 border-box 모델을 사용합니다. */
}

.profile_wrap {
	align-items: center;
	height: 50; /* 화면 높이에 따라 body를 100%로 채웁니다. */
	margin: 0; /* 기본 마진 제거 */
	width:770px;
}

.mp_profileModify, .mp_profileDelete{
	flex:1;
	font-size: 15px;
	background-color: rgb(52, 152, 219);
	border-style: none;
	border-radius: 4px;
	color: white;
	padding: 7px;
}
.not-resume{
	list-style: none;
	display: flex;
}
.element::before {
	content: "→ "; /* 가상 요소의 내용을 설정 */
	color: red; /* 가상 요소의 스타일을 설정 */
}
.flex_wrap1, .flex_wrap2, .flex_wrap3, .flex_wrap4 {
	flex:1;
	text-align: center;
	font-weight: 600;
	border-right: 2px solid black;
}
.flex_wrap5 {
	flex:1;
	text-align: center;
	font-weight: 600;
}
.document_management {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	justify-content: space-around;
	height: 116px;
	width: 100%;
	border: 1px solid rgb(0, 0, 0);
	padding: 10px;
	line-height: 1.5;
	border-radius: 8px;
	margin-top: 20px;
	list-style: none;
}
.writer_wrap1, .writer_wrap2, .writer_wrap3, .writer_wrap4 {
	width:40px;
}

</style>
</head>
<body>
   <div id="myPage_content">
      <div class="profile_wrap">
         <div class="box_sizing">
            <div class="box">
               <p>???님</p>
               <p>email@email.com</p>
            <div style="display: flex; justify-content: space-around;">
               <label>
                  <li style="list-style: none;">
                     <input class="mp_profileModify" type="submit" value="프로필 수정"></li>
               </label> 
               <label>
                  <li style="list-style: none;">
                     <input class="mp_profileDelete" type="submit" value="로그아웃"></li>
               </label>
            </div>
			</div>
            <div class="box1">
               <p>??님</p>
               <p style="font-size: 40px">#내정보</p>
            </div>
         </div>

         <ul class="document_management">
            <li class="flex_wrap1">
               <dl>
                  <dt>지원 현황</dt>
                  <dd style="text-align: center;">0</dd>
               </dl>
            </li>
            <li class="flex_wrap2">
               <dl>
                  <dt>이력서 관리</dt>
                  <dd>2</dd>
               </dl>
            </li>
            <li class="flex_wrap3">
               <dl>
                  <dt>지원한 공고</dt>
                  <dd>3</dd>
               </dl>
            </li>
            <li class="flex_wrap4">
               <dl>
                  <dt>서류통과</dt>
                  <dd>2</dd>
               </dl>
            </li>
            <li class="flex_wrap5">
               <dl>
                  <dt>합격</dt>
                  <dd>1</dd>
               </dl>
            </li>
         </ul>
         <div>
            <p><strong>이력서 관리&nbsp;(최대 3개)</strong></p>
            <table style="border-bottom:1px solid" style="width:770px; ">
               <tr class="writer_wrap1" style="border-bottom:1px solid">
                  <th style="width:100px; ">분류</th>
                  <th style="width:470px; ">제목</th>
                  <th style="width:80px; ">작성자</th>
                  <th style="width:120px; ">작성 일자</th>
               </tr>
               <tr class="writer_wrap2">
                  <td>개발</td>
                  <td>개발자 이력서</td>
                  <td>테스트1</td>
                  <td>2023-09-15</td>
               </tr>
               
            </table>
         </div>
         <br>
         <br>
         <br>
         <div>
            <p><strong>내가 쓴 글 보기</strong></p>
            <table style="border-bottom:1px solid" style="width:770px; ">
               <tr class="writer_wrap1" style="border-bottom:1px solid">
                  <th style="width:100px; ">분류</th>
                  <th style="width:470px; ">제목</th>
                  <th style="width:80px; ">작성자</th>
                  <th style="width:120px; ">작성 일자</th>
               </tr>
               <tr class="writer_wrap2">
                  <td>커뮤니티</td>
                  <td>화면단 너무 어렵다</td>
                  <td>테스트1</td>
                  <td>2023-09-14</td>
               </tr>
               
            </table>
         </div>
      </div>
   </div>
</body>
</html>