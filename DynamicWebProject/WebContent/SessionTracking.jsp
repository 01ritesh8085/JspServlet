<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h3>
      
      <a href="Welcom.jsp">Simple Link</a>

</h3>
<h3>
       <a href="Welcome.jsp?jsessionid=<%=session.getId()%>">Humari Link</a>

</h3>

<form action = "track" method="post">

    <input type = "hidden" name= "jessionid" value="<%=session.getId() %>">
    <input type = "submit" value="Submit">

</form>


</body>
</html>