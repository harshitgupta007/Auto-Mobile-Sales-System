       <%@page import="java.sql.*"%>
<% 
		String modelname=request.getParameter("modelname");
		PreparedStatement pst=null;
        Connection con=null;
		    ResultSet rs=null;
        Class.forName("com.mysql.jdbc.Driver");
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srms","root","baba");
	    pst=con.prepareStatement("select * from v_bike_color where modelname=?");
	   pst.setString(1,modelname);
	 rs = pst.executeQuery();
	 out.println("<option>Select Color</option>");
         while(rs.next())
		 { 
        out.println("  <option>"+rs.getString(2)+"</option> ");
	 }
         
         %>