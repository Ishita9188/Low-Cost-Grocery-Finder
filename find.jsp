<%@page import="java.sql.*"%>
<%
    if (session.getAttribute("name") == null || session.getAttribute("profile") == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
%>
<%
String id=session.getAttribute("id").toString();
String name=session.getAttribute("name").toString();
String tot=request.getParameter("tot");
if (tot == null || tot.equals("0")) {
%>
        <script type="text/javascript">
            alert("Cart is empty.");
            window.location.href = "User_Home.jsp";
        </script>
<%
        return; 
    }
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
PreparedStatement query1=con.prepareStatement(" SELECT * FROM shop WHERE sid='"+id+"' and sname='"+name+"' ");
System.out.println(query1);
ResultSet rs=query1.executeQuery();
                                    while(rs.next())
                                    {
                                        String pn=rs.getString("pname");
                                        System.out.println(pn);
                                    
    PreparedStatement q=con.prepareStatement("SELECT rate, pname, Resid, place, address, image FROM dataset WHERE pname ='"+pn+"' AND rate = (SELECT MIN(rate) FROM dataset WHERE pname = '"+pn+"');");
     ResultSet r=q.executeQuery();
       System.out.println(q);
       while(r.next())
                                    {
                                        String pn1=r.getString("pname");
                                        int rat=r.getInt("rate");
                                        String place1=r.getString("place");
                                        String pid=r.getString("Resid");
                                        String adds=r.getString("address");
                                        String image=r.getString("image");
                                        PreparedStatement q1=con.prepareStatement("INSERT INTO minshop (id,name,pid,pname,rate,place,adds,image) VALUES ('"+id+"','"+name+"','"+pid+"','"+pn1+"','"+rat+"','"+place1+"','"+adds+"','"+image+"')");
                                        q1.executeUpdate();
                                        System.out.println(q1);
                                    }
                                    }
                                        
                out.println("<script type=\"text/javascript\">"); 			
		out.println("alert(\"Analysis Completed...\")");
		out.println("</script>");
		RequestDispatcher rd=request.getRequestDispatcher("predict.jsp");
		rd.include(request,response);    
%>