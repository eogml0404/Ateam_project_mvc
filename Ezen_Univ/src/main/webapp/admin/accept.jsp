<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="../css/iframe.css">
    <link rel="stylesheet" href="../css/attmanage.css">
    <style>
        .container{
            display: flex;
        }
        .sidebar{
            width: 50%;
        }
        .myinfo{
            width: 100%;
        }
        .menubar{
            width: 100%;
        }
        .contents{
            padding: 10px;
        }
        .std-list #btn{
            background: rgb(207, 247, 207);
            width: 50px;
            height: 25px;
        }
        .std-list #btn2{
            background: rgb(255, 187, 187);
            width: 50px;
            height: 25px;
        }
        .std-list table{
            width: 80%;
        }
    </style>
</head>
<body>

    <div class="header">
        <iframe src = "../main/navigation_a.jsp" width = "100%" height="55" ></iframe>
    </div>
    <div class="container">
        <div class="sidebar">
            <div class="myinfo">
                <iframe src = "../leftmenu/myinfo_a.jsp" width="100%" height="20%"></iframe>
            </div>
            <div class="menubar">
                <iframe src = "../leftmenu/accept_a.jsp" width="100%" height="100%"></iframe>
            </div>
        </div>
        <div class="contents">
            <div class="accept-list">
            <h3>회원가입 승인</h3>
                <div>
                    <tr>
                        <td>
                            <input type="radio" name="MemberList" value="studentAll" checked>학생
                            <input type="radio" name="MemberList" value="professorAll" >교수
                            <button>선택보기</button>
                        </td>
                        
                        <td>
                            <button>일괄승인</button>
                            <button>일괄거부</button>
                        </td>
                    </tr>

                </div>
                <div class="std-list">
                    <table>
                        <thead>
                            <tr>
                                <td style="width: 50px;">
                                    <input type="checkbox" name="student" value="selectAll" onclick="selectAtt(this)"/>
                                </td>
                                <td style="width: 50px;">순번</td>
                                <td style="width: 50px;">구분</td>
                                <td style="width: 100px;">이름</td>
                                <td style="width: 150px;">생년월일</td>
                                <td style="width: 150px;">이메일</td>
                                <td style="width: 200px;">전공</td>
                                <td colspan="2" width: 50px;>처리</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <input type="checkbox" name="student" value="sidx1">
                                </td>
                                <td>1</td>
                                <td>학생</td>
                                <td>김이젠1</td>
                                <td>20040225</td>
                                <td>ezen1@naver.com</td>
                                <td>정보통신공학과</td>
                                <td style="padding-right:10px">
                                    <button type="button" id="btn" onclick="">승인</button>
                                    <button type="button" id="btn2" onclick="">거부</button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="student" value="sidx2">
                                </td>
                                <td>2</td>
                                <td>학생</td>
                                <td>김이젠2</td>
                                <td>20041221</td>
                                <td>ezen2@naver.com</td>
                                <td>정보통신공학과</td>
                                <td style="padding-right:10px">
                                    <button type="button" id="btn">승인</button>
                                    <button type="button" id="btn2" >거부</button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="student" value="sidx3">
                                </td>
                                <td>3</td>
                                <td>학생</td>
                                <td>김이젠3</td>
                                <td>20041127</td>
                                <td>ezen3@naver.com</td>
                                <td>정보통신공학과</td>
                                <td style="padding-right:10px">
                                    <button type="button" id="btn">승인</button>
                                    <button type="button" id="btn2" >거부</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script src="../js/acceptManage.js"></script>
</body>
</html>