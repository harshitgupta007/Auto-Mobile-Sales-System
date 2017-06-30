<%@ page import="java.sql.*"%>
<font color="yellow">
<%
PreparedStatement pst=null;
String did=request.getParameter("dealerid");
String vin=request.getParameter("vinno");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srms",
        "root", "baba");
String sql="select * from v_companysupplytodealer where vin=? and did=?";
pst = con.prepareStatement(sql);
pst.setString(1,vin);
pst.setString(2,did);
ResultSet rs;
rs = pst.executeQuery();
if (rs.next()) {
	sql="insert into dealerstock(did,bid,entrydate) values(?,?,curdate())";
	pst=con.prepareStatement(sql);
	pst.setString(1,did);
	pst.setString(2,vin);
	pst.executeUpdate();
	out.println("Sucessfully Added in Your Stock");
}
else
{
	out.println("</b>**Wrong Vin Number</b>");
}
%>
</font>