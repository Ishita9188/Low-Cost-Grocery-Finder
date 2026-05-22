<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.*"%>
<%
    if (session.getAttribute("name") == null || session.getAttribute("profile") == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
%>
<%try{
    String id=request.getParameter("id");
    String pid=request.getParameter("pid");
    String pname=request.getParameter("pname");
    String image=request.getParameter("image");
    String cost=request.getParameter("cost");
    String place=request.getParameter("place");
    String sid=session.getAttribute("id").toString();
    String sname=session.getAttribute("name").toString();
    session.setAttribute("search",place);
    DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
                    Calendar calobj = Calendar.getInstance();
                    String d=df.format(calobj.getTime());
                    System.out.println(d);
               
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
    PreparedStatement query1=con.prepareStatement("INSERT INTO shop (sid,sname,id,pid,pname,cost,place,dates,image) VALUES ('"+sid+"','"+sname+"','"+id+"','"+pid+"','"+pname+"','"+cost+"','"+place+"','"+d+"','"+image+"')");
    System.out.println(query1);
    query1.executeUpdate();
           System.out.println(query1);
                    out.println("<script>"); 			
                    out.println("alert(\"Product added.\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("searchaction1.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Search.jsp");
                    rd.include(request,response);
                }
    
%>