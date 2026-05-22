<%-- 
    Document   : UpdateProfile
    Created on : 11 Jun, 2025, 10:45:26 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String id = request.getParameter("id");
    String field = request.getParameter("field");
    String value = request.getParameter("value");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop", "root", "");
    PreparedStatement ps = con.prepareStatement("UPDATE register SET " + field + " = ? WHERE id = ?");
    ps.setString(1, value);
    ps.setString(2, id);
    int updated = ps.executeUpdate();

     if (updated > 0) {
        
        if (field.equals("name")) {
            session.setAttribute("name", value.trim());
        } else if (field.equals("pass")) {
            session.setAttribute("pass", value);
        }

        response.sendRedirect("Profile.jsp");
    } else {
        out.println("Update failed!");
    }
%>
