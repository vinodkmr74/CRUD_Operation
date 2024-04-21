<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>show_upate</title>
<link rel="stylesheet" href="show_update.css">
</head>
<body>
<form method="post" action="update.jsp" class="form">




        <%
        try
        {
        
        
    	 
    	 String st_id=request.getParameter("st_id");
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root","root");
          String s="select * from students where st_id ='"+st_id+"'";
          PreparedStatement p=con.prepareStatement(s);
          
          ResultSet re=p.executeQuery();
        
          while(re.next())
          {
        	  %>
        	  
        	  <div class="insert">
        	
                <label for name="st_id">St_Id:-</label>
                    <input type="hidden" name="id" value="<%=re.getInt("st_id") %>">
    
               <label for name="st_Name">St_name:-</label>
                <input type="text" name="name" value="<%=re.getString("name") %>">
                
                <label for name="st_Gender">St_Gender:-</label>
                <input type="text" name="gender" value="<%=re.getString("gender") %>">
    
                <label for name="st_Roll">st_Roll:-</label>
                <input type="text" name="roll" value="<%=re.getString("roll") %>" >
    
                <label for name="st_Email">st_Email:-</label>
                <input type="text" name="email" value="<%=re.getString("email") %>">
    
                <label for name="st_address">St_address:-</label>
                <input type="text" name="add" value="<%=re.getString("address") %>" >
                     
                <input type="submit" value="UPDATE"  class="button btn-1">
                
                </div>
                </tr><br>
                   </form>
             
          
         
       <% 
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