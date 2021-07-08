<%@page import="com.javaex.dao.PhoneDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%
PhoneDao phoneDao = new PhoneDao();

// ID 추출
int personId = Integer.parseInt(request.getParameter("id")); // 문자열로 오기 때문에 int로 변환한다.

// 삭제하기
int count = phoneDao.delete(personId);

//리다이렉트(리스트 요청)
response.sendRedirect("./list.jsp");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>