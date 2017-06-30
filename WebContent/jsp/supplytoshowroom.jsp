       <%@page import="java.sql.*"%>
       <select id="showroomname">
<% 
		String dealerid=request.getParameter("dealerid");
		PreparedStatement pst=null;
        Connection con=null;
		    ResultSet rs=null;
        Class.forName("com.mysql.jdbc.Driver");
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srms","root","baba");
	    pst=con.prepareStatement("select name from showroom where did=?");
	   pst.setString(1,dealerid);
	 rs = pst.executeQuery();
	 out.println("<option>Select Showroom</option>");
         while(rs.next())
		 { 
        out.println("<option>"+rs.getString(1)+"</option> ");
	     }
         
%>
	</select>
	<input type="text" size="20" id="vinno" placeholder="Bike Vin Number">
	<input type="submit" value="Supply" onclick="submitShowroomSupply()">