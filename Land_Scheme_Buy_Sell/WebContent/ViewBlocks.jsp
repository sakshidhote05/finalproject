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
<br/>
<table class="table">
<tr>
<th>Property Title</th>
<th>Description</th>
<th>Area</th>
<th>Address</th>
<th>Survey Number</th>
<th>PlotNum</th>
<th>For</th>
<th>Action</th>
</tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/landproject", "root","root");
PreparedStatement prstm1=conn.prepareStatement("select * from landdetails where status=?");
prstm1.setString(1, "0");
ResultSet rs1=prstm1.executeQuery();
while(rs1.next()){
%>
<tr>

<td><%out.println(rs1.getString(2)); %></td>
<td><%out.println(rs1.getString(3)); %></td>
<td><%out.println(rs1.getString(4)); %></td>
<td><%out.println(rs1.getString(5)); %></td>
<td><%out.println(rs1.getString(6)); %></td>
<td><%out.println(rs1.getString(7)); %></td>
<td><%out.println(rs1.getString(10)); %></td>
<td><a href=""><input type="submit" value="Get on MAP"></a>|<a href="Images/<%out.println(rs1.getString(12)); %>"> <input type="submit" value="View Docs"></a> |<a href="BlockProperty.jsp?pid=<%out.println(""+rs1.getString(1)); %>&ptitle=<%out.println(""+rs1.getString(2)); %>&ownerid=<%out.println(""+rs1.getString(11)); %>"> <input type="button" value="Block Property"></a></td>
</tr>	
<%} %>
</table>




</body>
</html>