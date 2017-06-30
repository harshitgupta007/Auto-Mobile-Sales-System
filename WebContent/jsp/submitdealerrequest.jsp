<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
    <%@ page import="java.sql.*"%>
    <font color="white">
    <%
    String modelname=request.getParameter("modelname");
    String color=request.getParameter("color");
    Integer quantity=Integer.parseInt(request.getParameter("quantity"));
    String dealerid=request.getParameter("dealerid");
    PreparedStatement pst=null;
    Connection con =null;
    ResultSet rs=null;
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srms","root","baba");
    pst=con.prepareStatement("insert into v_companydealer values(?,?,?,?,curdate())");
    pst.setString(1,dealerid);
    pst.setString(2,modelname);
    pst.setString(3,color);
    pst.setInt(4,quantity);
    pst.executeUpdate();
    out.println("<b>Request Successfully Submitted to Company</b>");
    %>
    </font>