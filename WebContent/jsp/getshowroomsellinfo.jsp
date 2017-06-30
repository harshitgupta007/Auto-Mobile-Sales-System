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
	Integer sid=Integer.parseInt(request.getParameter("sid"));
	Connection con=null;
	PreparedStatement pst=null;
	ResultSet rs=null;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srms","root","baba");
	pst=con.prepareStatement("select * from v_sellinformation where sid=?");
	pst.setInt(1,sid);
	rs=pst.executeQuery();
	out.println("<th>Customer Id</th><th size>Name</th><th>Vin No</th><th>Sell Price</th><th>sell Date</th></tr>");
	while(rs.next())
	{
		out.println("<td>"+rs.getString(1)+"</td>"+"<td>"+rs.getString(2)+"</td>"+"<td>"+rs.getString(3)+"</td>"+"<td>"+rs.getInt(4)+"</td>"+"<td>"+(rs.getDate(5)).toString()+"</td>"+"</tr>");
	}

%>
</tr></table>