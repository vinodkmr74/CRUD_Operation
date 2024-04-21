<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>get data</title>
<link rel="stylesheet" href="rea.css">
</head>
<body>

<div class="id">
<table border="1">
    
      
       <tr>
            <th id="Id">St_id</th>
            <th id="Id">st_Name</th>
            <th id="Id">Gender</th>
            <th id="Id">st_Roll</th>
            <th id="Id">st_Email</th>
            <th id="Id">st_Address</th>
            <th id="Id">Action</th>
            
        </tr>
        </div>

<%
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root","root");
          String s="select * from students";
          PreparedStatement p=con.prepareStatement(s);
          
          ResultSet re=p.executeQuery();
          while(re.next())
          {
        	  
        	  %>
        	  
        	<tr>  
       <td id="Idd"><%= re.getString("st_id")%></td>
       <td id="Idd"><%= re.getString("name")%></td>
        <td id="Idd"><%=re.getString("gender")%></td>
        <td id="Idd"><%=  re.getString("roll")%></td>
        <td id="Idd"><%= re.getString("email")%></td>
        <td id="Idd"><%=  re.getString("address")%></td>
        
  
  <% int st_id= re.getInt("st_id");%>
        
        <td Id="aa"> <a href="delete.jsp?st_id=<%=st_id%>">delete</a>
             <a href="show_update.jsp?st_id=<%=st_id%>">Update</a>
            </td>
          </tr>
          
     
       
  <%  
          }
%>

</table>

</body>
</html>