<%@page import="java.sql.*"%>
<font color="white">
<% 
        String state=request.getParameter("state");
		String district=request.getParameter("district");
		PreparedStatement pst=null;
        Connection con=null;
		    ResultSet rs=null;
        Class.forName("com.mysql.jdbc.Driver");
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srms","root","baba");
	    pst=con.prepareStatement("select * from v_dealer where state=? and district=?");
	    pst.setString(1,state);
	    pst.setString(2,district);
		 rs = pst.executeQuery();
		
		 if(rs.next())
		 {
         out.println(" <table><tr><td><b><h3><i>&nbsp;&nbsp;&nbsp;&nbsp;"+rs.getString(1)+"<br></h3>");
         out.println(rs.getString(2)+"<br>");
         out.println("Street -   "+rs.getString(3)+" , ");
         out.println(" Pincode - "+rs.getString(4)+"<br>");
         out.println(rs.getString(5)+"<br>");
         out.println(" Mob no - "+rs.getString(6)+"  ,"+rs.getString(7)+"<br>");
         out.println(" Std - "+rs.getString(8)+" ");
         out.println(" ,Phno -"+rs.getString(9)+"<br>");
         out.println(" Fax  -"+rs.getString(10)+"</i></b><br></tr> </table>");

		 }
		
	%>	 
</font>
