       <%@page import="java.sql.*"%>
       <font color="white">
<% 
		String dealerid=request.getParameter("dealerid");
		String name=request.getParameter("showroomname");
		String vinno=request.getParameter("vinno");
		PreparedStatement pst=null;
        Connection con=null;
		    ResultSet rs=null;
        Class.forName("com.mysql.jdbc.Driver");
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srms","root","baba");
	    //check dealer stock
	    pst=con.prepareStatement("select * from v_dealerstock where did=? and vin=?");
	   pst.setString(1,dealerid);
	   pst.setString(2,vinno);
	 rs = pst.executeQuery();
	 if(rs.next())
	 {
		 //find showroomid
		 pst=con.prepareStatement("select sid from showroom where name=? and did=?");
		 pst.setString(1,name);
		 pst.setString(2,dealerid);
		 rs=pst.executeQuery();
		 if(rs.next())
		 {
			 int sid=rs.getInt(1);
			//insert request 
			 pst=con.prepareStatement("insert into dealersupplytoshowroom(did,bid,sid,supplydate) values(?,?,?,curdate())");
             pst.setString(1,dealerid);
             pst.setString(2,vinno);
             pst.setInt(3,sid);
             pst.executeUpdate();
             out.println("Successfully Submission");
		 }
		 else
		 {
			 out.println("Showroom not found");
		 }
	 }
	 else
	 {
		 out.println("Not Available In Your Request");
	 }
         
%>
</font>