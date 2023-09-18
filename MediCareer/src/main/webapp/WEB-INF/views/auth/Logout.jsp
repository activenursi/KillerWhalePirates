<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
<style>
/* 모달 스타일링 */
.modal {
  display: none;
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.7);
}

.modal-content {
  background-color: white;
  margin: 25% auto;
  padding: 20px;
  border: 1px solid #888;
  width: 300px;
  text-align: center;
}
</style>
<script type="text/javascript">
    var modal = document.getElementById('logoutModal');

    function confirmLogout() {
        // 로그아웃 처리를 여기에 추가 (예: 서버로 로그아웃 요청 등)
        // ...
		window.location.href = '<%=request.getContextPath()%>/auth/logout.do';

		 //document.getElementById('logoutModal').style.display = 'none';
    }

    function cancelLogout() {
        // 모달 창 닫기
    	 modal.style.display = 'none';
    }
</script>
</head>
<body>

    <div id="logoutModal" class="modal">
        <div class="modal-content">
	       <p>로그아웃 하시겠습니까?</p>
	       <button onclick="confirmLogout()">확인</button>
	       <button onclick="cancelLogout()">취소</button>
        </div>
    </div>
	
</body>

</html>