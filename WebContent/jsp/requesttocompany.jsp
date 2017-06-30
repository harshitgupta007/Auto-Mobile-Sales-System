<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
       <%@page import="java.sql.*"%>
       <select id="mname" onchange="getColor()">
<% 
		PreparedStatement pst=null;
        Connection con=null;
		    ResultSet rs=null;
        Class.forName("com.mysql.jdbc.Driver");
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srms","root","baba");
	    pst=con.prepareStatement("select Modelname from v_modelname");
	 rs = pst.executeQuery();
	 out.println("<option value=''>Select Model Name</option>");
         while(rs.next())
		 { 
        out.println("  <option>"+rs.getString(1)+"</option> ");
	 }
         
         %>
         </select>
         <select id="color">
         <option>Select Color</option>
         </select>
         <input type ="text" size ="20" id="quantity" placeholder="Quantity"><br><br>
         <input type ="button" value="  Ok  " onclick="dealerSubmit()">