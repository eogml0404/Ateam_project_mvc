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
    <link rel="stylesheet" href="../css/courseList.css">
    <style>
        
    </style>
</head>
<body>
    <div class="header">
        <iframe src = "../main/navigation_p.jsp" width = "100%" height="55" ></iframe>
    </div>
    <div class="container">
        <div class="sidebar">
            <div class="myinfo">
                <iframe src = "../leftmenu/myinfo_p.jsp" width="100%" height="200"></iframe>
            </div>
            <div class="menubar">
                <iframe src = "../leftmenu/mypage_menu_p.jsp" width="100%" height="500"></iframe>
            </div>
        </div>
        <div class="contents">
            <h3>강의현황조회</h3>
            <div class="first_line">
                년도 <input type="text" name="year" value="2023" disabled/> 학기 <input type="text" name="turm" value="1" disabled/>
            </div>
            <div class="list_table">
                <table>
                    <thead>
                        <tr>
                            <td style="width:10px">NO</td>
                            <td style="width:50px">과목명</td>
                            <td style="width:30px">세부전공</td>
                            <td style="width:10px">수강학년</td>
                            <td style="width:30px">이수구분</td>
                            <td style="width:10px">학점</td>
                            <td style="width:30px">강의실</td>
                            <td style="width:30px">시간표</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>생활영어 1</td>
                            <td>치위생학</td>
                            <td>1</td>
                            <td>교양필수</td>
                            <td>2</td>
                            <td>문화관 201</td>
                            <td>월1 월2</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>대인관계능력</td>
                            <td>치위생학</td>
                            <td>1</td>
                            <td>교양필수</td>
                            <td>2</td>
                            <td>문화관 202</td>
                            <td>화1 화2</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>보건교육학</td>
                            <td>치위생학</td>
                            <td>1</td>
                            <td>교양선택</td>
                            <td>2</td>
                            <td>문화관 504</td>
                            <td>월5 월6</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>치아형태학</td>
                            <td>치위생학</td>
                            <td>2</td>
                            <td>전공필수</td>
                            <td>3</td>
                            <td>보건관 203</td>
                            <td>목2 목3 목4</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>치위생학개론</td>
                            <td>치위생학</td>
                            <td>3</td>
                            <td>전공필수</td>
                            <td>2</td>
                            <td>보건관 203</td>
                            <td>금1 금2</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="mytable">
                <table>
                    <thead>
                        <tr>
                            <td style="width:5%">교시</td>
                            <td style="width:15%">월</td>
                            <td style="width:15%">화</td>
                            <td style="width:15%">수</td>
                            <td style="width:15%">목</td>
                            <td style="width:15%">금</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>생활영어 1<br> 문화관 201</td>
                            <td>대인관계능력<br> 문화관 202</td>
                            <td></td>
                            <td></td>
                            <td>치위생학개론<br> 보건관 203</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>생활영어 1<br> 문화관 201</td>
                            <td>대인관계능력<br> 문화관 202</td>
                            <td></td>
                            <td>치아형태학<br> 보건관 203</td>
                            <td>치위생학개론<br> 보건관 203</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>치아형태학<br> 보건관 203</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>치아형태학<br> 보건관 203</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>보건교육학<br> 문화관 504</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>보건교육학<br> 문화관 504</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>