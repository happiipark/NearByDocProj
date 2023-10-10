<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예약완료하기</title>
    <style>
        .main {
            width: 430px;
            margin: auto;
        }

        .top {
            text-align: center;
            margin: auto;
            border-bottom: 1px solid;
        }

        .patient {
            border-bottom: 1px solid;
            border-color: gainsboro;
        }
        .resdate {
            border-bottom: 1px solid;
            border-color: gainsboro;
        }
        .restime {
            border-bottom: 1px solid;
            border-color: gainsboro;
        }
        .service {
            border-bottom: 1px solid;
            border-color: gainsboro;
        }
        
        button {
            margin-left: 30px;
        }
        .button {
            margin:auto;
            text-align: center;
        }
        .btn-primary {
            width: 180px;
            background-color: #1376F8;
            border-radius: 10px;
            border-color: white;
            color: white;
            padding: 15px 30px;
            text-align: center;
            font-size: 16px;
            margin: auto;
        }
        .btn-return {
            width: 180px;
            background-color: gray;
            border-radius: 10px;
            border-color: white;
            color: white;
            padding: 15px 30px;
            text-align: center;
            font-size: 16px;
            margin: auto;
            
        }
        .sub {
            font-weight: bold;
        }
    </style>
</head>

<body>
    <div class="main">
        <% pageContext.include("thinheader.jsp"); %>
        <br>
        <div class="top">
            <h3>예약하기 (OOO종합병원)</h3>
        </div>
        <br>
        <div class="patient">
            <p class="sub">진료 대상</p>
            <br>
            <table>
                <tbody>
                    <tr>
                        <td width="100">
                            <img src="image?file=lee.jpg" alt="이강인" width="60">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            이강인
                        </td>
                    </tr>
                </tbody>
            </table>
            <br>
        </div>
        <br>
        <div class="resdate">
            <p class="sub">예약일자</p>
            <br>
            <p>2023.09.20 (수)</p>
            <br>
        </div>
        <br>
        <div class="restime">
            <p class="sub">예약시간</p>
            <br>
            <p>10:00 AM</p>
            <br>
        </div>
		<br>
        <div class="service">
            <p class="sub">진료과목</p>
            <br>
            <p>정형외과</p>
            <br>
        </div>
        <br>
        <div class="comment">
            <p class="sub">원장님께 하고 싶은 말:</p>
            <br>
            <p>목감기가 심해요.</p>
        </div>
        <br>
        <div class="button">
            <button type="button" class="btn-return" onclick="location.href='reservation.jsp';">돌아가기</button>
            <button type="button" class="btn-primary" onclick="location.href='confirmreservation.jsp';">예약완료하기</button>
        </div>
    </div>
    <br><br><br>
</body>

</html>