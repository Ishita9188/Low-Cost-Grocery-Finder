<%@page import="java.sql.*"%>
<%
    if (session.getAttribute("name") == null || session.getAttribute("profile") == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
%>
<%
    String id = request.getParameter("id");
   Connection con=null;
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
    PreparedStatement query1=con.prepareStatement("delete from shop where pid='"+id+"'");
    int i = query1.executeUpdate();
    if(i>0){
        response.sendRedirect("Order.jsp");
    }
  %>  