<%@page import="java.sql.*"%>
<%
    if (session.getAttribute("name") == null || session.getAttribute("profile") == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <style>
table
{
    background: yellow;border-radius: 12px;height: 27px;border-style: double;
}
div#readfile,td,tr
{
    margin-left: 296px;
    margin-top: 0px;
    border-style: groove;
    width: 400px;
    height: 100px;
}
.header-section {
    color: white;
    padding: 10px ;
}

.header-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px;
    flex-wrap: nowrap;        
    overflow-x: auto;         
    gap: 10px;
}

/* LEFT SIDE */
.header-left {
    display: flex;
    align-items: center;
    gap: 10px;
    flex: 1 ;
    min-width: 0;
    overflow: hidden;
    flex-shrink: 0;
}

.logo-img {
    height: 40px;
    width: auto;
    flex-shrink:0;
    margin: 0;
}

/* NAV MENU */
.main-menu {
    list-style: none;
    display: flex;
    gap: 10px;
    margin: 0;
    padding: 0;
    flex-wrap: nowrap;       
    overflow-x:  auto;
    white-space: nowrap;
    
    flex:1;
}

.main-menu li a {
    color: white;
    text-decoration: none;
    font-weight: bold;
    font-family: sans-serif;
    font-size: 14px;
    padding: 4px;
}

/* RIGHT SIDE (PROFILE) */
.header-right {
    display: flex;
    align-items: center;
    gap: 10px;
    white-space: nowrap;
    flex-shrink: 0;
}

.profile-pic {
    width: 50px;
    height: 50px;
    border-radius: 50%;
    object-fit: cover;
}

.profile-name {
    font-family: cursive;
    color: white;
    font-weight: bold;
}
@media (max-width: 768px) {
  .main-menu {
    display: none;
    flex-direction: column;
    background-color: black !important;
    position: absolute;
    top: 70px; /* adjust based on your header */
    left: 0;
    width: 100%;
    padding: 10px 0;
  }

  .main-menu li {
    margin: 10px 0;
    text-align: center;
  }
  .main-menu li a{
      color: white !important;
  }
  .nav-switch {
    display: block;
    color: white;
    font-size: 24px;
    cursor: pointer;
  }
}

@media (min-width: 769px) {
  .nav-switch {
    display: none;
  }

  .main-menu {
    display: flex !important;
  }
}

</style>
	<title>ShopIt</title>
	<meta charset="UTF-8">
	<meta name="description" content="Explore grocery options across multiple stores in Chennai and see them at a low cost.">
	<meta name="keywords" content="ShopIt,grocery, low-cost, store">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<link href="img/faviconImage.png" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="css/animate.css"/>

</head>
<body style="height:auto">
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	
	<!-- Header section-->

        <header class="header-section">
  <div class="header-container">
      <div class="nav-switch">
	     <i class="fa fa-bars"></i> 
      </div>
    <!-- LEFT: Logo + Menu -->
    <div class="header-left">
      <a href="index.html">
        <img src="img/groceryLogo2.png" alt="ShopIt Logo" class="logo-img">
      </a>
      <ul class="main-menu">
        <li><a href="User_Home.jsp">Home</a></li>
        <li><a href="Profile.jsp">Profile</a></li>
        <li><a href="Search.jsp">Search</a></li>
        <li><a href="Order.jsp">Order</a></li>
        <li><a href="predict.jsp">Result</a></li>
        <li><a href="index.html">Logout</a></li>
      </ul>
    </div>

    <!-- RIGHT: Profile Pic + Name -->
    <div class="header-right">
      <% String pro = session.getAttribute("profile").toString();                             
         String name = session.getAttribute("name").toString().trim();
         String shortName;
    if (name.length() > 11) {
        shortName = name.substring(0, 11);
    } else {
        shortName = name;
    }%>
      <img src="profile/<%=pro%>" alt="Profile" class="profile-pic">
      <span class="profile-name"><%=shortName%></span>
    </div>
  </div>
