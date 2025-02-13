<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	  <%@ page import="java.sql.*" %>
<%

HttpSession hs=request.getSession();
String filename=request.getParameter("filename");
String prptitle=hs.getAttribute("title").toString();
//out.println(""+path+""+imgname);
try{
	
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost/landproject","root","root");
PreparedStatement prst=con.prepareStatement("update landdetails set docpdf=? where ltitle=?");
prst.setString(1, filename);
prst.setString(2,prptitle);
prst.executeUpdate();

}catch(Exception e){
	out.println(""+e);
}


%>
<script>
alert("File Uploaded Sucessfully");
window.location="UserDashboard.jsp"
</script>
</body>
</html>