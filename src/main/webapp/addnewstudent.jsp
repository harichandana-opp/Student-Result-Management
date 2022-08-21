<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "Project.ConnectionProvider" %>
<%@ page import ="java.sql.*" %>
<%
 String USN = request.getParameter("USN");
 String name = request.getParameter("name");
 String fathername = request.getParameter("fathername");
 String gender = request.getParameter("gender");
 String dob=request.getParameter("dob");
 String branch = request.getParameter("branch");
 String section = request.getParameter("section");
 int phno = Integer.parseInt((request.getParameter("phno")));

 try{
	 Connection con=ConnectionProvider.getCon();
	 Statement st=con.createStatement();
	 st.executeUpdate("insert into student2 values('"+USN+"','"+name+"','"+fathername+"','"+gender+"','"+dob+"','"+branch+"','"+section+"','"+phno+"')");
	 response.sendRedirect("insertresultregister.html");
 }
 catch(Exception e)
 {
  System.out.println(e);
 }
%> 