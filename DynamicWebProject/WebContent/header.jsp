<%@page import="com.rays.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <br>

	<%
		UserBean user = (UserBean) session.getAttribute("user");
	String welcomeMsg = "Hi ,";
	%>

	<%
		if (user != null) {
	%>
	<%=welcomeMsg + user.getFirstName() + " " + user.getLastName() %> |
	<a href="LoginCtl?Operation=logout">logout</a> |
	<a href="UserCtl.do">AddUser</a> |
	<a href="UserListCtl.do">UserList</a> |
	<%
		} else {
	%>
	<%=welcomeMsg + "Guest" %> |
	<a href="UserRegistrationCtl">SignUp</a> |
	<a href="LoginCtl">login</a>|
	<a href="ForgotePasswordCtl">forgotPassword</a>
	<%
		}
	%>
  <br>
	<br>

	<hr>

</body>
</html>