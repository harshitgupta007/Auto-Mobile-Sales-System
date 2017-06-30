<%@ page import="java.sql.*" %>
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
	String dealerid=request.getParameter("dealerid");
	Connection con=null;
	PreparedStatement pst=null;
	ResultSet rs=null;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srms","root","baba");
	pst=con.prepareStatement("select * from v_showroomrequest where did=?");
	pst.setString(1,dealerid);
	rs=pst.executeQuery();
	out.println("<th>Showroom Name</th><th>Model Name</th><th>Color</th><th>Quantity</th><th>Request Date</th></tr>");
	while(rs.next())
	{
		out.println("<td>"+rs.getString(2)+"</td>"+"<td>"+rs.getString(3)+"</td>"+"<td>"+rs.getString(4)+"<td>"+rs.getInt(5)+"</td>"+"<td>"+(rs.getDate(6)).toString()+"</td>"+"</tr>");
	}

%>
</tr></table>