<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.UserVo" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
	
		<h1>el-jstl</h1>
		<h2>el(어트리뷰트)</h2>
		
		<h3>스클립틀릿</h3>
		<%
			int num = (int)request.getAttribute("num");
			String str = (String)request.getAttribute("str");
			UserVo userVo = (UserVo)request.getAttribute("userVo");
		%>

		num = <%=num%>   <br>
		str = <%=str%>   <br>
		<br>
		userVo(0x333) <br>
		name = <%=userVo.getName()%>      <br>
		email =<%=userVo.getEmail()%>     <br>
		password =<%=userVo.getPassword()%><br>
		gender=<%=userVo.getGender()%>   <br>
		
		
		
		<h3>el-request의 어트리뷰트</h3>
		num = ${requestScope.num }        <br>
		str = ${requestScope.str }	      <br>
		<br>
		<!-- getter 로 불러온다 -->
		userVo(0x333) <br>
		name = ${requestScope.userVo.name} 		<br>
		email = ${requestScope.userVo.email} 	<br>
		password = ${requestScope.userVo.password} <br>
		gender =  ${requestScope.userVo.gender}  <br>
		
		
		
		<h3>el-request의 어트리뷰트 requestScope생략가능</h3>
		num = ${num }        <br>
		str = ${str }	      <br>
		<br>
		<!-- getter 로 불러온다 -->
		userVo(0x333) <br>
		name = ${userVo.name} 		<br>
		email = ${userVo.email} 	<br>
		password = ${userVo.password} <br>
		gender =  ${userVo.gender}  <br>
		
		<br>
		*주의
		\${param.name } --> \${name } 못줄인다
		
	</body>
</html>


