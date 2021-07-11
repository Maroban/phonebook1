<%@page import="com.javaex.vo.PersonVo"%>
<%@page import="com.javaex.dao.PhoneDao"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
PhoneDao phoneDao = new PhoneDao();

// 파라미터 값 추출(4개)
int personId = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String hp = request.getParameter("hp");
String company = request.getParameter("company");

// 파라미터를 Vo로 묶기
PersonVo personVo = new PersonVo(personId, name, hp, company);

// Dao에서 update(personVo)를 이용하여 수정
int count = phoneDao.update(personVo);

// 리다이렉트
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