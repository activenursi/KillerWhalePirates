<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 게시물관리</title>
<style>
	h2{
		text-decoration: underline;
	}
	.tableBox2 table{
		text-align: center;
		border-collapse: collapse;
		border:1px solid black;
	}
	.tableBox2 table th {
		background-color: gray;
		border-collapse: collapse;
		border-bottom: 1px double black;
	}
	.tableBox2 table td {
		border-collapse: collapse;
		border:1px solid black;
	}
</style>
</head>
<body>
	<div>
		<div>
			<div>
				<h2>게시물관리</h2>
			</div>
		</div>
		<form>
		<div class="tableBox2">
			<table>
				<tr>
					<th class=""><input type="checkbox"></th>
					<th class="">분류</th>
					<th class="">제목</th>
					<th class="">작성자</th>
					<th class="">작성일자</th>
				</tr>
				<c:forEach var="boardDto" items="${boardList}">
				<tr>
					<td><input type="checkbox"></td>
					<td>커뮤니티</td>
					<td>${boardDto.title}</td>
					<td>${boardDto.writer}</td>
					<td>
						<fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${boardDto.write_date}"/>
					</td>
				</tr>
				</c:forEach>
			</table>
		</div>
		<div>
			<input type="button" value="선택삭제">
		</div>
		</form> 
	</div>
</body>
</html>