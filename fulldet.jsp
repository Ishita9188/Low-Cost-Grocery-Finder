<%@page import="java.sql.*"%>
<%
    if (session.getAttribute("name") == null || session.getAttribute("profile") == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
%>
<%
    if (session.getAttribute("id") == null || session.getAttribute("pla") == null) {
%>
    <script type="text/javascript">
        alert("No prediction request made.");
        window.location.href = "predict.jsp";
    </script>
<%
        return;
    }
%>

<!DOCTYPE html>
<html lang="zxx">
<head>
    <style>
table
{
    background: yellow;border-radius: 12px;height: 27px;border-style: double;margin-bottom: 50px;
}
div#readfile,td,tr
{
    margin-left: 296px;
    margin-top: 0px;
    border-style: groove;
    width: 400px;
    height: 100px;
}
.hero-slider, .hs-item {
    height: auto !important;
    overflow: visible !important;
}
.owl-carousel, .owl-stage-outer, .owl-stage, .owl-item {
    height: auto !important;
    overflow: visible !important;
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
    flex-wrap: nowrap;        /* Prevent wrapping */
    overflow-x: auto;         /* Allow horizontal scroll if needed */
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
    flex-shrink: 0;/* Prevent wrapping */
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
    flex-wrap: nowrap;       /* No wrapping */
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
	
	<!-- Header section -->

        <header class="header-section">
  <div class="header-container">
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
	<section class="hero-section set-bg" data-setbg="img/bg1.jpg">
		<div class="hero-slider owl-carousel">
			<div class="hs-item" >
				       <%
            String id=session.getAttribute("id").toString();            
            String name1=session.getAttribute("name").toString();
                                       %>
                             <style>
        tr,td{
            background-color:white;
            padding: 5px;
        }h1{
            font-family: c
                ;
        }
    </style>
    

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");                                    
%>
              <h1 align="center" style="font-family: cursive; font-size: 33px; font-weight: bold; font-family: cursive; margin-top: 105px;color:white">Shopping Place Details</h1><br><br>
              <table align="center"  style="width:60%;text-transform: uppercase; font-size: 20px;text-align: center;font-weight: bold;line-height: 2;background: white;border-radius: 13px;margin-bottom: 185px;">
                    <%
     String pla=session.getAttribute("pla").toString();
     String rs="";
     PreparedStatement q=con.prepareStatement(" select sum(rate) as tot from minshop where id='"+id+"' and name='"+name1+"'");
     ResultSet r=q.executeQuery();
     System.out.println(q);
     while(r.next())
                                    {
                                        
                                       rs=r.getString("tot");
                                    }
     
                                  
     PreparedStatement q1=con.prepareStatement(" SELECT DISTINCT place,adds FROM minshop where id='"+id+"' and name='"+name1+"' and not place='"+pla+"'");
     ResultSet r1=q1.executeQuery();
     if (!r1.isBeforeFirst()) {
%>
    <script type="text/javascript">
        alert("No prediction request made.");
        window.location.href = "predict.jsp";
    </script>
<%
    return;
}
%>
<%
     System.out.println(q1);
     while(r1.next())
                                    {
                                        
                                        String pnda=r1.getString("place");                                        
                                        String adddd=r1.getString("adds");
    
%>

                        <tr align="center"><td style="color:black">Shopping Place </td><td style=" color: #c70707; font-family: cursive;"><%=pnda%></td></tr>
                        <tr align="center"><td style="color:black">Address </td><td style=" color: #c70707; font-family: cursive;"><%=adddd%></td></tr>
                        <!--<tr align="center"><td style="color:black">Color </td><td style=" color: #c70707; font-family: cursive;"><//%=ra22%></td></tr>-->
                        <!--<tr align="center"><td style="color:black">Distance </td><td style=" color: #c70707; font-family: cursive;" ><//%=pnda22%></td></tr>-->
                        <!--<tr align="center"><td style="color:black">Total Lesser Amount(Rs.) </td><td style=" color: red; font-family: cursive;"><%=rs%></td></tr>-->
                        
                    <%} %>                 
                        
              </table></div>
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
	

	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/sly.min.js"></script>
	<script src="js/jquery.nicescroll.min.js"></script>
	<script src="js/main.js"></script>
    </body>
</html>