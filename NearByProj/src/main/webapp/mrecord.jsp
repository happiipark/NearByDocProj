<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!--  uri core를 c로 설정 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>진료 기록 조회</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
$(function() {
//input을 datepicker로 선언
$("#datepicker1,#datepicker2").datepicker({
dateFormat: 'yy-mm-dd' //달력 날짜 형태
,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
,changeYear: true //option값 년 선택 가능
,changeMonth: true //option값 월 선택 가능
,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시
,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
,buttonText: "선택" //버튼 호버 텍스트
,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
,minDate: "-5Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
,maxDate: "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)
});

//초기값을 오늘 날짜로 설정해줘야 합니다.
$('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
});


function Opinion(){
   window.open("<%=request.getContextPath()%>/opinion.jsp", '의사소견', 'width=750px,height=470px,scrollbars=yes');
}


</script>
</head>
<style>
body {
	margin: 0 auto;
}

#center {
	display: flex;
	margin-top:20px;
	margin-left:20px;
}

h1 {
	width: 300px;
	height: 50px;
	margin-left: 800px;
	color: rgb(25, 25, 112);
}

.row>a{
	background-color: rgb(25, 25, 112);
    padding: 5px;
    color: white;
    text-align: center;
    /* border-right: 1px solid white; */
    display: inline-block;
    width: 139px;
    text-decoration: none;
    font-weight: bold;
	
}

.title {
	font-weight: bold;
	background-color: rgb(25, 25, 112);
	width: 100px;

}

.colume {
	padding: 5px;
	width: 156px;
	float: left;
	color: white;
	text-align: center;
	border-right:1px solid white;
	
}

.container {
	height: 600px;
    border: 1px solid;
    width: 1390px;
    margin-top: 200px;
    margin-left: -1590px;
}

input {
	width: 200px;
	height: 30px;
}

select {
	width: 200px;
	height: 35px;
}

button {
	width: 100px;
	height: 30px;
	background-color: rgb(25, 25, 112);
}

#search {
	color: white;
}

.reserveform {
	margin-top: 70px;
	width: 1500px;
	height: 50px;
	margin-left: -750px;
}
#datepicker1{
	margin-top:50px;
	margin-left:70px;

}
#datepicker2{
	margin-left:20px;
}
</style>
<body>
<% pageContext.include("hmain.jsp");%>
	<div id="center">
        	
           
                <h1>진료 기록 조회</h1><br><br>
            
            
            <div class="reserveform">
            
			<select name="patient">
				<option value="patient">환자명</option>
				<option value="number">주민등록번호</option>
			</select> <input type="text">
			<button onclick="#"id="search">검색</button>
			
			
		
			

			<input type="text" id="datepicker1" placeholder="0000-00-00">

			<input type="text" id="datepicker2" placeholder="0000-00-00">

		
			<button onclick="#" id="search">검색</button> 

		
			
			</div>
		
            <div class="container" id="container">
                <div class="row">
                    <div class="title colume">일자</div>
                    <div class="title colume">시간</div>
                    <div class="title colume">환자명</div>
                    <div class="title colume">주민등록번호</div>
                    <div class="title colume">연락처</div>
                    <div class="title colume">주소</div>
                    <div class="title colume">진료과목</div>
                    <div class="title colume">진료완료처리</div>
                    <a href="javascript:Opinion()" target="_self" >담당의소견</a>
                </div>
                
         
           
            </div>
     </div>
</body>
</html>