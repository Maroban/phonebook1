<%@page import="com.javaex.dao.PhoneDao"%>
<%@page import="com.javaex.vo.PersonVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
PhoneDao phoneDao = new PhoneDao();

// ID 추출
String id = request.getParameter("id");
int personId = Integer.parseInt(id);

// Dao에서 ID의 정보 가져오기
PersonVo personVo = phoneDao.getPerson(personId);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호 수정</h1>

	<p>수정 화면입니다. 아래 항목을 수정하고 "수정" 버튼을 클릭하세요.</p>

	<form action="update.jsp" method="get">
		<label>이름:</label>
		<input type="text" name="name" value="<%=personVo.getName()%>">
		<br> 전화번호:
		<input type="text" name="hp" value="<%=personVo.getHp()%>">
		<br> 회사:
		<input type="text" name="company" value="<%=personVo.getCompany()%>">
		<br>

		<input type="hidden" name="id" value="<%=personVo.getPerson_id()%>">

		<button type="submit">수정</button>

	</form>

</body>
</html>