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

<%@ include file = "header.jsp" %>


<%@page import="java.sql.*,java.util.*"%>
<table class="table">
<tr>
<td>Property Title</td>
<td>Description</td>
<td>Area</td>
<td>Address</td>
<td>Survey Number</td>
<td>PlotNum</td>
<td>For</td>
<td>Action</td>
</tr>


<%

HttpSession hs=request.getSession();
String uid=hs.getAttribute("uid").toString();

//out.println("asdad"+uid);
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/landproject", "root","root");
PreparedStatement prstm=conn.prepareStatement("select * from landdetails where uid=?");
prstm.setString(1, uid);
ResultSet rs=prstm.executeQuery();
while(rs.next()){
%>
<tr>

<td><%out.println(rs.getString(2)); %></td>
<td><%out.println(rs.getString(3)); %></td>
<td><%out.println(rs.getString(4)); %></td>
<td><%out.println(rs.getString(5)); %></td>
<td><%out.println(rs.getString(6)); %></td>
<td><%out.println(rs.getString(7)); %></td>
<td><%out.println(rs.getString(10)); %></td>
<td><a href="http://maps.google.com/maps?lat="+<%out.println(rs.getString(8)); %>+"&lang="<%out.println(rs.getString(9)); %>"><input type="submit" value="Get on MAP"></a>|<a href="Images/<%out.println(rs.getString(12)); %>"> <input type="submit" value="View Docs"></a> |<a href="AddEnquiry.jsp?pid=<%out.println(""+rs.getString(1)); %>&ptitle=<%out.println(""+rs.getString(2)); %>&ownerid=<%out.println(""+rs.getString(11)); %>"> <input type="button" value="Send Enquiry"></a></td>
</tr>	
<%		
}
%>
</table>

</body>
</html>