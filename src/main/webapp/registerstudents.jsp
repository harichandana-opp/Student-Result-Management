<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registered Students</title>
<style>
body{
   backgroung-image:url(jss.image.jpeg);
   background-size:cover;
   background-attachment:fixed;
   color:white;
   font-size:18px;
   }
h1
{
text-align:center;
background:aqua;
padding:20px;
color:black;
}
table 
{
border: 2px solid rgb(200,200,200);
letter-spacing: 1px;
front-size: 0.8 rem;
width:1500px;
}


th,td
{
border:2px solid white;
padding:60x 80px;
background:rgb(0,0,0,0.6);
width:50px;
height:50px;
}
td
{
text-align: center;
}

</style>
</head>
<body background="ed.image.jpg">
 <div class="tbl-header">
  <h1>REGISTERED STUDENTS</h1>

    <table>
        <tr>
         <th>USN</th>
          <th>Name</th>
          <th>Fathername</th>
          <th>Gender</th>
          <th>DOB</th>
          <th>Branch</th>
          <th>Section</th>
          <th>phno</th>
        </tr>
     
    
  
 


 
 
  
   <%@page import="java.sql.*"%>
   <%@ page import="Project.ConnectionProvider" %>
   <%try
   {
	   Connection con=ConnectionProvider.getCon();
	   Statement st=con.createStatement();
	   ResultSet rs=st.executeQuery("select * from student2");
	   while(rs.next())
	   {
   %> 
     <tr>
     <td><%=rs.getString(1) %></td>
     <td><%=rs.getString(2) %></td>
     <td><%=rs.getString(3) %></td>
     <td><%=rs.getString(4) %></td>
     <td><%=rs.getString(5) %></td>
     <td><%=rs.getString(6) %></td>
     <td><%=rs.getString(7) %></td>
     <td><%=rs.getString(8) %></td>
     </tr>
   </tbody>
   <%}}
   catch(Exception e)
   {
   }
   %>
   </table>
  
</body>
</html>