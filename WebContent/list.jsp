<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- import 해주기 -->
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>
<%@ page import="java.util.List"%>

<%
// 리스트 가져오기
PhoneDao phoneDao = new PhoneDao();
List<PersonVo> personList = phoneDao.getPersonList();
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호 리스트</h1>
	<p>입력한 정보 내역입니다.</p>

	<!-- for반복문으로 DB데이터 출력하기 -->
	<%
	for (int i = 0; i < personList.size(); i++) {
	%>
	<table border="1">
		<tr>
			<td>이름(<%=personList.get(i).getPerson_id()%>)
			</td>
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
		<tr>
			<td></td>
			<td><a href="./delete.jsp?id=<%=personList.get(i).getPerson_id()%>"> [삭제] </a>
				<a href="./updateForm.jsp?id=<%=personList.get(i).getPerson_id()%>"> [수정]</a></td>
		</tr>
	</table>
	<br>

	<!-- jsp에서 java코드 사용할 때 끊어서 사용해야 한다. -->
	<%
	}
	%>
	<a href="./writeForm.jsp">추가번호 등록</a>

</body>
</html>