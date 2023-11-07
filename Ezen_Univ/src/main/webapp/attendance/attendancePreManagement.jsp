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
    <link rel="stylesheet" href="../css/attendanceSituation.css">
</head>
<body>
    <div class="header">
        <iframe src = "../main/navigation_s.jsp" width = "100%" height="55" ></iframe>
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
            <div class="first_line">
                <form> 
                    교과목명
                    <select>
                        <option>교수강의과목1</option>
                        <option>교수강의과목2</option>
                        <option>교수강의과목3</option>
                        <option>교수강의과목4</option>
                    </select>
                    총 인원 <input type="text" name="studentTotal" value="20" disabled/>
                </form>
            </div>
	        <div class="mytable">
	            <table>
	                <thead>
	                    <tr>
	                        <td style="width:50px">주차</td>
	                        <td style="width:400px">수업일 및 시간</td>
	                        <td style="width:50px">출석</td>
                            <td style="width:50px">지각</td>
                            <td style="width:50px">조퇴</td>
                            <td style="width:50px">결석</td>
                            <td style="width:150px">처리</td>
	                    </tr>
	                </thead>
	                <tbody>
	                    <tr>
	                        <td>1</td>
	                        <td>03월 02일 10:00~10:50</td>
	                        <td>20</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                            <td><button type="button" value="" onclick="location.href='attendanceManagement.jsp'">출결처리</button></td>
	                    </tr>
						<tr>
	                        <td></td>
	                        <td>03월 02일 11:00~11:50</td>
	                        <td>20</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                            <td><button type="button">출결처리</button></td>
	                    </tr>
						<tr>
	                        <td>2</td>
	                         <td>03월 09일 10:00~10:50</td>
	                        <td>12</td>
                            <td>1</td>
                            <td>7</td>
                            <td>1</td>
                            <td><button type="button">출결처리</button></td>
	                    </tr>
						<tr>
	                        <td></td>
	                        <td>03월 09일 11:00~11:50</td>
	                        <td>12</td>
                            <td>1</td>
                            <td>7</td>
                            <td>1</td>
                            <td><button type="button">출결처리</button></td>
	                    </tr>
						<tr>
	                        <td>3</td>
	                        <td>03월 16일 10:00~10:50</td>
	                        <td>17</td>
                            <td>3</td>
                            <td>0</td>
                            <td>0</td>
                            <td><button type="button">출결처리</button></td>
	                    </tr>
						<tr>
	                        <td></td>
	                        <td>03월 16일 11:00~11:50</td>
	                        <td>17</td>
                            <td>3</td>
                            <td>0</td>
                            <td>0</td>
                            <td><button type="button">출결처리</button></td>
	                    </tr>
						<tr>
	                        <td>4</td>
	                        <td>03월 23일 10:00~10:50</td>
	                        <td>20</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                            <td><button type="button">출결처리</button></td>
	                    </tr>
						<tr>
	                        <td></td>
	                        <td>03월 23일 11:00~11:50</td>
	                        <td>20</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                            <td><button type="button">출결처리</button></td>
	                    </tr>
	                </tbody>
	            </table>
	        </div>
        </div>
	</div>

</body>
</html>