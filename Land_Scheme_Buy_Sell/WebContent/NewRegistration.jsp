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
<body style="margin-left:20px;backgroiund-image:'url('Images/land.jpg')'">
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
  <li><a class="active" href="https://mitra.ac.in/" target="new" style="text-size:40px;">Home</a></li>
  <li><a href="principle.html" style="text-size:40px;">View T & C</a></li>
  <li><a href="aboutus.html" style="text-size:40px;">About US</a></li>
  <li><a href="contact.html">Contact Us</a></li>
</ul>
<br/>
<div class="row">



</div>
<br/>
<br/>
<br/>
<br/>


<br/>
<br/>
<br/>
<div class="row">
<div class="col-md-2">



</div>


<div class="col-md-8">
<div class="panel panel-default">
  <div class="panel-body">
  <h3>Register Here</h3>
  <br/>
   <form method="post">

<input type="text" placeholder="Enter Name" class="form-control" name="name">
<br/>
<input type="text" placeholder="Enter Contact Number" class="form-control" name="contactnum">
<br/>
<input type="text" placeholder="Enter Email" class="form-control" name="email">
<br/>
<input type="text" placeholder="Enter Password" class="form-control" name="pass">
<br/>
<input type="submit" value="Login" name="addUser">
</form>
  </div>
</div>

<%@page import="java.sql.*,java.util.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/landproject", "root","root");
String buttonclick=request.getParameter("addUser");
if(buttonclick!=null){

String name=request.getParameter("name");
String contact=request.getParameter("contactnum");
String email=request.getParameter("email");
String pass=request.getParameter("pass"); 
try
{

PreparedStatement prst=conn.prepareStatement("insert into user(Name,Contact,Email,UPass)values(?,?,?,?)");
prst.setString(1,name.trim());
prst.setString(2,contact.trim());
prst.setString(3,email.trim());
prst.setString(4,pass.trim());
int i=prst.executeUpdate();
%>
<script>

alert("Registration Done Sucessfully")
window.location="Login.jsp"
</script>
<%

}
catch(Exception e)
{
out.println(""+e);
}

}
%>
</div>


<div class="col-md-2">

</div>
</div>
</body>
</html>