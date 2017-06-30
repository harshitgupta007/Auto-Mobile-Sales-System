   <%@page import="java.sql.*"%>
   <% 
    
     String username=request.getParameter("username");
		String password=request.getParameter("password");
		PreparedStatement pst=null;
        Connection con=null;
		    ResultSet rs=null;
        Class.forName("com.mysql.jdbc.Driver");
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","baba");
	   pst=con.prepareStatement("select * from dealerlogin where username=? and password=?");
	   pst.setString(1,username);
	   pst.setString(2,password);
	   rs = pst.executeQuery();
	   if (rs.next())
		{

	        
			 session.setAttribute("id",rs.getString(1));
			 
			 session.setAttribute("username", username);
	         response.sendRedirect("dealerindex.jsp");
	        
	    }
		else
		{
	        String msg="invalid username and password!";
			
			 RequestDispatcher rd = request.getRequestDispatcher("dealerlogin.jsp");
	         request.setAttribute("MSG",msg);
	         rd.forward(request, response);
	    }
	%>