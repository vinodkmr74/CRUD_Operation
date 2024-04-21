<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<p>Seccesseffully delete</p>

<%

           String st_id=request.getParameter("st_id");
           try
           {
           //String st="11";
           
          Class.forName("com.mysql.jdbc.Driver");
        	
          Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud", "root", "root");
      
          String s = "Delete from students where st_id='"+st_id+"'";
     
          PreparedStatement p = com.prepareStatement(s);
        
         // p.setString(1,st);
       
       
        int i = p.executeUpdate();
           
           
           if(i>0)
           {
        	   response.sendRedirect("delete.jsp");
           }
           else
           {
        	   response.sendRedirect("read.jsp");
           }
           }
        
       catch(Exception e)
        {
    	   System.out.print(e);
        	e.printStackTrace();
        }
        
      %>

</body>
</html>