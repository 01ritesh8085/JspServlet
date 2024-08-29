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
	<Center>

		<form action="UserCtl.do" method="post">
		<%
				UserBean bean = (UserBean) request.getAttribute("bean");
			%>
			<h1>Add User</h1>

			<%
				String msg = (String) request.getAttribute("msg");
			%>

			<%
				if (msg != null) {
			%>
			<%=msg%>
			<%
				}
			%>

			<table>
			<tr>
					<td><input type="hidden" name="id"
						value="<%=(bean != null) ? bean.getId() : ""%>"></td>
				</tr>
				<tr>
					<th>FirstName</th>

					<td><input type="text" name="firstName"
					value="<%=(bean != null) ? bean.getFirstName() : ""%>"
						Placeholder="Enter First Name"></td>

				</tr>
				<tr>

					<th>LastName</th>

					<td><input type="text" name="lastName"
					value="<%=(bean != null) ? bean.getLastName() : ""%>"
						Placeholder="Enter Last Name"></td>

				</tr>
				<tr>

					<th>loginId</th>

					<td><input type="email" name="loginId"
					value="<%=(bean != null) ? bean.getLoginId() : ""%>"
						Placeholder="Enter loginId"></td>

				</tr>
				<tr>

					<th>Password</th>

					<td><input type="password" name="password"
					value="<%=(bean != null) ? bean.getPassword() : ""%>"
						Placeholder="Enter Password"></td>

				</tr>
				<tr>

					<th>DOB</th>

					<td><input type="date" name="dob"
					value="<%=(bean != null) ? bean.getDob() : ""%>"
					 Placeholder="Enter DOB"></td>

				</tr>
				<tr>

					<th>Gender</th>

					<td><input type="text" name="gender"
					value="<%=(bean != null) ? bean.getGender() : ""%>"
						Placeholder="Enter Gender"></td>

				</tr>
				<tr>
				<%
						if (bean != null) {
					%>
					<th>Click</th>

					<td><input type="submit" name="operation" value="update"></td>
					<%
						} else {
					%>
					

					<th>Click</th>

					<td><input type="submit" name="operation" value="save"></td>
                    
                    <%
						}
					%>
                    
				</tr>
			</table>
		</form>
	</Center>


</body>
</html>