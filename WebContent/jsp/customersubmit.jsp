<%@ page import ="java.sql.*" %>
<font color="lightgray">	
<%
    
	
    Integer sid = Integer.parseInt(request.getParameter("sid"));
	String custid=request.getParameter("custid");
    String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String dob =request.getParameter("dob");
	String addr = request.getParameter("addr");
	String street = request.getParameter("street");
	String district= request.getParameter("district");
	String  state= request.getParameter("state");
	String pincode = request.getParameter("pincode");
	String  email= request.getParameter("email");
	String mob = request.getParameter("mob");
	String std = request.getParameter("std");
	String phno = request.getParameter("phno");
	String vin = request.getParameter("vin");
	Integer sellcost=Integer.parseInt(request.getParameter("sellcost"));
	PreparedStatement pst=null;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srms",
            "root", "baba");
	String sql="select * from v_showroomstock where vin=? and sid=?";
    pst = con.prepareStatement(sql);
    pst.setString(1,vin);
    pst.setInt(2,sid);
    ResultSet rs;
    rs = pst.executeQuery();
    if (rs.next())
	{
    	sql="select custid from v_customers where custid=?";
    	pst=con.prepareStatement(sql);
    	pst.setString(1,custid);
    	rs=pst.executeQuery();
    	if(rs.next()==false)
    	{
        sql="insert into customers values(?,?,?,str_to_date(?,'%d/%m/%Y'),?,?,?,?,?,?,?,?,?)";
        pst=con.prepareStatement(sql);
        pst.setString(1,custid);
        pst.setString(2,name);
        pst.setString(3,gender);
        pst.setString(4,dob);
        pst.setString(5,addr);
        pst.setString(6,street);
        pst.setString(7,pincode);
        pst.setString(8,district);
        pst.setString(9,state);
        pst.setString(10,email);
        pst.setString(11,mob);
        pst.setString(12,std);
        pst.setString(13,phno);
        pst.executeUpdate();
        }
    	sql="insert into v_sellcart(custid,sid,bid,sellprice,selldate) values(?,?,?,?,curdate())";
		pst=con.prepareStatement(sql);
		pst.setString(1,custid);
		pst.setInt(2,sid);
		pst.setString(3,vin);
		pst.setInt(4,sellcost);
		pst.executeUpdate();
		out.println("Successful Submission Of Sell Information");
	}
	else
	{
			out.println("This Bike is Not Available In your stock");
    }
%>
</font>