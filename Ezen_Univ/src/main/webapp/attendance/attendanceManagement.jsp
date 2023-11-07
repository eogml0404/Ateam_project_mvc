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
                <iframe src = "../leftmenu/attendance_p.jsp" width="100%" height="466"></iframe>
            </div>
        </div>
        <div class="contents">
            <h3>출석관리</h3>
            <div class="select-sub">
                <form> 
                    교과목명
                    <input type="text" value="교수강의과목" disabled>
                </form>
            </div>
            <div class="student-list">
                <form>
                    <div class="btn">
                        <button type="button">저장</button>
                    </div>
                    <div class="std-list">
                        <table>
                            <thead>
                                <tr>
                                    <td style="width: 5px;">
                                        <input type="checkbox" name="student" value="selectAll" onclick="selectAtt(this)">
                                    </td>
                                    <td style="width: 5px;">순번</td>
                                    <td style="width: 20px;">이름</td>
                                    <td style="width: 25px;">학번</td>
                                    <td style="width: 5px;">출결구분</td>
                                    <td style="width: 40px;">비고</td>
                                    <td style="width: 60px;">처리</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr style="height: 20px;">
                                    <td>
                                        <input type="checkbox" name="student" value="sidx1">
                                    </td>
                                    <td>1</td>
                                    <td>김이젠1</td>
                                    <td>202310101</td>
                                    <td><input class="attenvalue" type="text" id="value1" value="" disabled></td>
                                    <td></td>
                                    <td>
                                        <input type="radio" name="attendvalue1" value="출석" onclick="getValue(event,1)">출석
                                        <input type="radio" name="attendvalue1" value="지각" onclick="getValue(event,1)">지각
                                        <input type="radio" name="attendvalue1" value="조퇴" onclick="getValue(event,1)">조퇴
                                        <input type="radio" name="attendvalue1" value="결석" onclick="getValue(event,1)">결석
                                    </td>
                                </tr>
                                <tr style="height: 20px;">
                                    <td>
                                        <input type="checkbox" name="student" value="sidx2">
                                    </td>
                                    <td>2</td>
                                    <td>김이젠2</td>
                                    <td>202310102</td>
                                    <td><input class="attenvalue" type="text" id="value2" value="" disabled></td>
                                    <td></td>
                                    <td>
                                        <input type="radio" name="attendvalue2" value="출석" onclick="getValue(event,2)">출석
                                        <input type="radio" name="attendvalue2" value="지각" onclick="getValue(event,2)">지각
                                        <input type="radio" name="attendvalue2" value="조퇴" onclick="getValue(event,2)">조퇴
                                        <input type="radio" name="attendvalue2" value="결석" onclick="getValue(event,2)">결석
                                    </td>
                                </tr>
                                <tr style="height: 20px;">
                                    <td>
                                        <input type="checkbox" name="student" value="sidx3">
                                    </td>
                                    <td>3</td>
                                    <td>김이젠3</td>
                                    <td>202310103</td>
                                    <td><input class="attenvalue" type="text" id="value3" value="" disabled></td>
                                    <td></td>
                                    <td>
                                        <input type="radio" name="attendvalue3" value="출석" onclick="getValue(event,3)">출석
                                        <input type="radio" name="attendvalue3" value="지각" onclick="getValue(event,3)">지각
                                        <input type="radio" name="attendvalue3" value="조퇴" onclick="getValue(event,3)">조퇴
                                        <input type="radio" name="attendvalue3" value="결석" onclick="getValue(event,3)">결석
                                    </td>
                                </tr>
                                <tr style="height: 20px;">
                                    <td>
                                        <input type="checkbox" name="student" value="sidx4">
                                    </td>
                                    <td>4</td>
                                    <td>김이젠4</td>
                                    <td>202310104</td>
                                    <td><input class="attenvalue" type="text" id="value4" value="" disabled></td>
                                    <td></td>
                                    <td>
                                        <input type="radio" name="attendvalue3" value="출석" onclick="getValue(event,4)">출석
                                        <input type="radio" name="attendvalue3" value="지각" onclick="getValue(event,4)">지각
                                        <input type="radio" name="attendvalue3" value="조퇴" onclick="getValue(event,4)">조퇴
                                        <input type="radio" name="attendvalue3" value="결석" onclick="getValue(event,4)">결석
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="../js/attendanceManage.js"></script>
</body>
</html>