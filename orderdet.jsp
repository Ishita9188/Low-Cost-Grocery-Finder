<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="zxx">
<head>
    <style>
table
{
    background: #c70707;border-radius: 12px;height: 27px;border-style: double;
}
div#readfile,td,tr
{
    margin-left: 296px;
    margin-top: 0px;
    border-style: groove;
    width: 400px;
    height: 100px;
}
html, body {
    height: 100%;
    margin: 0;
    padding: 0;
    display: flex;
    flex-direction: column;
}

.hero-section {
    flex: 1 0 auto;
    display: flex;
    flex-direction: column;
}

.hero-section > .hero-slider {
    flex: 1 0 auto;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.hero-section > .hero-slider > .hs-item {
    flex-grow: 1;
    display: flex;
    flex-direction: column;
}

.hs-item > div {
    flex-grow: 1;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

footer {
    flex-shrink: 0;
    margin-top: auto;
    margin-bottom: 10px;
}

</style>
	<title>ShopIt</title>
	<meta charset="UTF-8">
	<meta name="description" content="Explore grocery options across multiple stores in Chennai and see them at a low cost.">
	<meta name="keywords" content="ShopIt,grocery, low-cost, store">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="css/animate.css"/>

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	
	<!-- Header section -->
	<header class="header-section">
		<div class="container-fluid">
			<!-- logo -->
			<div class="site-logo">
                            <img src="img/groceryLogo2.png" alt="Logo" style="height: 50px; width: auto;">
			</div>
			<!-- responsive -->
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
			
			<!-- site menu -->
	<ul class="main-menu">
                            <li><a href="Admin_Home.jsp">Home</a></li>
				<li><a href="viewpro.jsp">View Product</a></li>
				<li><a href="viewuser.jsp">View User</a></li>
				<li><a href="orderdet.jsp">Order Details</a></li>
                               
				<li><a href="index.html">Logout</a></li>
			</ul>     </div>
            
            <br><br>
	</header>
	<!-- Header section end -->


	<!-- Hero section -->
	<section class="hero-section set-bg" data-setbg="img/bg1.jpg" style="background-repeat: no-repeat;background-attachment: fixed;background-size:100% 100%;">
		<div class="hero-slider owl-carousel">
			<div class="hs-item" >
				 <style>
        tr,td{
            background-color:Gainsboro;
            padding: 5px;
        }
    </style>
    <br><br>
    <div style="overflow: scroll; width:100%; height: 700px;">   
        <br><br>
    <table align="center"  style="width:70%;text-transform: uppercase;text-align: center;color: wheat;font-weight: bold;line-height: 2;background: purple;border-radius: 13px;margin-bottom: 40px">
                <tr style="color:darkblue;">
                    <td>Customer id</td>
                    <td>Name</td>
                    <td>Product Name</td>
                    <td>Cost</td>
                    <td>Place</td>
                    <!--<td>Distance</td>-->
                    <td>Date</td>
              
                    
                </tr>
                <%
                Connection con=null;
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                    PreparedStatement query1=con.prepareStatement("select * from shop");
                    System.out.println(query1);
                    ResultSet rs=query1.executeQuery();
                     boolean hasData = false;
                    while(rs.next())
                    {
                        hasData = true;
                        %>
                        
                            <tr style="font-size: 15px;color:black;">
                                
                                <td><%=rs.getString("sid")%></td>                                
                                
                                <td><%=rs.getString("sname")%></td>
                                
                                <td><%=rs.getString("pname")%></td>
                                <td><%=rs.getString("cost")%></td>
                                <td><%=rs.getString("place")%></td>
                                <!--<td><//%=rs.getString("distance")%></td>-->
                                <td><%=rs.getString("dates")%></td>
                                
                                
                                
</tr>
    <%
        }
        if (!hasData) {
    %>
    <tr>
        <td colspan="6" style="text-align:center; font-size: 18px; font-weight: bold; color: red; background-color: white;">
            NO RECENT ORDERS
        </td>
    </tr>
    <%
        }
    %>
    </table>
    <br><br>
    <footer style="background-color: #2f2f2f; color: #dddddd; text-align: center; padding: 15px 10px; font-size: 14px;">
  <hr style="border-top: 1px solid #444; margin-bottom: 10px;">
  <p>© 2025 ShopIt. All rights reserved.</p>
  <p>Contact: <a href="mailto:support@shopit.com" style="color: #A5D6A7; text-decoration: none;">support@shopit.com</a> | 
     <a href="tel:+919876543210" style="color: #A5D6A7; text-decoration: none;">+91-98765-43210</a>
  </p>
</footer>
    </div>
            <br><br><br>
       
                           </div>
			</div>
		
	</section>
	<!-- Hero section end -->

	
	
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