</header>

	<!-- Hero section -->
	<section class="hero-section set-bg" data-setbg="img/bg1.jpg" style="background-repeat: no-repeat;background-attachment: fixed;background-size:100% 100%;">
		<div class="hero-slider owl-carousel">
			<div class="hs-item" >
				       <%
            String id=session.getAttribute("id").toString();            
            String name1=session.getAttribute("name").toString();
                                       %>
                             <style>
        tr,td{
            background-color:Gainsboro;
            padding: 5px;
        }
    </style>
    

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");                                    
%>
              <h1 align="center" style="font-family: cursive; font-size: 33px; font-weight: bold; margin-top: 115px;color:white">Low Cost Analysis Details</h1><br><br>
              <a href="fulldet.jsp"><button style="width: 300px; margin-left: 1050px; border-radius: 20px; height: 50px; margin-top:-30px;"><h2 style="font-size: 23px; color: #d39e00; font-family: cursive; font-weight: bold;">Shopping Place Details</h2></button></a>    <br><br>
              <div style="overflow-x: auto; width: 100%;">
            <table align="center"  style="width:60%;text-transform: uppercase;text-align: center;color: wheat;font-weight: bold;line-height: 2;background: purple;border-radius: 13px;">
                    <tr style="color:darkblue;">
                    <td>product id</td>
                    <td>Product</td>
                    <td>Product name</td>
                    <td>Cost(Rs.)</td>
                    <td>Store Name</td>
                    <!--<td>Color</td>-->
                    <td>Rating Level</td>
                    <td>Rating</td>
                    <td>Votes</td>
                    <td>Delete</td>
                    
                  
                </tr><%
     PreparedStatement q1=con.prepareStatement(" select * from minshop where id='"+id+"' and name='"+name+"'");
     ResultSet r1=q1.executeQuery();
     System.out.println(q1);
     while(r1.next())
                                    {
                                        String pna=r1.getString("pname");
                                        String pnda=r1.getString("place");
                                        int ra=r1.getInt("rate");
                                        String pna22=r1.getString("pid");
                                        //String pnda22=r1.getString("dis");
                                        //String ra22=r1.getString("color");
                                        String image=r1.getString("image");
                                        String adddd=r1.getString("adds");
    
%>
                    <tr style="font-size: 15px;color:black;">
                                <td><%=pna22%></td>
                                <td><img src="SHOP/<%=image%>" alt="" style="width:100px; height: 50px; border-radius: 20px;"></td>
                                <td><%=pna%></td>
                                <td><%=ra%></td>
                                <!--<td><//%=ra22%></td>   -->
                                <td><%=pnda%></td>
                                <%
PreparedStatement q2 = con.prepareStatement("SELECT rating, word, votes FROM dataset WHERE pname=? AND place=?");
q2.setString(1, pna);
q2.setString(2, pnda);
ResultSet r2 = q2.executeQuery();

String rating = "-", word = "-", votes = "-";
if (r2.next()) {
    rating = r2.getString("rating");
    word = r2.getString("word");
    votes = r2.getString("votes");
}
%>
<td><%= rating %></td>
<td><%= word %></td>
<td><%= votes %></td>
                                <td><a href="pdelete.jsp?name=<%= pna%>">Delete</a></td>
                                </tr><%}%>
                    <%
                    int tot1=0;
                    PreparedStatement qu=con.prepareStatement(" select sum(rate) as tot,place,pname,pid,rate,adds from minshop where id='"+id+"' and name='"+name+"' ");
                    System.out.println(qu);
                    ResultSet r=qu.executeQuery();
                    while(r.next())
                    {
                        tot1=r.getInt("tot");
                    System.out.println(tot1);}  %>                 
                        
              </table></div><br><br><h2 style="margin-left: 646px; margin-top: -45px;color:yellow; font-weight: bold;margin-bottom: 12px"> Lowest Total Amount(Rs.): <%=tot1%> </h2><br>
              <br><br><br><br><br><br>                                                                                                       1>
              </div>
			</div>
		
	</section>
	<!-- Hero section end -->
        
        <!--Footer-->
        <footer style="background-color: #2f2f2f; color: #dddddd; text-align: center; padding: 15px 10px; font-size: 14px;">
  <hr style="border-top: 1px solid #444; margin-bottom: 10px;">
  <p>© 2025 ShopIt. All rights reserved.</p>
  <p>Contact: <a href="mailto:support@shopit.com" style="color: #A5D6A7; text-decoration: none;">support@shopit.com</a> | 
     <a href="tel:+919876543210" style="color: #A5D6A7; text-decoration: none;">+91-98765-43210</a>
  </p>
</footer>
	
	
	<!--====== Javascripts ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/sly.min.js"></script>
	<script src="js/jquery.nicescroll.min.js"></script>
	<script src="js/main.js"></script>
    </body>
</html>