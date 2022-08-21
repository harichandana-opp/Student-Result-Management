<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">   
<title>delete student record</title>
  <link rel="stylesheet" type="text/css" href="style.css">  
  <style>
  .loginbox
{
	position: absolute;
	top:50%;
	left:50%;
	transform: translate(-50%,-50%);
	width:250px;
	height:320px;
	padding:80px 40px;
	box-sitting:border-box;
	background:rgba(0,0,0,0.6);
	}
   body{
   background-image:url(jss.image.jpeg);
   background-size:cover;
   background-attachment:fixed;
   }
   .refer
{
	position:absolute;
	left:50%;
	
	transform: translate(-50%,-50%);
	width:120px;
	height:40px;
	background:MidnightBlue;
	color:aqua;
	font-size:28px;
	font-family:Times New Roman;
	
}
input[type="text"]
{
    font-size:18px;
}
h1
{
	color:aqua;
}
h2
{
color:white;
}
</style>
</head>
<body background = "jss.image.jpeg">
<br>
<br>

<br>
   <center><h3><a href="insertresultregister.html" > Back to admin page</a></h3></center>
    <div class="loginbox">
            
           <br>
           <br>
           <br>
           <form>
           <h1> <label> ENTER USN:</label></h1>
           <br>
         
            <input type="text" name="USN" placeholder="Enter USN" required="required">
            <br>
            <br>
            <br>
            <br>
            
            <input class="refer" type="submit" name="submit" value="delete">    
            </form>
            <br>
            <br>
            
           
        </div>   
   </body>
</html>
<%

try{
	String USN=request.getParameter("USN");
	Connection con =ConnectionProvider.getCon();
	PreparedStatement pstmt=null;
	pstmt=con.prepareStatement("delete from student2 where USN=?");
	pstmt.setString(1,USN);
	pstmt.executeUpdate();

}
catch(Exception e)
{
 System.out.println(e);
}
%>
<script> alert("record deleteeee!!!!!")</script>
