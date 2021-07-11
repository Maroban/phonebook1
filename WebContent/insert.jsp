<%@ page import="java.util.List"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
// post 방식 사용 시 한글 깨짐 방지
request.setCharacterEncoding("UTF-8");

// 파라미터 영역에 있는 값 꺼내기
String name = request.getParameter("name");
String hp = request.getParameter("hp");
String company = request.getParameter("company");

// PersonVo로 묶기
PersonVo personVo = new PersonVo(name, hp, company);

// insert 메소드를 사용해 저장
PhoneDao phoneDao = new PhoneDao();
phoneDao.insert(personVo);

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