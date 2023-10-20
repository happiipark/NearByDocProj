<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!--  uri core를 c로 설정 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 예약내역</title>
<style>


h1{
	width: 220px;
    color: rgb(25, 25, 112);
    margin:0 auto;

}

th {
	width: 450px;
	height: 30px;
	background-color:lightgray;
	
	
}
td{
	text-align:center;
	background-color:white;
}
#center{
	margin:50px auto;
	position: absolute;
	left:170px;
	padding-left :130px;
    width: 1479px;
}

table {
	
    border: 1px solid;
    width: 1454px;
    margin:100px auto;
}
#emptyArea { width: 708px;
    text-align: center;
    margin:200px auto; }
#emptyArea a {
	display: inline-block;
	width: 20px;
	height: 20px;
	text-decoration: none;
}
#emptyArea .btn {
	background-color: white;
}
#emptyArea .select {
	background-color: white;
}
</style>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

</head>

<body style="overflow-y:hidden">
	<% pageContext.include("hmain.jsp");%>
	<div id="center">
	<h1>오늘의 예약내역</h1>
	
	
		<table>	
			<tr class="row">
				<th style="width:150px;">환자명</th>
				<th style="width:150px;">일자</th>
				<th style="width:150px;">시간</th>
				<th style="width:150px;">진료과목</th>
				<th style="width:150px;">요청사항</th>
				<th style="width:150px;">진료예약상태</th>
			
			</tr>
		
			<c:forEach items="${res.todayresList }" var="reservation">
			<tr>
				<td>${reservation.pname }</td>
				<td>${reservation.resdate }</td>
				<td>${reservation.restime }</td>
				<td>${hospitaluser.department }</td>
				<td>${reservation.comment }</td>
				<td>${reservation.status }<select>
				<option value="option">진료선택</option>
				<option value="complete">진료완료</option>
				<option value="cancel">진료취소</option>
				</select></td>
				<%-- <td>
					<c:if test="${hospitaluser.id == hospital.comnum }">
						<a href="patientdelete?num=${patient.pname }&page=${res.pageInfo.curPage}">삭제</a>
					</c:if>
				</td> --%>
			</tr>
			</c:forEach>
		</table>
	
	
	<div id="emptyArea">
			<c:choose>  
				<c:when test="${res.pageInfo.curPage>1}">
					<a href="trlist?page=${res.pageInfo.curPage-1}">&lt;</a>
				</c:when>
				<c:otherwise>
					&lt;
				</c:otherwise>
			</c:choose>
			&nbsp;&nbsp;

			<c:forEach begin="${res.pageInfo.startPage}" end="${res.pageInfo.endPage}" var="i">
				<c:choose>
					<c:when test="${res.pageInfo.curPage==i}">
						<a href="trlist?page=${i}" class="select" onclick="callBtn(${i});return ${res.keyword==null};">${i}</a>&nbsp;
					</c:when>
					<c:otherwise>
						<a href="trlist?page=${i}" class="btn" onclick="callBtn(${i});return ${res.keyword==null};">${i}</a>&nbsp;
					</c:otherwise>
					
				</c:choose>
				
			</c:forEach>

			<c:choose>  
				<c:when test="${res.pageInfo.curPage<res.pageInfo.allPage}">
					<a href="trlist?page=${res.pageInfo.curPage+1}">&gt;</a>
				</c:when>
				<c:otherwise>
					&gt;
				</c:otherwise>
			</c:choose>
			&nbsp;&nbsp;
           
    </div>
	</div>
</body>
</html>