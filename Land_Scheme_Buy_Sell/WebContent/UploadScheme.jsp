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

<%@ include file = "adminheader.jsp" %>

<br/>
<div class="row">



</div>


<div class="row">
<div class="col-md-2">



</div>


<div class="col-md-8">
<div class="panel panel-default">
  <div class="panel-body">
  <h3>Upload Scheme</h3>
  <br/>
   <form method="post">

<textarea placeholder="Enter Scheme" name="message" class="form-control" ></textarea>
<br/>
<input type="text" placeholder="Enter Link of Scheme" name="link" class="form-control">
<br/>
<input type="submit" value="Upload Scheme" name="add">
</form>
  </div>
</div>

<%@page import="java.sql.*,java.util.*"%>
<%
String buttonclick=request.getParameter("add");
out.println("asdada"+buttonclick);
if(buttonclick!=null){

try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/landproject", "root","root");
	

    PreparedStatement prstm=conn.prepareStatement("insert into schemes(scheme,link)values(?,?)");
    prstm.setString(1,request.getParameter("message"));
    prstm.setString(2,request.getParameter("link"));
    
    prstm.executeUpdate();
%>
<script>

alert("Scheme Uploaded Sucessfully")
window.location="UploadScheme.jsp"
</script>

<%
}catch(Exception e){
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