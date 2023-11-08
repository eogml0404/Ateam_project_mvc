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
	<link rel="stylesheet" href="../css/courseRegister.css">
    <style>
        .container{
            display: flex;
        }
        .sidebar{w
            width: 50%;
        }
        .myinfo{
            width: 100%;
        }
        .menubar{
            width: 100%;
        }
        .contents{
            padding: 20px;
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
                <iframe src = "../leftmenu/myinfo_a.jsp" width="100%" height="100"></iframe>
            </div>
            <div class="menubar">
                <iframe src = "../leftmenu/courseRegister_a.jsp" width="100%" height="700"></iframe>
            </div>
        </div>
        <div class="contents">
             <h3>강의등록현황</h3>
             <div class="first_line">
                년도 <input type="text" name="year" value="2023" disabled/> 학기 <input type="text" name="turm" value="1" disabled/>
             </div>
             <div class="list_table">
                <table>
                    <thead>
                        <tr>
                            <td style="width:10px">NO</td>
                            <td style="width:50px">과목명</td>
                            <td style="width:30px">담당교수</td>
                            <td style="width:30px">전공</td>
                            <td style="width:30px">수강학년</td>
                            <td style="width:30px">이수구분</td>
                            <td style="width:30px">학점</td>
                            <td style="width:30px">시간표</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td onClick="openCourseRegister()" style="cursor:pointer;">사물인터넷통신</td>
                            <td>박광진</td>
                            <td>정보통신공학</td>
                            <td>1</td>
                            <td>교양필수</td>
                            <td>2</td>
                            <td>공학관 404(화3,4/목1)</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>시스템소프트웨어설계</td>
                            <td>박대희</td>
                            <td>정보통신공학</td>
                            <td>1</td>
                            <td>전공필수</td>
                            <td>3</td>
                            <td>공학관 404(월8/수7,8)</td>
                        </tr>
                    </tbody>
                </table>
             </div>
            <br>
            <div align="right">
            	<input type="button" name="btn" value="강의 등록하기" onclick="check();" style="width:120px">
            </div>
			<br>
			<br>
			<table class="register" style="width:100%">
			<h3 align ="center">강의등록현황</h3>
			<br>
			<tr>
				<td align="center" width="15%">과목명</td>
				<td style="padding: 0px 0px 0px 15px; width:35%;">
					<input type="text" name="coursename" value="고급프로그래밍 언어 및 실습">
				</td>
				<td align="center" width="15%">전공</td>
				<td style="padding: 0px 0px 0px 15px; width:35%;">
					<input type="text" list="major-options" />
					<datalist id="major-options">
						<option value="건축공학과" />
						<option value="고분자나노공학과" />
						<option value="유기소재섬유공학과" />
						<option value="기계공학과" />
						<option value="기계설계공학부" />
						<option value="기계시스템공학부" />
						<option value="도시공학과" />
						<option value="바이오메디컬공학부" />
						<option value="산업정보시스템공학과" />
						<option value="소프트웨어공학과" />
						<option value="신소재공학부" />
						<option value="전기공학과" />
						<option value="전자공학과" />
						<option value="정보통신공학과" />
						<option value="컴퓨터인공지능학부" />
						<option value="토목환경자원에너지공학부" />
						<option value="항공우주공학" />
						<option value="화학공학과" />
					</datalist>
					&ensp;
					<input type="button" name="btn" value="조회" onclick="check();">
	            </td>
			</tr>
			<tr>
				<td align="center">담당교수</td>
				<td style="padding: 0px 0px 0px 15px; width:35%;">
					<input type="text" list="courseprofessor-options" />
					<datalist id="courseprofessor-options">
						<option value="박광진" />
						<option value="박대희" />
						<option value="최세영" />
						<option value="이선희" />
					</datalist>
	            </td>
	            <td align="center">교수번호</td>
				<td style="padding: 0px 0px 0px 15px; width:35%;">
					<input type="text" name="professornumber" value="20231107">
	            </td>
			<tr>
				<td align="center">수강학년</td>
				<td style="padding: 0px 0px 0px 15px; width:35%;">
					<input type="text" list="grade-options" />
					<datalist id="grade-options">
						<option value="1" />
						<option value="2" />
						<option value="3" />
						<option value="4" />
				</datalist>
				</td>
				<td align="center">이수구분</td>
				<td style="padding: 0px 0px 0px 15px; width:35%;">
					<input type="text" list="seperation-options" />
					<datalist id="seperation-options">
						<option value="교양선택" />
						<option value="교양필수" />
						<option value="전공선택" />
						<option value="전공필수" />
					</datalist>
				</td>
			</tr>
			<tr>
				<td align="center">학점</td>
				<td style="padding: 0px 0px 0px 15px; width:35%;">
					<input type="text" list="score-options" />
					<datalist id="score-options">
						<option value="1" />
						<option value="2" />
						<option value="3" />
					</datalist>
				</td>
				<td align="center">강의실</td>
				<td style="padding: 0px 0px 0px 15px; width:35%;">
					<input type="text" name="courseroom" value="공학관 전산실 3">
				</td>
			</tr>
			<tr>
				<td align="center">요일</td>
				<td style="padding: 0px 0px 0px 15px; width:35%;">
					<input type="text" list="courseweek-options" />
					<datalist id="courseweek-options">
						<option value="월" />
						<option value="화" />
						<option value="수" />
						<option value="목" />
						<option value="금" />
						<option value="토" />
					</datalist>
				</td>
				<td align="center">교시</td>
				<td style="padding: 0px 0px 0px 30px; width:35%;">
					<label for="1교시"><input type="checkbox" id="1period" name="1period" value=1> 1교시</label>&emsp;
					<label for="2교시"><input type="checkbox" id="2period" name="2period" value=2> 2교시</label>&emsp;
					<label for="3교시"><input type="checkbox" id="3period" name="3period" value=3> 3교시</label>&emsp;
					<br>
					<label for="4교시"><input type="checkbox" id="4period" name="4period" value=4> 4교시</label>&emsp;
					<label for="5교시"><input type="checkbox" id="5period" name="5period" value=5> 5교시</label>&emsp;
					<label for="6교시"><input type="checkbox" id="6period" name="6period" value=6> 6교시</label>&emsp;
					<br>
					<label for="7교시"><input type="checkbox" id="7period" name="7period" value=7> 7교시</label>&emsp;
					<label for="8교시"><input type="checkbox" id="8period" name="8period" value=8> 8교시</label>&emsp;
					<label for="9교시"><input type="checkbox" id="9period" name="9period" value=9> 9교시</label>&emsp;
				</td>
			</tr>
			</table>
			<br>
			<div align="center">
				<input type="button" name="btn" value="등록" onclick="check();">
			</div>
      </div>
    </div>
</body>
</html>

