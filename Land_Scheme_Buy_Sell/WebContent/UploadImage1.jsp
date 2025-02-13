<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

    <%@include file="header.jsp" %>
<html>
<head>
  
</head>
<body>
<%

HttpSession hs=request.getSession();
hs.setAttribute("pid", request.getParameter("pid"));

%>
  <div class="container">
  <h2>Upload PDF File of All Documents Here</h2>
  <hr>
  <form action="UploadImage2.jsp" method="post"
                        enctype="multipart/form-data">
                      
<input type="file" name="file" size="50" />
<br />
<input type="submit" value="Upload File" />

  </div>

</body>
</html> 
