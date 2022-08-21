<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
try{
	String USN=request.getParameter("USN");
	Connection con =ConnectionProvider.getCon();
	Statement st= con.createStatement();
	ResultSet rs= st.executeQuery("select *from student2 inner join result3 where student2.USN=result3.USN and student2.USN='"+USN+"'");
	if(rs.next()){
	


%>


<img src="logo.png"  align="left"width="150" height="150">
<center><img src="jssateb.png" width="300" height="150">
</center>
    <a href="student.html">Back</a>
  <hr class="new1">
<style>
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}

</style>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Institution Name: JSSATEB</th>
          <th>Course Name: B.E</th>
          <th>Branch Name: <%=rs.getString(6) %></th>
          <th><center>USN:<%=rs.getString(1) %> </center></th>
        </tr>
      </thead>
      <thead>
        <tr>
          <th>Name: <%=rs.getString(2) %> </th>
          <th>Father Name: <%=rs.getString(3) %> </th>
          <th>Gender: <%=rs.getString(4) %> </th>
          <th><a title="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;">
          <center><img src="print.png" width="80" height="40"></center></a></th>
        </tr>
      </thead>
    </table>
  </div>
<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}

</style>
<head>
  <hr class="new1">
</head>
<body>
  <table>
    <thead>
      <tr>
        <td colspan="3">Course</td>
        <td rowspan="2">Type</td>
        <td rowspan="2">Internal Marks
        <br>
        (out of 40)
        </td>
        <td rowspan="2">External Marks
        <br>
        (out of 60)
        </td>
        <td rowspan="2">Obtained Marks
        <br>
        (out of 100)
        </td>
        <td rowspan="2">Status
 <br>
 (pass/fail)
     
        </td>
        
      </tr>
      <tr>
        <td>Code </td>
        <td colspan="2"> Name </td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>18CS51</td>
        <td colspan="2">Management Entrepreneurship for IT industry </td>
        <td>Theory</td>
        <td><%=rs.getString(10) %></td>
        <td> <%=rs.getString(11) %> </td>
        <td><%int sum1=rs.getInt(10)+rs.getInt(11); out.println(sum1); %> </td>
        <td> <% if(sum1<40 || rs.getInt(11)<21 || rs.getInt(10)<16) out.println("fail"); else out.println("pass");%></td>
      </tr>
      <tr>
        <td>18CS52</td>
        <td colspan="2">Computer Networks and Security</td>
        <td>Theory</td>
        <td><%=rs.getString(12) %></td>
        <td><%=rs.getString(13) %></td>
        <td><%int sum2=rs.getInt(12)+rs.getInt(13); out.println(sum2); %></td> 
         <td> <% if(sum2<40 || rs.getInt(13)<21 || rs.getInt(12)<16) out.println("fail"); else out.println("pass");%></td> 
      </tr>
      <tr>
        <td>18CS53</td>
        <td colspan="2">Database Management System </td>
        <td>Theory</td>
        <td><%=rs.getString(14) %></td>
        <td><%=rs.getString(15) %></td>
        <td> <%int sum3=rs.getInt(14)+rs.getInt(15); out.println(sum3); %> </td>
         <td> <% if(sum3<40 || rs.getInt(15)<21 || rs.getInt(14)<16) out.println("fail"); else out.println("pass");%></td>
      </tr>
      <tr>
        <td>18CS54</td>
        <td colspan="2">Automata Theory and Compatibility </td>
        <td>Theory</td>
        <td><%=rs.getString(16) %></td>
        <td><%=rs.getString(17) %>  </td>
        <td> <%int sum4=rs.getInt(16)+rs.getInt(17); out.println(sum4); %> </td>
         <td> <% if(sum4<40 || rs.getInt(17)<21 || rs.getInt(16)<16) out.println("fail"); else out.println("pass");%></td>
      </tr>
      <tr>
        <td>18CS55</td>
        <td colspan="2">Application development using Python </td>
        <td>Theory</td>
        <td><%=rs.getString(18) %></td>
        <td> <%=rs.getString(19) %> </td>
        <td> <%int sum5=rs.getInt(18)+rs.getInt(19); out.println(sum5); %> </td>
         <td> <% if(sum5<40 || rs.getInt(19)<21 || rs.getInt(18)<16) out.println("fail"); else out.println("pass");%></td>
      </tr>
      <tr>
        <td>18CS56</td>
        <td colspan="2">Unix Programming</td>
        <td>Theory</td>
        <td><%=rs.getString(20) %> </td>
        <td><%=rs.getString(21) %> </td>
        <td> <%int sum6=rs.getInt(20)+rs.getInt(21); out.println(sum6); %>  </td>
         <td> <% if(sum6<40 || rs.getInt(21)<21 || rs.getInt(20)<16) out.println("fail"); else out.println("pass");%></td>
      </tr>
      <tr>
        <td>18CSL57</td>
        <td colspan="2">CN Laboratory</td>
        <td>Practical</td>
        <td><%=rs.getString(22) %></td>
        <td><%=rs.getString(23) %></td>
        <td> <%int sum7=rs.getInt(22)+rs.getInt(23); out.println(sum7); %>  </td>
         <td> <% if(sum7<40 || rs.getInt(23)<24 || rs.getInt(22)<16) out.println("fail"); else out.println("pass");%></td>
      </tr>
      <tr>
        <td>18CSL58</td>
        <td colspan="2">DBMS Laboratory</td>
        <td>Practical</td>
        <td><%=rs.getString(24) %></td>
        <td><%=rs.getString(25) %></td>
        <td> <%int sum8=rs.getInt(24)+rs.getInt(25); out.println(sum8); %> </td>
         <td> <% if(sum8<40 || rs.getInt(25)<24 || rs.getInt(24)<16) out.println("fail"); else out.println("pass");%></td>
      </tr>
      
    </tbody>
    <tfoot>
      <tr>
        <td colspan="4" class="footer">Total Marks</td>
       
        <td colspan="3"><%int sum=rs.getInt(10)+rs.getInt(11)+rs.getInt(12)+rs.getInt(13)+rs.getInt(14)+rs.getInt(15)+rs.getInt(16)+rs.getInt(17)+rs.getInt(18)+rs.getInt(19)+rs.getInt(20)+rs.getInt(21)+rs.getInt(22)+rs.getInt(23)+rs.getInt(24)+rs.getInt(25); out.println(sum); %> </td>
      </tr>
      <tr>
        <td colspan="4" class="footer">CGPA</td>
        <td colspan="3"><%out.println((sum*100/800)/9.5); %></td>
      </tr>
     
  </table>
    <hr class="new1">
  <center><h6>Note: Institution doesn't own for the errors or omissions, if any, in this statement.
</h6></center>
  <hr class="new1">
 

</body>

<%
	}
else
{
   response.sendRedirect("errordgioneview.html");
   }
}
  catch(Exception e)
  {}%>