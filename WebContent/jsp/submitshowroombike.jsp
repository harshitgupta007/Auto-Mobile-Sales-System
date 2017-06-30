<%@ page import="java.sql.*"%>
<font color="yellow">
<%
PreparedStatement pst=null;
Integer sid=Integer.parseInt(request.getParameter("showroomid"));
String vin=request.getParameter("vinno");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srms",
        "root", "baba");
String sql="select * from dealersupplytoshowroom where bid=? and sid=?";
pst = con.prepareStatement(sql);
pst.setString(1,vin);
pst.setInt(2,sid);
ResultSet rs;
rs = pst.executeQuery();
if (rs.next()) {
	sql="insert into showroomstock(sid,edate,bid) values(?,curdate(),?)";
	pst=con.prepareStatement(sql);
	pst.setInt(1,sid);
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