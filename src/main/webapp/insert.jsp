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
<%
        String idd=request.getParameter("id");
        String nam=request.getParameter("name");
        String gen=request.getParameter("gender");
        String rol=request.getParameter("roll");
        String eml=request.getParameter("email");
        String ad=request.getParameter("add");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root","root");
        
        String st=("insert into students values(?,?,?,?,?,?)");
        PreparedStatement p=con.prepareStatement(st);
        
        p.setString(1,idd);
        p.setString(2,nam);
        p.setString(3,gen);
        p.setString(4,rol);
        p.setString(5,eml);
        p.setString(6,ad);
        int i=p.executeUpdate();
        
        if(i>0)
        {
        	response.sendRedirect("index.html");
        }
        else
        {
        	out.print("enter filds");
       // response.sendRedirect("index.html");
        }


%>

</body>
</html>