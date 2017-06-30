<%@page import="java.sql.*"%>
   <% 
   
   try
   {
     String pass=request.getParameter("pass");
	  Integer sid=Integer.parseInt(request.getParameter("sid"));
		PreparedStatement pst=null;
        Connection con=null;
		    ResultSet rs=null;
        Class.forName("com.mysql.jdbc.Driver");
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","baba");
	   pst=con.prepareStatement("update showroomlogin set password=? where id=?");
	   pst.setString(1,pass);
	   pst.setInt(2,sid);
	   pst.executeUpdate();
	   con.close();
   }
   catch (Exception e)
   {
     System.err.println("Got an exception! ");
     System.err.println(e.getMessage());
   }
   response.sendRedirect("showroomlogin.jsp");
 %>