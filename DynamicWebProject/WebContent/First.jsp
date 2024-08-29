<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


form action="FirstServlet" method="post">

		<table>
			<tr>
				<th>First Name:</th>
				<td><input type="text" name="firstName"
					placeholder="Enter First Name"></td>
			</tr>

			<tr>
				<th>Last Name:</th>
				<td><input type="text" name="LastName"
					placeholder="Enter Last Name"></td>
			</tr>
			<tr>
				<th>LoginId:</th>
				<td><input type="text" name="LoginId"
					placeholder="Enter LoginId"></td>
			</tr>

			<tr>
				<th>Password:</th>
				<td><input type="text" name="Password"
					placeholder="Enter Password"></td>
			</tr>

			<tr>
				<th>DOB:</th>
				<td><input type="text" name="DOB" placeholder="Enter DOB"></td>
			</tr>

			<tr>
				<th>Gender:</th>
				<td><input type="text" name="Gender" placeholder="Enter Gender"></td>


			</tr>

			<tr>
				<th>Click:</th>
				<td><input type="submit" name="operation"></td>


			</tr>
		</table>




	</form>
</body>
</html>

