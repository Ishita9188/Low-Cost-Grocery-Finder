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
.hero-section, .hs-item {
  height: auto !important;
  min-height: 0 !important;
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
    background-color: #111;
    position: absolute;
    top: 60px; /* adjust based on header height */
    left: 0;
    width: 100%;
    padding: 0;
    margin: 0;
    z-index: 999;
  }

  .main-menu.show-menu {
    display: flex;
  }

  .main-menu li {
    width: 100%;
    border-top: 1px solid #444;
  }

  .main-menu li a {
    display: block;
    padding: 15px 0;
    text-align: center;
    font-weight: bold;
    color: white !important;
    background-color: #111;
    text-decoration: none;
    transition: background 0.3s;
  }

  .main-menu li a:hover {
    background-color: #333;
  }

  .nav-switch {
    display: block;
    font-size: 24px;
    cursor: pointer;
    color: white;
    padding: 10px;
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


//Search responsive
/* Make form elements stack vertically on small screens */
@media (max-width: 768px) {
  form table {
    width: 100%;
    display: block;
    padding: 0 20px;
  }

  form table tr {
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  form table td {
    width: 100%;
    text-align: center;
    margin-bottom: 10px;
  }

  form select,
  form button {
    width: 90% !important;
    max-width: 350px;
    height: 45px;
    font-size: 16px;
  }

  .search-image {
    margin-top: 0;
    padding: 0 20px;
  }

  .search-image img {
    width: 100% !important;
    max-width: 400px;
    height: auto;
    margin: 20px auto;
  }
}
@media (max-width: 768px) {
  form table {
    width: 100%;
    display: block;
    padding: 0 20px;
  }

  form table tr {
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  form table td {
    width: 100%;
    text-align: center;
    margin-bottom: 10px;
  }

  form select,
  form button {
    width: 90% !important;
    max-width: 350px;
    height: 45px;
    font-size: 16px;
    z-index: 1000;
    position: relative;
  }

  .search-image {
    margin-top: 20px;
    padding: 0 20px;
    display: flex;
    justify-content: center;
    z-index: 0;
  }

  .search-image img {
    width: 90% !important;
    max-width: 400px;
    height: auto;
    margin: 20px auto;
    position: relative;
    z-index: 0;
  }

  /* Ensure nothing is clipped */
  .hero-section {
    overflow: visible !important;
  }

  select {
    position: relative;
    z-index: 1001;
  }
}

.navbar-menu {
  position: relative;
  z-index: 1000; /* or higher */
}

form, select, button {
  position: relative;
  z-index: 1;
}
.scrollable-table {
  overflow-x: auto;
  max-width: 100%;
}

.scrollable-table table {
  min-width: 800px; /* Adjust as needed */
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
         height:500%;
         padding: 5px;
        }
    </style>
    <h1 align="center" style="font-family: cursive;font-weight: bold; font-size: 33px; margin-top: 105px;color:whitesmoke">Order Details</h1><br><br>
    <div class="scrollable-table">
              <table align="center"  style="width:60%;text-transform: uppercase;text-align: center;color: wheat;font-weight: bold;line-height: 2;background: purple;border-radius: 13px;">
                <tr style="color:darkblue;">
                    <td>Customer id</td>
                    <td>Product</td>
                    <td>Date</td>
                    <td>product id</td>
                    <td>Product name</td>
                    <td>Cost(Rs.)</td>
                    <td>Place</td>
                    <td>Delete</td>
                </tr>
                <%
                Connection con=null;
                String pla="";
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                    PreparedStatement query1=con.prepareStatement("select * from shop where sid='"+id+"' and sname='"+name1+"' ");
                    System.out.println(query1);
                    ResultSet rs=query1.executeQuery();
                    boolean hasData = false;
                    while(rs.next())
                        
                    {
                        hasData = true;
                        pla=rs.getString("place");
                        session.setAttribute("pla",pla);
                        String image=rs.getString("image");
                        %>
                        
                            <tr style="font-size: 15px;color:black;">
                                <td><%=rs.getString("sid")%></td>
                                <td><img src="SHOP/<%=image%>" alt="" style="width:100px; height: 50px; border-radius: 20px;"></td>
                                <td><%=rs.getString("dates")%></td>
                                <td><%=rs.getString("id")%></td>
                                <td><%=rs.getString("pname")%></td>
                                <td><%=rs.getString("cost")%></td>
                                <td><%=rs.getString("place")%></td>  
                                <td><a href="delete.jsp?id=<%=rs.getString("pid")%>">Delete</td>
                                </tr>
                    <%}
                    if (!hasData) {
%>
    <tr>
        <td colspan="8" style="text-align: center; font-weight: bold; font-size: 18px; color: red;padding: 40px 0;">
            NO PRODUCTS ADDED
        </td>
    </tr>
<%
}
                    int tot=0;
                    PreparedStatement qu=con.prepareStatement("select sum(cost)as tot from shop where sid='"+id+"' and sname='"+name1+"' ");
                    System.out.println(qu);
                    ResultSet r=qu.executeQuery();
                    while(r.next())
                    {
                        tot=r.getInt("tot");
                    System.out.println(tot);}  %>                 
                        
              </table></div><br><br><h2 style="margin-left: 646px; margin-top: -45px;color:yellow; font-weight: bold;"> Total Amount(Rs.): <%=tot%> </h2><br>
              <div style="display: flex; justify-content: center; margin-top: 20px;">
  <a href="find.jsp?tot=<%=tot%>">
    <button style="width: 150px;">
      <h2 style="color:Black; font-weight: bold;"> Analyze </h2>
    </button>
  </a>
</div>

                        </div>
			</div>
		<br><br><br><br><br><br><br>
    
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