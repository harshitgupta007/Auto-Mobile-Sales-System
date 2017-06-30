<style>
table, th, td {
    border: 0px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 20px;
}
</style>
<font color="white">
<table style="width:50%" align="center"><tr>
<%@page import="java.sql.*"%>
<%!
int n=1;
%>
<% 
        String state=request.getParameter("state");
		String district=request.getParameter("district");
		PreparedStatement pst=null;
        Connection con=null;
		    ResultSet rs=null;
        Class.forName("com.mysql.jdbc.Driver");
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srms","root","baba");
	    pst=con.prepareStatement("select * from v_showroom where state=? and district=?");
	    pst.setString(1,state);
	    pst.setString(2,district);
		 rs = pst.executeQuery();
		 while(rs.next())
		 {
				 out.println("<td><b><h3><i>"+rs.getString(1)+"<br></h3>");
		         out.println(rs.getString(2)+"<br>");
		         out.println("Street -   "+rs.getString(3)+"<br>");
		         out.println(rs.getString(5)+"  ,Pincode - "+rs.getString(4)+"<br>");
		         out.println(rs.getString(6)+"<br>");
		         out.println(" Mob no - "+rs.getString(7)+"  ,"+rs.getString(8)+"<br>");
		         out.println(" STD - "+rs.getString(9)+" ");
		         out.println(" ,Phno -"+rs.getString(10)+"</td>");
									n++;
									if(n==3)
									{
				out.println("</tr><tr>");
				n=1;
									}
			 }
			
        	     
		%>
		</tr></table></font>	 

