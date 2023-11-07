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
	<link rel="stylesheet" href="../css/modifypassword.css">
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
					<td style="font-size:20px"><b><i class="fa fa-key" aria-hidden="true"></i> 비밀번호 변경</b></td>
				   </tr>
				  </table>
				  
				  <table class="table2" width="100%">
				   <form action="professorInfoUpdate.do" method="post" name="frm">
					<table>
					   <tr>
						   <td width="40%" align="right">아이디</td>
						   <td width="60%">ezen_professor</td>
					   </tr>
					   <tr>
						   <td align="right">현재 비밀번호</td>
						   <td><input type="password" name="professorPwd" required /></td>
					   </tr>
					   <tr>
						   <td align="right">비밀번호</td>
						   <td><input type="password" name="professorNewPwd" required /></td>
					   </tr>
					   <tr>
						   <td align="right">비밀번호 확인</td>
						   <td><input type="password" name="professorRePwd" required /></td>
					   </tr>
					   <tr>
						   <td colspan="2" align="center" style="color:red">※ 영문, 숫자, 특수기호 포함 8자 이상</td>
					   </tr>
					</table>
					<table class="table3" width="100%">
					   <tr align="center">
						   <td>
						   <input type="button" name="btn" value="변경" onclick="check();">
						   </td>
					   </tr>
					</table>
				   </form>
				  </table>
				 </td>
				</tr>
			   </table>
        </div>
    </div>
</body>
</html>