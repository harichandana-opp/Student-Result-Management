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
letter-spacing: 0.2px;
front-size: 0.8 rem;
}
th,td
{
border:2px solid white;
padding:10px 20px;
background:rgb(0,0,0,0.6);
}

</style>
</head>
<body background="ed.image.jpg">
 <div class="tbl-header">
  <h1>ALL STUDENTS RESULT</h1>

   
      <table>
        <tr>
          <th>USN</th>
          <th>Management Entrepreneurship For IT Industry</th>
          <th>Computer Networks And Security</th>
          <th>Database Management System</th>
          <th>Automata Theory And Computability</th>
          <th>Application Development Using Python</th>
          <th>Unix Programming</th>
          <th>CN laboratory</th>
          <th>DBMS Laboratory</th>
          <th>Status</th>
          <th>Backlog Subjects</th>
          <th>TOTAL MARKS</th>
          <th>CGPA</th>
        </tr>

   <%@page import="java.sql.*"%>
   <%@ page import="Project.ConnectionProvider" %>
   <%try
   {
	   Connection con=ConnectionProvider.getCon();
	   Statement st=con.createStatement();
	   ResultSet rs=st.executeQuery("select * from result3");
	 
	  	   
	   while(rs.next())
	   {
   %> 
     <tr>
     <td><%=rs.getString(1) %></td>
     <td><%int sum2=rs.getInt(2)+rs.getInt(3); out.println(sum2); %></td>
     <td><%int sum3=rs.getInt(4)+rs.getInt(5); out.println(sum3); %></td>
     <td><%int sum4=rs.getInt(6)+rs.getInt(7); out.println(sum4); %></td>
     <td><%int sum5=rs.getInt(8)+rs.getInt(9); out.println(sum5); %></td>
     <td><%int sum6=rs.getInt(10)+rs.getInt(11); out.println(sum6); %></td>
     <td><%int sum7=rs.getInt(12)+rs.getInt(13); out.println(sum7); %></td>
     <td><%int sum8=rs.getInt(14)+rs.getInt(15); out.println(sum8); %></td>
     <td><%int sum9=rs.getInt(16)+rs.getInt(17); out.println(sum9); %></td>
     <td><%=rs.getString(18) %></td>
     <td><%int sum10=rs.getInt(2)+rs.getInt(3)+rs.getInt(4)+rs.getInt(5)+rs.getInt(6)+rs.getInt(7)+rs.getInt(8)+rs.getInt(9)+rs.getInt(10)+rs.getInt(11)+rs.getInt(12)+rs.getInt(13)+rs.getInt(14)+rs.getInt(15)+rs.getInt(16)+rs.getInt(17); out.println(sum10);%>
     <td><%out.println((sum10*100/800)/9.5); %></td>
     </tr>
   </tbody>
   <%}
	   }
   catch(Exception e)
   {
	   System.out.println("exception occured");
   }
   %>
   </table>

</body>
</html>