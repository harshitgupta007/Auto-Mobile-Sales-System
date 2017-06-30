<%@page import="java.util.Calendar"%>
<%@page import="java.sql.*"%>
<style>
<!--
th,td {
    text-align: center;
}
-->
</style>
<font color="white" size="3">
<table border="1" width=75%><tr>
<% 
        String custid=request.getParameter("custid");
		PreparedStatement pst=null;
        Connection con=null;
		    ResultSet rs=null;
        Class.forName("com.mysql.jdbc.Driver");
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srms","root","baba");
	    pst=con.prepareStatement("select * from v_customer where custid=?");
	    pst.setString(1,custid);
		 rs = pst.executeQuery();
		 if(rs.next())
		 {
			 out.println("<th>Name</th><th>Gender</th><th>Address</th><th>Street</th><th>Pincode</th><th>District</th><th>State</th><th>Email</th><th>Mob No.</th></tr>");     
			 out.println("<tr><td>"+rs.getString(2)+"</td>"+"<td>"+rs.getString(3)+"</td>"+"<td>"+rs.getString(5)+"</td>"+"<td>"+rs.getString(6)+"</td>"+"<td>"+rs.getString(7)+"</td>"+"<td>"+rs.getString(8)+"</td>"+"<td>"+rs.getString(9)+"</td>"+"<td>"+rs.getString(10)+"</td>"+"<td>"+rs.getString(11)+"</td>"+"</tr>");
		 }
		 else
		 {
			out.println("<td>Given Vin Not Found</td></tr>");	
		 }
		 
%>
</table>
</font>