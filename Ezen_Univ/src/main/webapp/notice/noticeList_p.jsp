<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>

<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<link rel="stylesheet" href="../css/noticelist_p.css">

</head>
<body>
<div class="header">
    <iframe src = "../main/navigation_p.jsp" width = "100%" height="55" ></iframe>
</div>
<div class="wrapper">
    <div class="sidebar">
        <div class="myinfo">
            <iframe src = "../leftmenu/myinfo_p.jsp" width="100%" height="200"></iframe>
        </div>
        <div class="menubar">
            <iframe src = "../leftmenu/notice_p.jsp" width="100%" height="100%"></iframe>
        </div>
    </div>
    
    <div class="container">
        <h1>휴보강 공지</h1>
        <table class="noticelist" border=1 style="width:800px;" >	
            <thead>
                <tr>
                    <th style="width: 100px;">글번호</th>
                    <th>제목</th>
                    <th>작성일</th>
                    <th>조회수</th>
                </tr>
            </thead>
            <tbody style="border: 0;" >	
                <tr>
                    <th class="nidx">10</th>
                    <th class="title"><span class="new">new</span><a class="contents" href="noticeContents.jsp">[휴강][2023-11-06][고급프로그래밍 언어 및 실습]</a></th>
                    <th class="writeday">2023-11-04</th>
                    <th class="viewcnt">15</th>   
                </tr>
                <tr>
                    <th class="nidx">9</th>
                    <th class="title"><span class="new">new</span><a class="contents" href="noticeContents.jsp">[보강][2023-11-05][고급프로그래밍 언어 및 실습]</a></th>
                    <th class="writeday">2023-11-04</th>
            <th class="viewcnt">15</th>   
            </tr>
            <tr>
                <th class="nidx">8</th>
                <th class="title"><a class="contents" href="noticeContents.jsp">[휴강][2023-11-11][시스템 소프트웨어 설계]</a></th>
                <th class="writeday">2023-11-01</th>
                <th class="viewcnt">13</th>   
            </tr>
            <tr>
                <th class="nidx">7</th>
                <th class="title"><a class="contents" href="noticeContents.jsp">[보강][2023-11-01][시스템 소프트웨어 설계]</a></th>
                <th class="writeday">2023-11-01</th>
                <th class="viewcnt">13</th>   
            </tr>
            <tr>
                <th class="nidx">6</th>
                <th class="title"><a class="contents" href="noticeContents.jspl">[휴강][2023-11-13][시스템 소프트웨어 설계]</a></th>
                <th class="writeday">2023-10-27</th>
                <th class="viewcnt">12</th>   
            </tr>
            <tr>
                <th class="nidx">5</th>
                <th class="title"><a class="contents" href="noticeContents.jsp">[휴강][2023-11-08][시스템 소프트웨어 설계]</a></th>
                <th class="writeday">2023-10-27</th>
                <th class="viewcnt">12</th>   
            </tr>
            <tr>
                <th class="nidx">4</th>
                <th class="title"><a class="contents" href="noticeContents.jsp">[휴강][2023-11-04][시스템 소프트웨어 설계]</a></th>
                <th class="writeday">2023-10-27</th>
                <th class="viewcnt">12</th>   
            </tr>
            <tr>
                <th class="nidx">3</th>
                <th class="title"><a class="contents" href="noticeContents.jsp">[휴강][2023-11-04][시스템 소프트웨어 설계]</a></th>
                <th class="writeday">2023-10-27</th>
                <th class="viewcnt">12</th>   
            </tr>
            <tr>
                <th class="nidx">2</th>
                <th class="title"><a class="contents" href="noticeContents.jsp">[휴강][2023-11-07][시스템 소프트웨어 설계]</a></th>
                <th class="writeday">2023-10-27</th>
                <th class="viewcnt">12</th>   
            </tr>
            <tr>
                <th class="nidx">1</th>
                <th class="title"><a class="contents" href="noticeContents.jsp">[휴강][2023-11-06][시스템 소프트웨어 설계]</a></th>
                <th class="writeday">2023-10-27</th>
                <th class="viewcnt">12</th>   
            </tr>
        </tbody>
    </table>

    <table>
        <tr>
            <td style="width:700px"></td>
            <td>
                <div class="writediv"> 
                    <a class="noticewrite" href="noticewrite.jsp">
                        글쓰기
                    </a>
                </div>
            </td>
        </tr>
    </table>
    <br>

    <div class="pagination">
        <a href="#" class="first" title="첫페이지로 이동">&lt;&lt;</a>
        <a href="#" class="btnMove next" title="이전 페이지로 이동">&lt;</a>
        
        <span>
            <a href="#" id="page1" title="1 페이지로 이동">1</a>
            <a href="#" id="page2" title="2 페이지로 이동">2</a>
            <a href="#" id="page3" title="3 페이지로 이동">3</a>
            <a href="#" id="page4" title="4 페이지로 이동">4</a>
            <a href="#" id="page5" title="5 페이지로 이동">5</a>
            <a href="#" id="page6" title="6 페이지로 이동">6</a>
            <a href="#" id="page7" title="7 페이지로 이동">7</a>
            <a href="#" id="page8" title="8 페이지로 이동">8</a>
            <a href="#" id="page9" title="9 페이지로 이동">9</a>
            <a href="#" id="page10" title="10 페이지로 이동">10</a>
        </span>

       
        <a href="#" class="btnMove next" title="다음 페이지로 이동">&gt;</a>
        <a href="#" class="btnMove last" title="끝페이지로 이동">&gt;&gt;</a>    
    </div> 
    <br>
    
    <form class="search-form" method="post">
        <table border=0>
            <tr>
                <td style="width:500px"></td>
                <td>
                    <select name="searchType">
                        <option value="subject">제목</option>
                        <option value="writer">작성자</option>
                    </select>
                </td>
                <td><input type="text" class="keyword" placeholder="검색어를 입력해주세요." size=20></td>
                <td><input type="submit" class="btn" value="검색"></td>
            </tr>
        </table>
    </form>
            
            
    </div>
</div>
    

</body>
</html>