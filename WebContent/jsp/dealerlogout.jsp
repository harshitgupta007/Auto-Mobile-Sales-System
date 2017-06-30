<%
session.setAttribute("id", null);
session.invalidate();
response.sendRedirect("dealerlogin.jsp");
%>