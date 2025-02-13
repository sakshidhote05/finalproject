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
  <li><a class="active" href="index.html" style="text-size:40px;">Home</a></li>
  <li><a href="t&c.html" style="text-size:40px;">View T & C</a></li>
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
<div class="col-md-4">



</div>


<div class="col-md-4">
<div class="panel panel-default">
  <div class="panel-body">
  <h3>Login Here</h3>
  <br/>
   <form>
<input type="text" placeholder="Enter Email" class="form-control" name="email">
<br/>
<input type="text" placeholder="Enter Password" class="form-control" name="pass">
<br/>
<input type="submit" value="Login" name="login">
</form>

<%@page import="java.sql.*,java.util.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/landproject", "root","root");
String buttonclick=request.getParameter("login");
if(buttonclick!=null){
	try{
	String uid="";
	String uname="";
	String number="";
	boolean ispresent=false;
	HttpSession hs= request.getSession();
	
	PreparedStatement prstm=conn.prepareStatement("select * from user where Email=? and UPass=?");
	prstm.setString(1, request.getParameter("email"));
	prstm.setString(2, request.getParameter("pass"));
	ResultSet rs=prstm.executeQuery();
	while(rs.next()){
		  uid=rs.getString(1);
		 uname=rs.getString(2);
		 number=rs.getString(3);
		ispresent=true;
	}
	
	if(ispresent){
		hs.setAttribute("uid", uid);
		hs.setAttribute("uname",uname);
		hs.setAttribute("number",number);
		response.sendRedirect("UserDashboard.jsp");
	}
	}catch(Exception e){
		out.println(""+e);
	}
}

%>
  </div>
</div>



</div>


<div class="col-md-4">

</div>
</div>
</body>
</html>