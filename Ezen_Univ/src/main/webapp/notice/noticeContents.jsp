<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet" href="../css/iframe.css">
<style>

.deletebtn, .writebtn{
    background-color: black;
    border-radius: 5px;
    color: whitesmoke;
    text-decoration: none;
}   
.list{
    display: flex;
    justify-content: space-between;
    align-items: center; 
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
.link{
    background-color: black;
    border-radius: 5px;
    color: whitesmoke;
    text-decoration: none;
    padding: 3px;
    font-size: 0.85em;  
}
.container{
    display: flex;
} 
.text-box{
    width: 100%;
    border: 2px solid black;
    height: 500px;
}

.noticewrite{
    border-collapse: collapse;
    width: 80%;
}

.contents {
    display: flex;
    flex-direction: column;
    align-items: center; 
    margin-left: -70px;
}
.subject{
    display: flex;
    border-bottom: 3px solid black;
    border-top: 3px solid black;
}

.subject td{
    text-align: center;
    margin: 5px;
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
                <iframe src = "../leftmenu/notice_p.jsp" width="100%" height="100%"></iframe>
            </div>
        </div>
    <div class="contents">
        <h1>휴보강 공지사항</h1>
        <table class="noticewrite">
        <tr class="subject">
            <td>제목</td>
            <td>[휴강][2023-11-06][고급프로그래밍 언어 및 실습]
            </td>        
        </tr>
        <tr>
            <td class="text-box">
                공지사항내용입니다.<br>
                휴강이라고
            </td>
        </tr>
        <tr>
            <td class="list">
                <a class="link" href="noticeList_p.jsp">목록</a>
            
                <div>
                <a class="link" href="noticemodify.jsp">수정</a>
                <button type="submit" class="deletebtn">삭제</button> 
                </div>
            </td>
        </tr> 
        </table>
    </div>
</div>
</body>
</html>