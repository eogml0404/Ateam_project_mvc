<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="../css/main.css">
</head>
<body>
    <div class="header">
        <iframe src = "../main/navigation_p.jsp" width = "100%" height="55" ></iframe>
    </div>
    <div class="container">
        <div class="sidebar">
            <div class="myinfo">
                <iframe src = "../leftmenu/myinfo_p.jsp" width="100%" height="100%"></iframe>
            </div>
        </div>
        <div class="contents">
            <div class="first-line">
                <div class="notice">
                    <h3>휴보강공지</h3><br>
                    <table>
                        <thead>
                            <tr>
                                <td>목록</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><a href="#">[휴강] [2023.10.25] 무선통신이론</a></td>
                            </tr>
                            <tr>
                                <td>[휴강] [2023.10.26] 즐거운 수학</td>
                            </tr>
                            <tr>
                                <td>[보강] [2023.10.27] 무선통신이론</td>
                            </tr>
                            <tr>
                                <td>[휴강] [2023.10.28] 시스템정보이론</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="banner" style="padding-top: 50px;">
                    <a href="https://www.cubeitac.com/" target="_blank"><img src="../images/banner.png" width="90%" height="150px"></a>
                </div>
            </div>
            <div class="p-table">
                <table class="table" id="mytable">
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
                        <tr class="t-one">
                            <td>1</td>
                            <td class="mon">생활영어 1<br> 문화관 201</td>
                            <td class="tue">대인관계능력<br> 문화관 202</td>
                            <td class="wed"></td>
                            <td class="thu"></td>
                            <td class="fri">치위생학개론<br> 보건관 203</td>
                        </tr>
                        <tr class="t-two">
                            <td>2</td>
                            <td>생활영어 1<br> 문화관 201</td>
                            <td>대인관계능력<br> 문화관 202</td>
                            <td></td>
                            <td>치아형태학<br> 보건관 203</td>
                            <td>치위생학개론<br> 보건관 203</td>
                        </tr>
                        <tr class="t-thr">
                            <td>3</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>치아형태학<br> 보건관 203</td>
                            <td></td>
                        </tr>
                        <tr class="t-fou">
                            <td>4</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>치아형태학<br> 보건관 203</td>
                            <td></td>
                        </tr>
                        <tr class="t-fiv">
                            <td>5</td>
                            <td>보건교육학<br> 문화관 504</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr class="t-six">
                            <td>6</td>
                            <td>보건교육학<br> 문화관 504</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr class="t-sev">
                            <td>7</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr class="t-eig">
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
    <script src="../js/main.js"></script>
</body>
</html>