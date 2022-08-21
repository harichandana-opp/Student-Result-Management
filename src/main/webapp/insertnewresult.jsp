<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%
String USN = request.getParameter("USN");
String s1intmarks = request.getParameter("s1int");
String s1extmarks = request.getParameter("s1ext");
String s2intmarks = request.getParameter("s2int");
String s2extmarks = request.getParameter("s2ext");
String s3intmarks = request.getParameter("s3int");
String s3extmarks = request.getParameter("s3ext");
String s4intmarks = request.getParameter("s4int");
String s4extmarks = request.getParameter("s4ext");
String s5intmarks = request.getParameter("s5int");
String s5extmarks = request.getParameter("s5ext");
String s6intmarks = request.getParameter("s6int");
String s6extmarks = request.getParameter("s6ext");
String s7intmarks = request.getParameter("s7int");
String s7extmarks = request.getParameter("s7ext");
String s8intmarks = request.getParameter("s8int");
String s8extmarks = request.getParameter("s8ext");
String status=request.getParameter("status");

try
{
	Connection con=ConnectionProvider.getCon();
	 Statement st=con.createStatement();
	 st.executeUpdate("insert into result3 values('"+USN+"','"+s1intmarks+"','"+s1extmarks+"','"+s2intmarks+"','"+s2extmarks+"','"+s3intmarks+"','"+s3extmarks+"','"+s4intmarks+"','"+s4extmarks+"','"+s5intmarks+"','"+s5extmarks+"','"+s6intmarks+"','"+s6extmarks+"','"+s7intmarks+"','"+s7extmarks+"','"+s8intmarks+"','"+s8extmarks+"','"+status+"')");
	 response.sendRedirect("insertresultregister.html");
}
catch(Exception e)
{
 System.out.println(e);
}
%>