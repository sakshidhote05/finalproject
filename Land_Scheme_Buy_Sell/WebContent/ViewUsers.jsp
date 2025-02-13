<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #9f0051;
  
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
 
}

li a:hover {
  background-color: #111;
}
</style>
</head>
<body style="margin-left:20px;">

<%@ include file = "adminheader.jsp" %>

<h1>All Users</h1>
<hr>

<table class="table">
<tr>
<th>Name</th>
<th>Contact</th>
<th>Email</th>

</tr>
<%@page import="java.sql.*,java.util.*"%>

<%@page import="java.sql.*,java.util.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/landproject", "root","root");

//out.println("asdad"+uid);

PreparedStatement prstm=conn.prepareStatement("select * from user");
ResultSet rs=prstm.executeQuery();
while(rs.next()){
%>
<tr>

<td><%out.println(rs.getString(2)); %></td>
<td><%out.println(rs.getString(3)); %></td>
<td><%out.println(rs.getString(4)); %></td>


</tr>	
<%		
}
%>
</table>


</body>
</html>