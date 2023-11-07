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
	            <iframe src = "../leftmenu/myinfo_s.jsp" width="100%" height="200"></iframe>
	        </div>
	        <div class="menubar">
	            <iframe src = "../leftmenu/attendance_s.jsp" width="100%" height="466"></iframe>
	        </div>
	    </div>
	    <div class="contents">
            <h3>출석현황조회</h3>
            <div class="first_line">
                년도 <input type="text" name="year" value="2023" disabled/> 학기 <input type="text" name="turm" value="1" disabled/>
            </div>
            <div class="list_table">
                <table>
                    <thead>
                        <tr>
                            <td style="width:30px">이수구분</td>
                            <td style="width:50px">과목명</td>
                            <td style="width:10px">학점</td>
                            <td style="width:30px">교수</td>
                            <td style="width:30px">강의실</td>
                            <td style="width:40px">시간표</td>
                            <td style="width:30px">결석률/미달여부</td>
							<td style="width:30px">비고</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>전공필수</td>
                            <td>치과위생학개론</td>
                            <td>2</td>
                            <td>남용옥</td>
                            <td>보건관203</td>
                            <td>화1 화2</td>
                            <td>0% / N</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>전공필수</td>
                            <td>치아형태학</td>
                            <td>3</td>
                            <td>전주희</td>
                            <td>보건관203</td>
                            <td>목2 목3 목4</td>
                            <td>5% / N</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>전공선택</td>
                            <td>구강해부학</td>
                            <td>3</td>
                            <td>최부영</td>
                            <td>문화관B102</td>
                            <td>월1 월2 수1</td>
                            <td>40% / N</td>
                            <td>출석미달</td>
                        </tr>
                        <tr>
                            <td>교양필수</td>
                            <td>생활영어1</td>
                            <td>2</td>
                            <td>네시포라</td>
                            <td>학림관</td>
                            <td>금3 금4</td>
                            <td>0% / N</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>교양필수</td>
                            <td>대인관계능력</td>
                            <td>2</td>
                            <td>이성희</td>
                            <td>문화관201</td>
                            <td>화3 화4</td>
                            <td>0% / N</td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="contents_details">
	            <div class="details_first_line">
	            	출석 <input type="text" name="attendance" value="20" disabled/> 지각 <input type="text" name="late" value="5" disabled/>
	            	 조퇴 <input type="text" name="leave_early" value="3" disabled/> 결석 <input type="text" name="absent" value="3" disabled/>
	            </div>
	            <div class="mytable">
	                <table>
	                    <thead>
	                        <tr>
	                            <td style="width:30px">주차</td>
	                            <td style="width:200px">수업일 및 시간</td>
	                            <td style="width:100px">출결 현황</td>
	                        </tr>
	                    </thead>
	                    <tbody>
	                        <tr>
	                            <td>1</td>
	                            <td>03월 02일 10:00~10:50</td>
	                            <td>출석</td>
	                        </tr>
							<tr>
	                            <td></td>
	                            <td>03월 02일 11:00~11:50</td>
	                            <td>출석</td>
	                        </tr>
	                        <tr>
	                            <td>2</td>
	                            <td>03월 09일 10:00~10:50</td>
	                            <td>지각</td>
	                        </tr>
	                        	<tr>
	                            <td></td>
	                            <td>03월 09일 11:00~11:50</td>
	                            <td>지각</td>
	                        </tr>
	                        <tr>
	                            <td>3</td>
	                            <td>03월 16일 10:00~10:50</td>
	                            <td>결석</td>
	                        </tr>
							<tr>
	                            <td></td>
	                            <td>03월 16일 11:00~11:50</td>
	                            <td>결석</td>
	                        </tr>
	                        <tr>
	                            <td>4</td>
	                            <td>03월 23일 10:00~10:50</td>
	                            <td>출석</td>
	                        </tr>
	                        	<tr>
	                            <td></td>
	                            <td>03월 23일 11:00~11:50</td>
	                            <td>출석</td>
	                        </tr>
	                    </tbody>
	                </table>
	            </div>
            </div>
        </div>
	</div>

</body>
</html>