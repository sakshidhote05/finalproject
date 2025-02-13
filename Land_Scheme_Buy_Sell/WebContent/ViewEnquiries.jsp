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


<%@page import="java.sql.*,java.util.*"%>
<h1>View Enquiries</h1>
<hr>
<table class="table">
<tr>
<td>For Land</td>
<td>By User</td>
<td>Contact Number</td>
</tr>
<%

HttpSession hs=request.getSession();
String uid=hs.getAttribute("uid").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/landproject", "root","root");
PreparedStatement prstm1=conn.prepareStatement("select * from Enquiries where ownerid=?");
prstm1.setString(1, uid);
ResultSet rs1=prstm1.executeQuery();
while(rs1.next()){
%>
<tr>
<td><%out.println(rs1.getString(6)); %></td>
<td><%out.println(rs1.getString(2)); %></td>
<td><%out.println(rs1.getString(4)); %></td>
</tr>

<%
	
}
%>


</table>

</body>
</html>