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

	 <script>
	 
	 function displaySecondTable(){
		    var html = "<table>";
		    	html += "<tr>";
		    		html += "<td>NO</td>";
		    		html += "<td>이름</td>";
		    		html += "<td>학번</td>";
		    		html += "<td>결석일수</td>";
		    		html += "<td>결석률(%)</td>";
		    	html += "</tr>";
		        html += "</table>";

		    document.getElementById("hiddenTable").innerHTML=html;
		}
	 
    </script>
    
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
            <h3>출석 미달자 조회</h3>
            <div class="first_line">
                년도 <input type="text" name="year" value="2023" disabled/> 학기 <input type="text" name="turm" value="1" disabled/>
            </div>
            <div class="list_table">
                <table>
                    <thead>
                        <tr>
                            <td style="width:10px">NO</td>
                            <td style="width:50px">강의명</td>
                            <td style="width:30px">미달자 수 / 학생수</td>
                            <td style="width:30px">미달률(%)</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td onClick="displaySecondTable()" style="cursor:pointer;">C언어</td>
                            <td>4 / 40</td>
                            <td>10%</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>데이터 프로그래밍</td>
                            <td>1 / 50</td>
                            <td>2%</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>JAVA</td>
                            <td>0 / 40</td>
                            <td>0%</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>빅데이터 활용</td>
                            <td>2 / 40</td>
                            <td>2.5%</td>
                        </tr>
                    </tbody>
                </table>
              <b style="color:red">※ 출석 미달자 : 결석률이 25%를 초과하는 자</b>
            </div>
            <div style="height:7px;">&nbsp;</div>
            <div style="height:7px;">&nbsp;</div>
            <div style="height:7px;">&nbsp;</div>
            <div style="height:7px;">&nbsp;</div>
            <div style="height:7px;">&nbsp;</div>
            
            
            <div class="list_table">
            <table id="hiddenTable">
            <h3>C언어</h3>
                    <thead>
                        <tr>
                            <td style="width:10px">NO</td>
                            <td style="width:50px">이름</td>
                            <td style="width:30px">학번</td>
                            <td style="width:30px">결석일수</td>
                            <td style="width:30px">결석률(%)</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>김이젠</td>
                            <td>202301001</td>
                            <td>4 / 10</td>
                            <td>40%</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>김이젠2</td>
                            <td>202301002</td>
                            <td>5 / 10</td>
                            <td>50%</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>김이젠3</td>
                            <td>202301003</td>
                            <td>6 / 10</td>
                            <td>60%</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>김이젠4</td>
                            <td>202301004</td>
                            <td>3 / 10</td>
                            <td>30%</td>
                        </tr>
                    </tbody>
            </table>
            </div>
            
            
        </div>
	</div>

</body>
</html>