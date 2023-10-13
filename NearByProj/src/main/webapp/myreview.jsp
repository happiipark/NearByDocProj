<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<title>NearByDocHeader</title>

<style>
#container {
	background-color: white;
	margin: 10px auto;
	width: 430px;
	height: 480px;
	padding-top: 5px;
	overflow: hidden; /* Hide the scrollbar */

}

#sub {
	margin: 10px auto;
	font-size: 30px;
	overflow: hidden;
	text-align: left;
	width: 430px;
}

#sub>input {
	width: 30px;
	height: 30px;
	margin-left: 280px;
}

#reviewbox {
	width: 390px;
	height: 150px;
	background-color: white;
	margin: 5px auto;
	border: solid 1px;
	border-radius: 10px;
	text-align: left;
	padding: 10px;
}

#reviewbox>span {
	margin-left: 10px;
}

#res {
	margin: 20px auto;
}

#res>h4, h5 {
	text-align: left;
	margin-left: 20px;
}

</style>
</head>

<body>
	<!-- 헤더 -->
	<%
	pageContext.include("thinheader.jsp");
	%>
	<div id="sub">
		<span>나의 리뷰</span> <span class="material-symbols-outlined"
			onClick="history.go(-1)" style="margin-left: 260px;">
			arrow_back </span> <br>
		<hr>
	</div>

	<div id="container">
	<div id="roll">
		<c:forEach items="${reviews}" var="review" varStatus="status">
			<div id="res">
				<h4>${review.name }</h4>
				<h5>${review.date }</h5>
				<div id="reviewbox">
					<span>진료 과목 </span> &nbsp; <span>${review.department }</span> <br>
					<br> <span id="cntStar"> <c:forEach begin="1"
							end="${review.star}">
							<img src="image?file=star.png" alt="별" width="15">
						</c:forEach>
					</span> <br> <br> <span style="word-break: break-all">${review.content }</span>
				</div>
			</div>
			<div></div>
		</c:forEach>
	</div>
	</div>

	<script>
		const container = document.getElementById('container');
		let isDragging = false;
		let startY = 0;
		let startScrollTop = 0;

		container.addEventListener('mousedown', (e) => {
			isDragging = true;
			startY = e.clientY;
			startScrollTop = container.scrollTop;
		});

		document.addEventListener('mousemove', (e) => {
			if (!isDragging) return;
			const deltaY = e.clientY - startY;
			container.scrollTop = startScrollTop - deltaY;
		});

		document.addEventListener('mouseup', () => {
			isDragging = false;
		});
	</script>
</body>

</html>
