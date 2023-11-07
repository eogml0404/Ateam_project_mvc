<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=UTF-8");
%>

<%
String memberId = request.getParameter("memberId");
String memberPwd = request.getParameter("memberPwd");
out.println(memberId);
out.println(memberPwd);
%>