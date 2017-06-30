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
    Integer id=(Integer)session.getAttribute("id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srms",
            "root", "baba");
	String sql="select * from showroom where sid=?";
    pst = con.prepareStatement(sql);
	pst.setInt(1,id);
    ResultSet rs;
    rs = pst.executeQuery();
    if (rs.next()) {
		int i=rs.getInt(1);
		String dealerid=rs.getString(16);
		%>
		<p id="dealerid" hidden><%=dealerid%></p>
	<li id="sid" style=text-transform:capitalize value=<%=i %>><font color="yellow"><marquee><h4>Welcome to <%out.println(rs.getString(2));%></h4></li></marquee></font>
	<%
        
	}
	%>
<%
    }
%>
 <div class="col-md-2">
      <ul class="nav nav-pills nav-stacked">
       <li class="active" id="logout"><a href="#" onclick="showroomLogout()">Logout</a></li>
        <li class="active"><a href="#" onclick="getShowroomStock()">Stock</a></li>
        <li class="active"><a href="#" onclick="getSellForm()">Sell Bike</a></li>
        <li class="active"><a href="#" onclick="getshowroomCart()">Sell Cart</a></li>
        <li class="active"><a href="#" onclick="showroombikeEntry()">Bike Entry</a></li>
        <li class="active"><a href="#" onclick="requesttoDealer()">Request to Dealer</a></li>
         <li class="active" id="logout"><a href="#" onclick="bikeInformation()">Bike Information</a></li>
          <li class="active" id="logout"><a href="#" onclick="customerInformation()">Customer Information</a></li>
        <li class="active"><a href="#" onclick="schangePassword()">Change Password</a></li>
      </ul>
    </div>
    <script>
   
    </script>