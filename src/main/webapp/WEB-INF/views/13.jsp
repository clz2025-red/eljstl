<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>el-jstl</h1>
	
		<h2>jstl(반복문)</h2>
	
		<h3>스클립틀릿</h3>
		
		<%@ page import="java.util.List" %>
		<%@ page import="com.javaex.vo.UserVo" %>
		<%
			List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
		%>
		
		<table border="1">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>이메일</th>
					<th>패스워드</th>
					<th>성별</th>
				</tr>
			</thead>
			<tbody>
				<%for(int i=0; i<userList.size(); i++){%>
					<tr>
						<td><%=userList.get(i).getNo()%></td>
						<td><%=userList.get(i).getName()%></td>
						<td><%=userList.get(i).getEmail()%></td>
						<td><%=userList.get(i).getPassword()%></td>
						<td><%=userList.get(i).getGender()%></td>
					</tr>
				<%}%>
			</tbody>
		
		</table>
	
	
	</body>
</html>