-<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!--  uri core를 c로 설정 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>니어닥환자조회</title>
<style>
body {
	margin: 0 auto;
}

#center {
	display: flex;
	margin-left:244px;
}

h1 {
	width: 200px;
    height: 100px;
    margin-left: 1036px;
    margin-top: 50px;
    color: rgb(25, 25, 112);
}
table { margin-left: -1254px;
    width: 1276px;
    margin-top: 100px;
    background-color: lightgray;
 }
#row {
	height: 30px;
	
}
th{
	width:300px;
	height:30px;
	border:1px solid black;
}
h5{text-align:center;}

.title {
	font-weight: bold;
	background-color: rgb(25, 25, 112);
	width: 100px;
}

.colume {
	padding: 5px;
	width: 210px;
	float: left;
	color: white;
	text-align: center;
	border-right:1px solid white;
}

.container {
	height: 500px;
    width: 1326px;
    margin-left: -1560px;
    margin-top: 200px;
}

select{
	width:200px;
	height:35px;

}

input {
	width: 200px;
	height: 30px;
	
}

#reserveform {
	
    width: 1500px;
    height: 50px;
    margin: 0 auto;
}

#search{
	color:black;
	width: 100px;
	height: 30px;
	background-color: lightgray;
	border-radius:10px;
}
#emptyArea { width: 708px;
    text-align: center;
    margin-top: 600px;
    margin-left: 700px; }
#emptyArea a {
	display: inline-block;
	width: 20px;
	height: 20px;
	text-decoration: none;
}
#emptyArea .btn {
	background: lightgray;
}
#emptyArea .select {
	background: lightblue;
}
</style>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script>
	
	function callBtn(num) {
		var keyword=$('#keyword').val()
		if(keyword!=null && keyword.trim()!='') {
			$('#page').val(num);
			$('#searchform').submit();
		}
	}
</script>
</head>
<body>
<% pageContext.include("hmain.jsp");%>
	 <h1>환자별 조회</h1>
	<div id="center">
        	
           
              
            
            
	<form action="patientsearch" method="post" id="searchform">
		<div id="reserveform">
		<h5>
			<select name="type">
				<option value="all">선택</option>
				<option value="pname" ${res.type eq 'pname'? 'selected':'' }>환자명</option>
				<option value="number">${res.type eq 'number'? 'selected':'' }주민등록번호</option>
			</select> 
			<input type="text" name="keyword" id="keyword" value="${res.keyword }"/>
			<input type="submit" id="search"  value="검색"/>
		</h5>
		</div>
		
	</form>
	
			<table>
				<tr id="row"><th>일자</th><th>시간</th><th>환자명</th><th>주민등록번호</th><th>연락처</th><th>주소</th></tr>
				<c:forEach items="${res.patientList }" var="patient">
					<tr>
						<td>${patient.date }</td>
						<td>${patient.time }</td>
						<td>${patient.pname }</td>
						<td>${patient.number }</td>
						<td>${patient.ptel }</td>
						<td>${patient.paddress }</td>
						
					
					</tr>
				</c:forEach>
			</table>
           
           
    </div>
    <div id="emptyArea">
			<c:choose>  
				<c:when test="${res.pageInfo.curPage>1}">
					<a href="boardlist?page=${res.pageInfo.curPage-1}">&lt;</a>
				</c:when>
				<c:otherwise>
					&lt;
				</c:otherwise>
			</c:choose>
			&nbsp;&nbsp;

			<c:forEach begin="${res.pageInfo.startPage}" end="${res.pageInfo.endPage}" var="i">
				<c:choose>
					<c:when test="${res.pageInfo.curPage==i}">
						<a href="boardlist?page=${i}" class="select" onclick="callBtn(${i});return ${res.keyword==null};">${i}</a>&nbsp;
					</c:when>
					<c:otherwise>
						<a href="boardlist?page=${i}" class="btn" onclick="callBtn(${i});return ${res.keyword==null};">${i}</a>&nbsp;
					</c:otherwise>
					
				</c:choose>
				
			</c:forEach>

			<c:choose>  
				<c:when test="${res.pageInfo.curPage<res.pageInfo.allPage}">
					<a href="boardlist?page=${res.pageInfo.curPage+1}">&gt;</a>
				</c:when>
				<c:otherwise>
					&gt;
				</c:otherwise>
			</c:choose>
			&nbsp;&nbsp;
           
    	</div>
</body>
</html>