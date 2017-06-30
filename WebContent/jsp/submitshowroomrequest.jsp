<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
    <%@ page import="java.sql.*"%>
    <font color="white">
    <%
    Integer sid=Integer.parseInt(request.getParameter("showroomid"));
    String modelname=request.getParameter("modelname");
    String color=request.getParameter("color");
    Integer quantity=Integer.parseInt(request.getParameter("quantity"));
    String dealerid=request.getParameter("dealerid");
    PreparedStatement pst=null;
    Connection con =null;
    ResultSet rs=null;
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srms","root","baba");
    pst=con.prepareStatement("insert into v_showroomdealer values(?,?,?,?,curdate(),?)");
    pst.setInt(1,sid);
    pst.setString(2,modelname);
    pst.setString(3,color);
    pst.setInt(4,quantity);
    pst.setString(5,dealerid);
    pst.executeUpdate();
    out.println("<b>Request Successfully Submitted to dealer</b>");
    %>
    </font>