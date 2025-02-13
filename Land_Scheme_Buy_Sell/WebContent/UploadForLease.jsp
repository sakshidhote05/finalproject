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

<%@ include file = "header.jsp" %>
<div class="row">
<div class="col-md-2">



</div>


<div class="col-md-8">
<div class="panel panel-default">
  <div class="panel-body">
  <h3>Enter Land Details to Upload</h3>
  <br/>
   <form method="post">

<input type="text" placeholder="Enter Land Title" class="form-control" name="ltitle">
<br/>
<textarea placeholder="Enter Description of Property" class="form-control" name="description"></textarea>
<br/>
<input type="text" placeholder="Enter Square Feet Area" class="form-control" name="areasqft">
<br/>
<input type="text" placeholder="Enter Address of land" class="form-control" name="add">
<br/>
<input type="text" placeholder="Enter Survey Number " class="form-control" name="surveynumber">
<br/>
<input type="text" placeholder="Enter Plot Number" class="form-control" name="plotnumber">
<br/>
<input type="text" placeholder="Enter lattitude value" class="form-control" name="lat">
<br/>
<input type="text" placeholder="Enter longitude value" class="form-control" name="lang">
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

String ltitle=request.getParameter("ltitle");
String desc=request.getParameter("description");
String area=request.getParameter("areasqft");
String add=request.getParameter("add"); 
String surveynumber=request.getParameter("surveynumber");
String plotnumber=request.getParameter("plotnumber");
String lattitude=request.getParameter("lat");
String langitude=request.getParameter("lang");
try
{
	HttpSession hs=request.getSession();
	String uid=hs.getAttribute("uid").toString();
PreparedStatement prst=conn.prepareStatement("insert into landdetails(ltitle,descr,area,addr,surveynum,plotnum,lat,lang,forw,status,uid)values(?,?,?,?,?,?,?,?,?,?,?)");
prst.setString(1,ltitle);
prst.setString(2,desc);
prst.setString(3,area);
prst.setString(4,add);
prst.setString(5,surveynumber);
prst.setString(6,plotnumber);
prst.setString(7,lattitude);
prst.setString(8,langitude);
prst.setString(9,"Lease");
prst.setString(10,"1");
prst.setString(11,uid);
int i=prst.executeUpdate();
%>
<script>

alert("Registration Done Sucessfully")
window.location="UploadImage1.jsp"
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