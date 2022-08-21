<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "Project.ConnectionProvider" %>
<%@ page import ="java.sql.*" %>
<%
 String USN = request.getParameter("USN");
 String name = request.getParameter("name");
 String subject_id = request.getParameter("subjectid");
 String No_Of_Backlog_Subjects = request.getParameter("count");
 


 try{
	 Connection con=ConnectionProvider.getCon();
	 Statement st=con.createStatement();
	 st.executeUpdate("insert into backlog2 values('"+USN+"','"+name+"','"+subject_id+"','"+No_Of_Backlog_Subjects+"')");
	 response.sendRedirect("insertresultregister.html");
 }
 catch(Exception e)
 {
  System.out.println(e);
 }
%> 