<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/landproject", "root","root");
PreparedStatement prstm1=conn.prepareStatement("update landdetails set status=? where lid=?");
prstm1.setString(1, "0");
prstm1.setString(2,request.getParameter("pid"));
prstm1.executeUpdate();
%>
<script>
alert("Property Block Sucessfully");
window.location="AdminDashboard.jsp";
</script>
</body>
</html>