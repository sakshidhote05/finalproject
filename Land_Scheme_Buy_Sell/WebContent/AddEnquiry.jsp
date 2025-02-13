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

<br/>
<div class="row">



</div>


<div class="row">
<div class="col-md-2">



</div>


<div class="col-md-8">
<div class="panel panel-default">
  <div class="panel-body">
  <h3>Put Your Message Here</h3>
  <br/>
   <form method="post">
<input type="hidden" value="<%out.println(request.getParameter("pid")); %>" name="pid">
<input type="hidden" value="<%out.println(request.getParameter("ptitle")); %>" name="ptitles">
<input type="hidden" value="<%out.println(request.getParameter("ownerid")); %>" name="ownerid">
<textarea placeholder="Enter Your Message Here" name="message" class="form-control" name="enq"></textarea>
<br/>
<input type="submit" value="Add Enquiry" name="add">
</form>
  </div>
</div>

<%@page import="java.sql.*,java.util.*"%>
<%
String buttonclick=request.getParameter("add");
out.println("asdada"+buttonclick);
if(buttonclick!=null){
out.println("afsasfsfaf");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/landproject", "root","root");
	
	HttpSession hs=request.getSession();
	String name=hs.getAttribute("uname").toString();
	String conatct=hs.getAttribute("number").toString();
	String uid=hs.getAttribute("uid").toString();
    PreparedStatement prstm=conn.prepareStatement("insert into Enquiries(ByUser,uid,Contact,pid,ptitle,Ownerid)values(?,?,?,?,?,?)");
    prstm.setString(1, name);
    prstm.setString(2, uid);
    prstm.setString(3, conatct);
    prstm.setString(4,request.getParameter("pid"));
    prstm.setString(5, request.getParameter("ptitles").trim());
    prstm.setString(6, request.getParameter("ownerid").trim());
    prstm.executeUpdate();
%>
<script>

alert("Enquiry Send Sucessfully")
window.location="ViewUploaded.jsp"
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