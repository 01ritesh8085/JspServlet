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
		<%@ include file="header.jsp"%>
		<form action="LoginCtl" method="post">
		
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
					<th>LoginId</th>
					<td><input type="email" name="LoginId"
						Placeholder="Enter  LoginId"></td>
              </tr>
              <tr> 
                     <th>Password</th>
					<td><input type="password" name="password"
						Placeholder="Enter password"></td>
					
				</tr>
				<tr>
				<th></th>
				<td><input type="Submit" name="Operation" value= "Sighin"></td>
			   </tr>
			</table>


		</form>
	</Center>

</body>
</html>