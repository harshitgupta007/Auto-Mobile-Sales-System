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
        String vin=request.getParameter("vin");
		PreparedStatement pst=null;
        Connection con=null;
		    ResultSet rs=null;
        Class.forName("com.mysql.jdbc.Driver");
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srms","root","baba");
	    pst=con.prepareStatement("select * from v_bike_feature where vin=?");
	    pst.setString(1,vin);
		 rs = pst.executeQuery();
		 if(rs.next())
		 {
			 out.println("<th align='center'>Engine No</th><th>Cost Price</th><th size>Color</th><th>Model Name</th><th>Add Date</th><th>Type</th><th>Max Speed</th><th>Average</th><th>Fuel Tank</th></tr>");     
			 out.println("<tr><td>"+rs.getString(2)+"</td>"+"<td>"+rs.getString(3)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+rs.getString(5)+"</td>"+"<td>"+(rs.getDate(6)).toString()+"</td>"+"<td>"+rs.getString(7)+"</td>"+"<td>"+rs.getString(8)+"</td>"+"<td>"+rs.getString(9)+"</td>"+"<td>"+rs.getString(10)+"</td>"+"</tr>");
		 }
		 else
		 {
			out.println("<td>Given Vin Not Found</td></tr>");	
		 }
		 
%>
</table>
</font>