<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<Center>

		<form action="UserRegistrationCtl" method="post">
			<h1>User Registration</h1>
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

					<th>firstName</th>

					<td><input type="text" name="firstName"
						Placeholder="Enter  firstName"></td>

				</tr>
				<tr>

					<th>lastName</th>

					<td><input type="text" name="lastName"
						Placeholder="Enter lastName"></td>

				</tr>
				<tr>

					<th>loginId</th>

					<td><input type="email" name="loginId"
						Placeholder="Enter loginId"></td>

				</tr>
				<tr>

					<th>password</th>

					<td><input type="password" name="password"
						Placeholder="Enter password"></td>

				</tr>
				<tr>

					<th>DOB</th>

					<td><input type="date" name="dob" Placeholder="Enter DOB"></td>

				</tr>
				<tr>

					<th>gender</th>

					<td><input type="text" name="gender"
						Placeholder="Enter gender"></td>

				</tr>
				<tr>

					<th>Click</th>

					<td><input type="submit" name="operation"></td>

				</tr>




			</table>


		</form>
	</Center>

</body>
</html>