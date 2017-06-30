<%@ page import ="java.sql.*" %>
<%
    if ((session.getAttribute("id") == null) || (session.getAttribute("id") == "")) 
{
%>

<font size="4" color=#FF5733>You are not logged in</font>
<a href="showroomlogin.jsp"><font size="3" color=#FF5733>Please Login</font></a>
<%
}
else
{
%>
<%
PreparedStatement pst=null;
    String id=(String)session.getAttribute("id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srms",
            "root", "baba");
	String sql="select * from dealer where id=?";
    pst = con.prepareStatement(sql);
	pst.setString(1, id);
    ResultSet rs;
    rs = pst.executeQuery();
    if (rs.next()) {
		String did=rs.getString(1);
	%>
	<p id="dealerid" hidden><%=did%></p>
	<li  style=text-transform:capitalize><font color="yellow"><marquee><p size="4">Welcome to <%out.println(rs.getString(2));%></p></li></marquee></font>
	<%
        
	}
	%>
<%
    }
%>
 <div class="col-md-2" id ="div10">
      <ul class="nav nav-pills nav-stacked">
        <li class="active" id="logout"><a href="#" onclick="dealerLogout()">Logout</a></li>
        <li class="active"><a href="#" onclick="getdealerStock()">Stock</a></li>
         <li class="active"><a href="#" onclick="dealerbikeEntry()">Bike Entry</a></li>
       <li class="active" id="logout"><a href="#" onclick="bikeInformation()">Bike Information</a></li>
        <li class="active"><a href="#" onclick="requesttoCompany()">Request To Company</a></li>
        <li class="active"><a href="#" onclick="getshowroomRequest()">&nbsp;Request From Showroom</a></li>
        <li class="active"><a href="#" onclick="supplytoShowroom()">&nbsp;Supply To Showroom</a></li>
      </ul>
    </div>
</body>
</html>