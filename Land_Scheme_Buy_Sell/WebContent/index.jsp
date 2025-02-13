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
<div class="row">
<div class="col-md-2">
</div>
<div class="col-md-2">
<img src="Images/govt.png" style="width:100px;height:100px;">

</div>
<div class="col-md-4">

<h2 style="text-align:center;color:#00539F">Government of Maharashtra</h2>
</div>
<div class="col-md-2">
<img src="Images/govt2.jpg" style="width:100px;height:100px;">
</div>
<div class="col-md-2">
</div>
</div>

<ul>
 <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;</li>
  <li><a class="active" href="index.html" style="text-size:40px;">Home</a></li>
  <li><a href="principle.html" style="text-size:40px;">View T & C</a></li>
  <li><a href="aboutus.html" style="text-size:40px;">About US</a></li>
  <li><a href="contact.html">Contact Us</a></li>
</ul>
<br/>
<div class="row">
<div class="col-md-7">

<img src="Images/land.jpg"  style="width:500;height:500px;">
</div>
<div class="col-md-5">
<div class="row">
<div class="col-md-2">
</div>
<div class="col-md-4">
<br/>
<br/><br/><br/><br/>
<a href="Login.jsp"><input type="submit" class="form-control" value="Login" style= "background-color:#9f0051;color:#ffffff;border: 5px solid black; width:300px; padding-bottom:30px;justify-content: center;"></a>
<br/>
<a href="NewRegistration.jsp"><input type="submit" class="form-control" value="Sign Up" style= "background-color:#9f0051;color:#ffffff;border: 5px solid black; width:300px; padding-bottom:30px;"></a>

</div>
<div class="col-md-2">
</div>

</div>

</div>

</div>
<br/>
<br/>
<br/>
<br/>
<div class="row">

<div class="col-md-6">



<div class="panel panel-default">
  <div class="panel-body" style="background-color:#9f0051">
  <b style="color:#ffffff;">Lands Available for Sale</b>
   <hr>
   <%@page import="java.sql.*,java.util.*"%>
   <%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/landproject", "root","root");
PreparedStatement prstm1=conn.prepareStatement("select * from landdetails where status=? and forw=?");
prstm1.setString(1, "1");
prstm1.setString(2, "Sell");
ResultSet rs1=prstm1.executeQuery();
while(rs1.next()){
%>
<%out.println(rs1.getString(2)); %>
<hr>
<%
}%>
  </div>
</div>


</div>


<div class="col-md-6">

<div class="panel panel-default">
  <div class="panel-body" style="background-color:#9f0051">
   <b style="color:#ffffff;"> Lands Available for Lease</b>
    <hr>
    <%
    PreparedStatement prstm11=conn.prepareStatement("select * from landdetails where status=? and forw=?");
prstm11.setString(1, "1");
prstm11.setString(2, "Lease");
ResultSet rs11=prstm1.executeQuery();
while(rs11.next()){
%>
<%out.println(rs11.getString(2)); %>
<hr>
<%
}%>
  </div>
</div>

</div>
</div>

<br/>
<br/>
<br/>
<div class="row">
<div class="col-md-6">



</div>


<div class="col-md-6">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;



<img src="Images/placement.jpg" class="img-responsive">
</div>



</div>
</body>
</html>