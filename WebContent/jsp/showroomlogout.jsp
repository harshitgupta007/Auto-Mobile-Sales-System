<%
session.setAttribute("id", null);
session.invalidate();
response.sendRedirect("showroomlogin.jsp");
%>