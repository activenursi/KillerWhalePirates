<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세</title>
</head>
<style type="text/css">
	.wrap1{
		text-align:center;
		min-height: 100%;
		position : relative;
		padding-bottom: 220px;
		padding-top: 90px;
	}
	div{
		margin: 0 auto;
		text-align: center;
	}
	table{
		margin: 10px auto;
		text-align:left;
		border-collapse: collapse;
		width:600px;
	}
	textarea{
		width:370px; 
		height:350px;
		resize: none;
	}
	.align-center{
		font-size: 30px; 
		font-weight: bold; 
		width: 500px;
	 	height:30px; 
	 	line-height: 30px;
	}
	.align-center img{
	 	vertical-align: middle;
	}
	.answer {
		height: 200px;
	}
</style>
<body>
<div class="wrap1" style="width:550px">
		<div class="align-center">
			고객문의(관리자용)
		</div>
		<br>
		<div>
		<form action="add" method="post">
			<table style="background-color: rgb(248 250 252); padding: 10px;">
				<tr style="border: 1px solid gray; border-right: none;">
					<td width="50px" style="border: 1px solid gray">작성자</td>
					<td width="180px"><input type="text" name="id" style="margin-left: 10px; width:170px" value="${boardDto.id}" readonly="readonly"></td>
					<td width="150px"></td>
					<td width="50px"></td>
				</tr>
				<tr style="border: 1px solid gray; border-right: none;">
					<td style="border: 1px solid gray">제목</td>
					<td colspan="2"><input type="text" name="title" style="width:320px; margin-left: 10px;"
						value="${boardDto.cTitle}" readonly="readonly"></td>
					<td></td>
				</tr>
				<tr class="contentTr" height="350px" style="border: 1px solid gray; border-right: none;">
					<td style="border: 1px solid gray">내용</td>
					<td colspan="3"><textarea style="margin-left: 10px;" name="contents" readonly="readonly">
						${boardDto.bContents}</textarea></td>
				</tr>
				<tr class="contentTr1" style="border: 1px solid gray; border-right: none;">
					<td style="border: 1px solid gray">답변하기</td>
					<td colspan="3"><textarea style="margin-left: 10px;" class="answer" name="contents">
						${boardDto.bContents}</textarea></td>
				</tr>
			</table>
			<div>
				<input type="button" value='답변하기' onclick='pageMoveUpdateFnc(${boardDto.bNo});'>
				<input type="button" value='삭제하기' onclick='pageMoveDeleteFnc(${boardDto.bNo});'><br><br>
				<input type='button' value='문의글 목록보기' onclick='pageMoveListFnc();'>
			</div>
			</form>
		</div>
	</div>


</body>
</html>