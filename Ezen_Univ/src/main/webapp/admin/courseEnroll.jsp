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
    <link rel="stylesheet" href="../css/courseEnroll.css">
    <script>
        function selectAtt(selectAll){
            const checkboxes = document.getElementsByName('student');
            
        }
    function courseMatchStudent(){
        const cidx = document.getElementById('coursename').value;
        const studentlist = document.getElementsByClassName('studentlist');
        
    }
    </script>
</head>
<body>
    <div class="header">
        <iframe src = "../main/navigation_a.jsp" width = "100%" height="55" ></iframe>
    </div>
    <div class="container">
        <div class="sidebar">
            <div class="myinfo">
                <iframe src = "../leftmenu/myinfo_a.jsp" width="100%" height="100"></iframe>
            </div>
            <div class="menubar">
                <iframe src = "../leftmenu/courseEnroll_a.jsp" width="100%" height="100%"></iframe>
            </div>
        </div>
        <div class="contents">
            <h3>강의 리스트</h3>
            <div class="first-line">
                년도 <input type="text" value="2023" disabled> 학기 <input type="text" value="1" disabled>
            </div>
            <div class="courselist">
                <table>
                    <thead>
                        <tr>
                            <td style="width: 40px;">No</td>
                            <td>과목명</td>
                            <td style="width: 100px;">세부전공</td>
                            <td style="width: 100px;">수강학년</td>
                            <td style="width: 70px;">이수구분</td>
                            <td style="width: 150px;">학점</td>
                            <td style="width: 100px;">강의실</td>
                            <td style="width: 100px;">시간표</td>
                            <td style="width: 200px;">담당교수</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td><button id="coursename" value="cidx" onclick="courseMatchStudent()">생활영어1</button></td>
                            <td>치위생학과</td>
                            <td>1</td>
                            <td>교양필수</td>
                            <td>2</td>
                            <td>문화관 504</td>
                            <td>월1 월2</td>
                            <td>네시포라</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td><button onclick="">대인관계능력</button></td>
                            <td>치위생학과</td>
                            <td>1</td>
                            <td>교양필수</td>
                            <td>2</td>
                            <td>문화관 504</td>
                            <td>화1 화2</td>
                            <td>이성희</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td><button onclick="">보건교육학</button></td>
                            <td>치위생학과</td>
                            <td>1</td>
                            <td>교양선택</td>
                            <td>2</td>
                            <td>문화관 504</td>
                            <td>월5 월6</td>
                            <td>한예슬</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td><button onclick="">치아형태학</button></td>
                            <td>치위생학과</td>
                            <td>1</td>
                            <td>전공필수</td>
                            <td>3</td>
                            <td>보건관 203</td>
                            <td>목2 목3 목4</td>
                            <td>전주연</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td><button onclick="">치과위생학개론</button></td>
                            <td>치위생학과</td>
                            <td>1</td>
                            <td>전공필수</td>
                            <td>2</td>
                            <td>보건관 203</td>
                            <td>화1 화2</td>
                            <td>남용옥</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="studentlist">
                <div class="name-button">
                    <span>치아형태학</span>
                    <button style="cursor: pointer;" onclick="">일괄 등록</button>
                </div>
                <table>
                    <thead>
                        <tr>
                            <td style="width: 40px;"><input type="checkbox" name="student" value="selectAll" onclick="selectAtt(this)"></td>
                            <td style="width: 40px;">순번</td>
                            <td style="width: 100px;">이름</td>
                            <td style="width: 120px;">학번</td>
                            <td style="width: 40px;">학년</td>
                            <td style="width: 180px;">학과</td>
                            <td>처리</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="checkbox" name="student" value="sidx1"></td>
                            <td>1</td>
                            <td>김이젠1</td>
                            <td>202310101</td>
                            <td>1</td>
                            <td>치위생학과</td>
                            <td><button value="sidx1" onclick="">등록</button></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="student" value="sidx2"></td>
                            <td>2</td>
                            <td>김이젠2</td>
                            <td>202310102</td>
                            <td>1</td>
                            <td>치위생학과</td>
                            <td><button value="sidx2" onclick="">등록</button></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="student" value="sidx3"></td>
                            <td>3</td>
                            <td>김이젠3</td>
                            <td>202310103</td>
                            <td>1</td>
                            <td>치위생학과</td>
                            <td><button value="sidx3" onclick="">등록</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>