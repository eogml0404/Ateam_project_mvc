<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/iframe.css">
    <link rel="stylesheet" href="../css/attmanage.css">
<style>
  span {
        font-size: 40px;
        font-weight: 700;
    }

    .openDate {
        display: flex;
        flex-direction: column;
        align-items: center;
        position: relative; /* 부모 요소에 대한 상대적 위치 설정 */
    }

    h1 {
        text-align: center;
    }

    ul{
        list-style-type: none;
        width: 80%;
        border: 3px solid whitesmoke ;

    }

    ul li{
        font-size: 1.1em;
        margin-bottom: 10px;
        text-align: center;

    }

    ul li:nth-child(even){
        background-color: aliceblue;
    }

    .fixed {
      
        margin: 50px;
        width: 700px;
        height: 150px;
        padding: 8px;
    }

    legend {
        color: red;
        font-weight: bold;
    }

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
             <iframe src = "../leftmenu/openDate_a.jsp" width="100%" height="100%"></iframe>
        </div>
    </div>
    <div class="contents">
        <div class="openDate"> 
        <h1>개강날짜 등록</h1>
        <br>
        <input type="date" id="dateInput">
            <br>
            <div>
            <p>
                <span id="dateInfoYear"></span>
                <span id="dateInfoSemester"></span>
            </p>
            </div>
            <br>
            
        <ul><li id="weekInfo"></li></ul>
            

        </div>
        
        
    </div>
    <fieldset class="fixed">
        <legend>공지</legend>
        이젠 대학에서의 개강날짜 등록은 월요일만 가능합니다.
    
    </fieldset>

</div>

<script>
    const dateInput = document.getElementById('dateInput');
    const dateInfoYear = document.getElementById('dateInfoYear');
    const dateInfoSemester = document.getElementById('dateInfoSemester');
    const weekInfo = document.getElementById('weekInfo');

    function updateInfo() {
        const selectedDate = new Date(dateInput.value);
        const year = selectedDate.getFullYear();
        const month = selectedDate.getMonth() + 1;
        let semester = "";

        if (selectedDate.getDay() !== 1) {
            alert('월요일을 선택해야 합니다. 다시 선택해주세요.');
            return;
        }


        if (month >= 2 && month <= 3) {
            semester = "년 1학기";
        } else if (month >= 8 && month <= 9) {
            semester = "년 2학기";
        } else {
            
            alert('1학기는 2~3월, 2학기는 8~9월에 개강이 가능합니다.')
            return;
            
        }

        dateInfoYear.textContent = year;
        dateInfoSemester.textContent = semester;

        weekInfo.innerHTML = ""; // Clear previous entries

        let weekStartDate = new Date(selectedDate);
        let weekEndDate = new Date(selectedDate);

        for (let i = 1; i <= 16; i++) {
            while (weekStartDate.getDay() === 0 || weekStartDate.getDay() === 4) {
                weekStartDate.setDate(weekStartDate.getDate() + 1);
            }

            weekEndDate = new Date(weekStartDate);
            while (weekEndDate.getDay() === 0 || weekEndDate.getDay() === 4) {
                weekEndDate.setDate(weekEndDate.getDate() + 1);
            }
            weekEndDate.setDate(weekEndDate.getDate() + 4);

            const weekItem = document.createElement('li');
            weekItem.textContent = ` ${i} 주차: ${weekStartDate.getMonth() + 1}월 ${weekStartDate.getDate()}일 ~ ${weekEndDate.getMonth() + 1}월 ${weekEndDate.getDate()}일`;
            weekInfo.appendChild(weekItem);

            weekStartDate.setDate(weekStartDate.getDate() + 7);
        }
        
        // Store the selected date in localStorage
        localStorage.setItem('selectedDate', dateInput.value);
    }

    // Initialize the date input with the stored value from localStorage
    const storedDate = localStorage.getItem('selectedDate');
    if (storedDate) {
        dateInput.value = storedDate;
        updateInfo();
    }

    dateInput.addEventListener('change', updateInfo);

</script>
</body>
</html>





