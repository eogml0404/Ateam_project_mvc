<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/mypage_menu_style.css">
    <script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <div class="menuarea">
        <ul>
            <li>
                <div class="topmenu_name">
                    출석관리
                </div>
            </li>
            <li class="personalinfo">
                <a href="../attendance/attendanceSituation_p.jsp" target="mbody">
                <i class="fa fa-calendar" aria-hidden="true"></i>
                출석현황 조회
                </a>
            </li>
            <li class="personalinfo">
                <a href="../attendance/attendancePreManagement.jsp" target="mbody">
                <i class="fa fa-address-book-o" aria-hidden="true"></i>
                출석 관리
                </a>
            </li>
            <li class="personalinfo">
                <a href="../attendance/lackOfAttendance.jsp" target="mbody">
                <i class="fa fa-calendar-times-o" aria-hidden="true"  target="mbody"></i>
                출석 미달 관리
                </a>
            </li>
        </ul>
    </div>
</body>
</html>