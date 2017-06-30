<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
    <%@page import="java.sql.*"%>
<% 
  String state=request.getParameter("state");
		PreparedStatement pst=null;
        Connection con=null;
		    ResultSet rs=null;
        Class.forName("com.mysql.jdbc.Driver");
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srms","root","baba");
	    pst=con.prepareStatement("select distinct district from v_showroom_district where state=?");
		pst.setString(1,state);
	 rs = pst.executeQuery();
	 out.println("<option value=''>Select District</option>");
         while(rs.next())
		 { 
        out.println("  <option>"+rs.getString(1)+"</option> ");
	 }
         
         %>