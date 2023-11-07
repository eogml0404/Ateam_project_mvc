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
        .contents .table{
            margin: 10px;

        }
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
            <h3>교수 정보</h3>
            
            <table border=1 style="width:600px; text-align:center;">
				<tr>
				<tr>
					<th>교수번호</th>
					<td>20131105</td>
					<th>이름</th>
					<td>홍길동</td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td>1972-05-12</td>
					<th>연락처</th>
					<td>010-1234-1234</td>
				</tr>
				<tr>
					<th>단과대학</th>
					<td>공과대학</td>
					<th>학과</th>
					<td>정보통신공학과</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td colspan='3'>ezen12@naver.com</td>
				</tr>
			</table>
        </div>
    </div>
</body>
</html>