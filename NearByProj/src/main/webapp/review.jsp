<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>리뷰 작성</title>
<style>
.main {
	width: 430px;
	margin: auto;
}

.top {
	border-bottom: 1px solid;
}

.infosum {
	border-bottom: 1px solid;
	border-color: gainsboro;
}

.selectstar {
	border-bottom: 1px solid;
	border-color: gainsboro;
	height: 60px;
}

#text {
	width: 410px;
	height: 300px;
	margin: 5px 5px 5px 5px;
}

.button {
	margin: auto;
	text-align: center;
}

.btn-primary {
	width: 410px;
	background-color: #1376F8;
	border-radius: 10px;
	border-color: white;
	color: white;
	padding: 15px 30px;
	text-align: center;
	font-size: 16px;
	margin: auto;
}
.star_rating {
  width: 100%; 
  box-sizing: border-box; 
  display: inline-flex; 
  float: left;
  flex-direction: row; 
  justify-content: flex-start;
}
.star_rating .star {
  width: 25px; 
  height: 25px; 
  margin-right: 10px;
  display: inline-block; 
  background: url('https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FE2bww%2FbtsviSSBz4Q%2F5UYnwSWgTlFt6CEFZ1L3Q0%2Fimg.png') no-repeat; 
  background-size: 100%; 
  box-sizing: border-box; 
}
.star_rating .star.on {
  width: 25px; 
  height: 25px;
  margin-right: 10px;
  display: inline-block; 
  background: url('https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fb2d6gV%2FbtsvbDoal87%2FXH5b17uLeEJcBP3RV3FyDk%2Fimg.png') no-repeat;
  background-size: 100%; 
  box-sizing: border-box; 
}

</style>


<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
  jQuery( document ).ready( function( $ ) {
	  $("#star").val(1); 
	  $('.star_rating > .star').click(function() {
		  $(this).parent().children('span').removeClass('on');
		  $(this).addClass('on').prevAll('span').addClass('on');
		  var cnt = $(this).attr('value');
		     $("#star").val(cnt); // 히든 인풋에 값 저장.
		  return false;
	  })
	  

  } );
</script>
</head>

<body>
	<div class="main">
		<%
		pageContext.include("thinheader.jsp");
		%>
		<br>
		<div class="top">
			<h3>리뷰 작성</h3>
		</div>
		<br>
		<div class="infosum">
			<table>
				<tbody>
					<tr>
						<td rowspan="3"><img src="image?file=${hospital.hurl}" alt="병원"
							width="200"></td>
						<td>&nbsp;&nbsp;</td>
						<td><h4>${hospital.hname}</h4></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;</td>
						<td>${hospital.hroad}</td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;</td>
						<td>${hospital.htel}</td>
					</tr>

				</tbody>
			</table>
			<br>
		</div>
		<br>
		
 		
		<br>
		<form action="insertreview" method="post" id='form'>
		<input type="hidden" name="star" id="star"/>
		<div class ="selectstar">
		<p>별점을 선택해주세요.</p>
		<div class ="star_rating">
   <span class="star on" value="1"> </span>
  <span class="star" value="2"> </span>
  <span class="star" value="3"> </span>
  <span class="star" value="4"> </span>
  <span class="star" value="5"> </span> 

</div>
</div>
		<div class="textreview">
			<p>텍스트 리뷰</p>
			<br>
			<textarea  name="content" cols="58" rows="10" placeholder="솔직한 사용후기를 작성해주세요!"></textarea>
		</div>
		<br>
		<div>
			<button type="submit" class="btn-primary" id="btn_submit" onclick="alert('리뷰작성이 완료되었습니다.');">리뷰작성</button>
		</div>
		</form>
	</div>
	<br>
	<br>
	<br>
</body>

</html>