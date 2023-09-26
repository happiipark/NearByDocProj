<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        * {
            margin: 0px;
            padding: 0px;
            text-decoration: none;
            font-family: sans-serif;
        }

        body {
            background-image: #34495e;
        }

        .joinForm {
            position: absolute;
            width: 400px;
            height: 400px;
            padding: 30px, 20px;
            background-color: #FFFFFF;
            text-align: center;
            top: 40%;
            left: 50%;
            transform: translate(-50%, -50%);
            border-radius: 15px;
        }

        .joinForm h2 {
            text-align: center;
            margin: 30px;
        }

        .textForm {
            border-bottom: 2px solid #adadad;
            margin: 30px;
            padding: 10px 10px;
        }

        .inputField {
            width: 100%;
            border: none;
            outline: none;
            color: #636e72;
            font-size: 16px;
            height: 25px;
            background: none;
        }

        .btn {
            position: relative;
            left: 40%;
            transform: translateX(-50%);
            margin-bottom: 40px;
            width: 80%;
            height: 40px;
            background: #81ecec;
            background-position: left;
            background-size: 200%;
            color: white;
            font-weight: bold;
            border: none;
            cursor: pointer;
            transition: 0.4s;
        }

        .btn:hover {
            background-position: right;
        }
    </style>
</head>
<body>
 <form action="doJoin" method="post" class="joinForm" onsubmit="DoJoinForm__submit(this); return false;">

        <h2>NEARBYDOC</h2>
        <div class="textForm">
            <input name="email" type="text" class="inputField" placeholder="이메일">
        </div>
        <div class="textForm">
            <input name="loginPw" type="password" class="inputField" placeholder="비밀번호">
        </div>
        <div class="textForm">
            <input name="loginPwConfirm" type="password" class="inputField" placeholder="비밀번호 확인">
        </div>
        <div class="textForm">
            <input name="name" type="text" class="inputField" placeholder="이름">
        </div>
        <div class="textForm">
            <input name="cellphoneNo" type="number" class="inputField" placeholder="전화번호">
        </div>
        <div class="textForm">
            <input name="jumin" type="number" class="inputField" placeholder="주민번호">
        </div>
        <div class="textForm">
            <input name="address" type="text" class="inputField" placeholder="주소">
        </div>
        <input type="submit" class="btn" value="회원가입" />
    </form>

</body>
</html>