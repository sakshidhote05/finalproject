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
<form>
<input type="text" placeholder="Enter Area to Search Property" name="area" class="form-control">
<br/>
<input type="submit" name="sub">
</form>
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
String str1=request.getParameter("sub");
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/landproject", "root","root");
if(str1!=null){
try{
PreparedStatement prstm1=conn.prepareStatement("select * from landdetails where addr=?");
prstm1.setString(1, request.getParameter("area"));
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
<td><a href="http://maps.google.com/maps?lat="+<%out.println(rs1.getString(8)); %>+"&lang="<%out.println(rs1.getString(9)); %>"><input type="submit" value="Get on MAP"></a>|<a href="Images/<%out.println(rs1.getString(12)); %>"> <input type="submit" value="View Docs"></a> |<a href="AddEnquiry.jsp?pid=<%out.println(""+rs1.getString(1)); %>&ptitle=<%out.println(""+rs1.getString(2)); %>&ownerid=<%out.println(""+rs1.getString(11)); %>"> <input type="button" value="Send Enquiry"></a></td>
</tr>	

<%}
}catch(Exception e){
	out.println(""+e);
}
}
%>
</table>

<h1>Recent Uploads</h1>
<hr>

<table class="table">
<tr>
<th>Property Title</th>
<th>Description</th>
<th>Area</th>
<th>Address</th>
<th>Survey Number</th>
<th>PlotNum</th>
<th>For</th>
</tr>
<%@page import="java.sql.*,java.util.*"%>

<%

HttpSession hs=request.getSession();
String uid=hs.getAttribute("uid").toString();

//out.println("asdad"+uid);

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

</tr>	
<%		
}
%>
</table>


</body>
</html>