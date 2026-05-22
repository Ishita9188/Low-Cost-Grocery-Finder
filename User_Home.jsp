<!DOCTYPE html>
<%
    if (session.getAttribute("name") == null || session.getAttribute("profile") == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
%>
<html lang="zxx">
<head>
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

        <style>
            .search-image {
  display: flex;
  justify-content: center; 
  margin-top: -90px;
}

.search-image img {
  width: 900px !important;  
  max-width: none !important;
  height: auto;
  border-radius: 15px;
  margin-left: auto;
  margin-right: 100px;
  margin-bottom: 50px;
}

.header-section {
    
    color: white;
    padding: 10px 30px;
}

.header-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
}

/* LEFT side (logo + nav) */
.header-left {
    display: flex;
    align-items: center;
    gap: 30px;
}

.logo-img {
    height: 40px;
    width: auto;
}

/* Navigation */
.main-menu {
    list-style: none;
    display: flex;
    gap: 20px;
    margin: 0;
    padding: 0;
}

.main-menu li a {
    color: white;
    text-decoration: none;
    font-weight: bold;
    font-family: sans-serif;
}

/* RIGHT side (profile) */
.header-right {
    display: flex;
    align-items: center;
    gap: 10px;
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
    background-color: #222;
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

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	
	<!-- Header section -->
        <header class="header-section">
  <div class="header-container">
      <!-- responsive -->
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
         if (name.length() > 11) {
        name = name.substring(0, 11);
    } %>
      <img src="profile/<%=pro%>" alt="Profile" class="profile-pic">
      <span class="profile-name"><%=name%></span>
    </div>
  </div>
</header>
	<!-- Header section end -->
        
	<!-- Hero section -->
	<section class="hero-section set-bg" data-setbg="img/bg1.jpg" style="background-repeat: no-repeat;background-attachment: fixed;background-size:100% 100%;">
            <br><br><br><br>
            <h1 style="color:white;padding:40px">Welcome To Home.</h1>
            <div class="search-image">
            <img src="img/trolleyPic.png" alt="Search Visual" style="width: 400px; height: auto; border-radius: 15px; ">
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