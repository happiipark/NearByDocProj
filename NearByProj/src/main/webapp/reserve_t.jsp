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
    margin:44px 933px;

}

th{
	padding: 5px;
	width: 150px;
	float: left;
	color: black;
	text-align: center;
	border-right:1px solid white;
	font-weight: bold;
	background-color: lightblue;
	
}
td{
	height:200px;
}

table {
	
    border: 1px solid;
    width: 1206px;
    margin:86px 430px;
}
#emptyArea { width: 708px;
    text-align: center;
    margin-left: 660px; }
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
	<h1>오늘의 예약내역</h1>
	
	<form action="trlist" method="post">
		<table>	
			<tr class="row">
				<th>예약번호</th>
				<th>일자</th>
				<th>시간</th>
				<th>환자명</th>
				<th>주민번호</th>
				<th>요청사항</th>
				<th>진료과목</th>
				<th>진료완료처리</th>
			</tr>
		
			<c:forEach items="${res.selectallres }" var="reservation">
			<tr>
				<td>${reservation.id }</td>
				<td>${reservation.resdate }</td>
				<td>${reservation.restime }</td>
				<td>  </td>
				<td>${reservation.pidnum }</td>
				<td>${reservation.comment }</td>
				<td>${reservation.status }</td>
				<td>  </td>
				<td>
					<%-- <c:if test="${hospitaluser.id == hospital.comnum }">
						<a href="patientdelete?num=${patient.pname }&page=${res.pageInfo.curPage}">삭제</a>
					</c:if> --%>
				</td>
			</tr>
			</c:forEach>
		</table>
	</form>
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
					<a href="reslist?page=${res.pageInfo.curPage+1}">&gt;</a>
				</c:when>
				<c:otherwise>
					&gt;
				</c:otherwise>
			</c:choose>
			&nbsp;&nbsp;
           
    	</div>

</body>
</html>