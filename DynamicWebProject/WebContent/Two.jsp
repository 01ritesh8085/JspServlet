<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



	<%=request.getParameter("firstName")%>
	<br>
	<%=request.getParameter("LastName")%>
	<br>
	<%=request.getParameter("LoginId")%>
	<br>
	<%=request.getParameter("Password")%>
	<br>
	<%=request.getParameter("DOB")%>
	<br>
	<%=request.getParameter("Gender")%>


</body>
</html>