<%@ page import="java.sql.*" %>>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update</title>
</head>
<body>


<% 



         String st_id=request.getParameter("id");
         String name=request.getParameter("name");
         String gender=request.getParameter("gender");
         String roll=request.getParameter("roll");
         String email=request.getParameter("email");
         String address=request.getParameter("add");
         
       
     try
     {
         

         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root","root");
         String s="update students set name='"+name+"',gender='"+gender+"',roll='"+roll+"',email='"+email+"',address='"+address+"' where st_id='"+st_id+"'";
         PreparedStatement p=con.prepareStatement(s);
         
       
         
         
         int i=p.executeUpdate();
         
         if(i>0)
         {
        	 response.sendRedirect("read.jsp");
        	 out.print("seccssefully udate");
         }
         else
         {
        	 out.print("update123");
        	response.sendRedirect("show_update.jsp");
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