<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/searchInfo.css">
    <script>
        function searchid(){
            const idinfo = document.querySelector('.idinfo');
            /*
            아이디 조회, if문
            if(일치할 시){
               */
            idinfo.classList.add('correct');
            /* 
            }else{
                alert('일치하는 정보가 없습니다');
            }
            */
           
        }
        function searchpwd(){
            const pwdinfo = document.querySelector('.pwdinfo');

            pwdinfo.classList.add('correct');
        }
    </script>
</head>
<body>
    <div class="wrapper">
        <h2>회원정보찾기</h2><hr>
        <div class="searchId-box">
            <h3>| 아이디찾기 |</h3><br>
            <form>
                <div class="searchId">
                    <input type="text"><label>이름</label>
                    <input type="email"><label>이메일</label><br>
                    <button type="button" class="btn" onclick="searchid()">찾기</button>
                </div>
            </form>
            <p class="idinfo">회원님의 아이디는 <span>ezen123</span> 입니다.</p>
        </div>
        <hr>
        <div class="searchId-box">
            <h3>| 비밀번호찾기 |</h3><br>
            <form>
                <div class="searchPwd">
                    <input type="text"><label>아이디</label><input type="text"><label>이름</label><br>
                    <input type="email"><label>이메일</label><br>
                    <button type="button" class="btn" onclick="searchpwd()">찾기</button>
                </div>
            </form>
            <p class="pwdinfo">회원님의 비밀번호가 <span>생년월일 6자리</span>로 초기화되었습니다.</p>
        </div>
    </div>
</body>
</html>