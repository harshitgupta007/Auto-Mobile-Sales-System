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
	Integer sid=Integer.parseInt(request.getParameter("showroomid"));
	Connection con=null;
	PreparedStatement pst=null;
	ResultSet rs=null;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srms","root","baba");
	pst=con.prepareStatement("select * from v_showroomstock where sid=?");
	pst.setInt(1,sid);
	rs=pst.executeQuery();
	out.println("<th>Vin No</th><th>Cost Price</th><th size>Color</th><th>Model Name</th><th>Model Year</th><th>Type</th><th>Entry Date</th></tr>");
	while(rs.next())
	{
		out.println("<td>"+rs.getString(1)+"</td>"+"<td>"+rs.getString(3)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+rs.getString(5)+"</td>"+"<td>"+(rs.getDate(6)).toString()+"</td>"+"<td>"+rs.getString(7)+"</td>"+"<td>"+(rs.getDate(6)).toString()+"</td>"+"</tr>");
	}

%>
</tr></table>