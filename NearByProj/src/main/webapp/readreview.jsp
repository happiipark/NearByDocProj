<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <title>전체 리뷰보기</title>
    <style>
        .main {
            width: 430px;
            margin: auto;
        }
        .top {
            border-bottom: 1px solid;
        }
        .material-symbols-outlined {
            font-variation-settings:
            'FILL' 0,
            'wght' 400,
            'GRAD' 0,
            'opsz' 24
        }
        

        .review {
            width: 410px;
            height: 150px;
            border: 1px solid;
            border-color: gainsboro;
            border-radius: 10px;
            justify-content: center;
            align-items: center;
            margin: auto;
        }

        .reviewinfo1 {
            width: 400px;
            height: 110px;
            margin: 5px 5px 0 5px;
        }

        .reviewinfo2 {
            width: 400px;
            margin: 0 0 5px 5px;
            align-items: right;
        }
    </style>
</head>

<body>
    <div class="main">
        <% pageContext.include("thinheader.jsp"); %>
        <br>
        <div class="top">
            <table>
                <tr>
                    <td>
                        <span class="material-symbols-outlined" onclick="location.href='hospitalinfo.jsp'" style="cursor:pointer;">
                            arrow_back
                            </span>
                    </td>
                    <td>
                        <h3>전체 리뷰</h3>
                    </td>
                </tr>
            </table>
        </div>
        <br>
        <div>
            <p>&nbsp;2023.09.20</p>
            <div class="review">
                <div class="reviewinfo1">
                    <table>
                        <tr>
                            <td width="100">고O동</td>
                            <td width="100">진료 과목:&nbsp;</td>
                            <td width="80">내과</td>
                            <td width="120">
                                <img src="image?file=star.png" alt="별" width="15">
                                <img src="image?file=star.png" alt="별" width="15">
                                <img src="image?file=star.png" alt="별" width="15">
                                <img src="image?file=star.png" alt="별" width="15">
                                <img src="image?file=star.png" alt="별" width="15">
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                친절하게 진료 잘 해주십니다.
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="reviewinfo2">
                    <table>
                        <tr>
                            <td>
                                진료 의사: &nbsp;&nbsp;
                            </td>
                            <td>
                                홍길동
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <br>
        <div>
            <p>&nbsp;2023.09.20</p>
            <div class="review">
                <div class="reviewinfo1">
                    <table>
                        <tr>
                            <td width="100">고O동</td>
                            <td width="100">진료 과목:&nbsp;</td>
                            <td width="80">내과</td>
                            <td width="120">
                                <img src="image?file=star.png" alt="별" width="15">
                                <img src="image?file=star.png" alt="별" width="15">
                                <img src="image?file=star.png" alt="별" width="15">
                                <img src="image?file=star.png" alt="별" width="15">
                                <img src="image?file=star.png" alt="별" width="15">
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                친절하게 진료 잘 해주십니다.
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="reviewinfo2">
                    <table>
                        <tr>
                            <td>
                                진료 의사: &nbsp;&nbsp;
                            </td>
                            <td>
                                홍길동
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <br>
        <div>
            <p>&nbsp;2023.09.20</p>
            <div class="review">
                <div class="reviewinfo1">
                    <table>
                        <tr>
                            <td width="100">고O동</td>
                            <td width="100">진료 과목:&nbsp;</td>
                            <td width="80">내과</td>
                            <td width="120">
                                <img src="image?file=star.png" alt="별" width="15">
                                <img src="image?file=star.png" alt="별" width="15">
                                <img src="image?file=star.png" alt="별" width="15">
                                <img src="image?file=star.png" alt="별" width="15">
                                <img src="image?file=star.png" alt="별" width="15">
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                친절하게 진료 잘 해주십니다.
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="reviewinfo2">
                    <table>
                        <tr>
                            <td>
                                진료 의사: &nbsp;&nbsp;
                            </td>
                            <td>
                                홍길동
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <br>
    </div>
    <br><br><br>
</body>

</html>