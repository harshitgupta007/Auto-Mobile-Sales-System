    <%@ page import ="java.sql.*" %>
<%
    if ((session.getAttribute("id") == null) || (session.getAttribute("id") == "")) 
{
%>

<font size="4" color=#FF5733>You are not logged in</font><br/>
<a href="showroomlogin.jsp"><font size="3" color=#FF5733>Please Login</font></a>
<%
}
else 

{
%>
Welcome your page <%=session.getAttribute("uname")%><br/><br/>
<%
PreparedStatement pst=null;
    Integer id=(Integer)session.getAttribute("id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/notuse",
            "root", "12345");
	String sql="select * from showroomowner where showroomid=?";
    pst = con.prepareStatement(sql);
	pst.setInt(1,id);
    ResultSet rs;
    rs = pst.executeQuery();
    if (rs.next()) {
		int i=rs.getInt(1);
		%>
	<li style=text-transform:capitalize>your showroom info --->id:<%=i%>,owner name:<%out.println(rs.getString(2));%>, phone<%=rs.getString(3)%><br/><br/></li>
	<%
        
	}
	%>

<br><font size="3" color=green><a href='showroomlogout.jsp'>Log out</a></font>
<%
    }
%>