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
	<link rel="stylesheet" href="../css/modifyinfo.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
            <table class="table" width="600px" name="frm">
				<tr>
				 <td>
				  <table width="100%">
				   <tr align="center">
					<td style="font-size:20px"><b><i class="fa fa-user-circle" aria-hidden="true"></i> 개인정보 수정</b></td>
				   </tr>
				  </table>
				  
				  <table width="100%">
				   <form action="professorInfoUpdate.do" method="post" name="frm">
					<table class="table2">
					   <tr>
						   <td width="35%" align="right">아이디</td>
						   <td width="65%">ezen_professor</td>
					   </tr>
					   <tr>
						   <td width="35%" align="right">이   름</td>
						   <td width="65%">김광수</td>
					   </tr>
					   <tr>
						   <td width="35%" align="right">교수번호</td>
						   <td width="65%">20230111</td>
					   </tr>
					   <tr>
						   <td width="35%" align="right">소속대학</td>
						   <td width="65%">공과대학</td>
					   </tr>
					   <tr>
						   <td width="35%" align="right">학   과</td>
						   <td width="65%">정보통신공학과</td>
					   </tr>
					   <tr>
						   <td align="right">연락처</td>
						   <td><input type="tel" name="professorPhone" placeholder="01000000000" value="01055556666" /></td>
					   </tr>
					   <tr>
						   <td align="right">이메일</td>
						   <td><input type="email" name="professorEmail" placeholder="id@ezen_univ.com" value="rhkdtn@naver.com" /></td>
					   </tr>
					</table>
					<table class="table3" width="100%">
					   <tr align="center">
						   <td>
						   <input type="button" name="btn" value="확인" onclick="check();">
						   </td>
					   </tr>
					</table>
				   </form>
				  </table>
				 </td>
				</tr>
			   </table>
			   
			   <table name="frm">
				<tr>
				 <td>
				  <table class="table4" width="100%">
				   <tr>
					<td class="pwd" onClick="location.href='../mypage/modifypassword_p.jsp'" style="cursor:pointer;">
					<b><i class="fa fa-key" aria-hidden="true"></i> 비밀번호 변경하기</b>
					</td>
				   </tr>
				  </table>
				 </td>
				</tr>
			   </table>
        </div>
    </div>
</body>
</html>