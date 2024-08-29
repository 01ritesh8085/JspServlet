<%@page import="com.rays.bean.UserBean"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="header.jsp"%>
	<form action="UserListCtl.do" method="post">


	<%
				List list = (List) request.getAttribute("userlist");
			%>

			<h2>User List</h2>

			<table border="1" width="100%" border="1px">

				<tr style="background: skyblue">
					<th>click</th>
					<th>Id</th>
					<th>FirstName</th>
					<th>LastName</th>
					<th>LoginId</th>
					<th>DOB</th>
					<th>gender</th>
					<th>Action</th>
				</tr>
				  
				<%
					Iterator it = list.iterator();
				%>

				<%
					while (it.hasNext()) {
						UserBean bean = (UserBean) it.next();
				%>
				<tr align="center">
					<td><input type="checkbox" name="ids"
						value="<%=bean.getId()%>"></td>
					<td><%=bean.getId()%></td>
					<td><%=bean.getFirstName()%></td>
					<td><%=bean.getLastName()%></td>
					<td><%=bean.getLoginId()%></td>
					<td><%=bean.getDob()%></td>
					<td><%=bean.getGender()%></td>
					<td><a href="UserCtl.do?id=<%=bean.getId()%>">Edit</a></td>
					<%
						}
					%>
				</tr>
			</table>
			<tr>
				<input type="submit" name="operation" value="delete">
			</tr>

		</form>
	</center>




</body>
</html>