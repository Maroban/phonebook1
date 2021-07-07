<%@page import="java.util.List"%>
<%@page import="com.javaex.dao.PhoneDao"%>
<%@page import="com.javaex.vo.PersonVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
// Request header 안에 파라미터 영역에 있는 값 꺼내기
String name = request.getParameter("name");
String hp = request.getParameter("hp");
String company = request.getParameter("company");

// PersonVo로 묶기
PersonVo personVo = new PersonVo(name, hp, company);

// insert 메소드를 사용해 저장
PhoneDao phoneDao = new PhoneDao();
phoneDao.insert(personVo);

// 리스트 가져오기
List<PersonVo> personList = phoneDao.getPersonList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호 리스트 - insert</h1>

	<p>입력한 정보 내역입니다.</p>

	<%
	for (int i = 0; i < personList.size(); i++) {
	%>
	<table border="1">
		<tr>
			<td>이름</td>
			<td><%=personList.get(i).getName()%></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><%=personList.get(i).getHp()%></td>
		</tr>

		<tr>
			<td>회사</td>
			<td><%=personList.get(i).getCompany()%></td>
		</tr>
	</table>
	<br>
	<%
	}
	%>


</body>
</html>