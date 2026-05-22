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
  margin-top: -100px;
}

.search-image img {
  width: 900px !important;  
  max-width: none !important;
  height: auto;
  border-radius: 15px;
  margin-left: auto;
  margin-right: 100px;
  margin-bottom: 60px;
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


/* WRAP DROPDOWN + STORE CARDS HORIZONTALLY */
.search-section {
  display: flex;
  justify-content: flex-start;
  align-items: flex-start;
  flex-wrap: wrap;
  gap: 40px;
  padding: 30px 50px;
}

/* Left: Form styling */
.search-section form {
  flex: 0 0 auto;
}

/* Right: Store cards grid layout */
.store-cards {
  display: grid;
  grid-template-columns: repeat(2, 1fr); /* fallback for small screens */
  gap: 20px;
  flex: 1;
}

/* Each card */
.store-card {
  width: 100%;
  background: #ffffffaa;
  border-radius: 12px;
  overflow: hidden;
  box-shadow: 0 4px 8px rgba(0,0,0,0.2);
  text-align: center;
}

.store-card img {
  width: 100%;
  height: 150px;
  object-fit: cover;
}

/* Larger screens: show 3 to 5 cards in a row */
@media (min-width: 768px) {
  .store-cards {
    grid-template-columns: repeat(3, 1fr);
  }
}

@media (min-width: 1024px) {
  .store-cards {
    grid-template-columns: repeat(4, 1fr);
  }
}

@media (min-width: 1280px) {
  .store-cards {
    grid-template-columns: repeat(5, 1fr);
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
            <br><br><br><br><br><br>
                                            <h2 style="font-family: cursive; font-size: 43px;margin-left: 50px;color: whitesmoke">Search by Place</h2>
                                            <br><br>
					<form action="searchaction.jsp"><table>
                                  <tr><td><strong>Search </strong></td>
                                  <td>                       
         
                               <select name="search" style="width:350px; height: 50px; margin-left: 2px; alignment-adjust: central;">
            <%
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/shop","root","");
                            PreparedStatement select=con.prepareStatement("SELECT DISTINCT(place) FROM dataset");
                            ResultSet ret=select.executeQuery();
                            while(ret.next())
                            {
                                %>
                                    <option><%=ret.getString("place")%></option>
                                <%
                            }
                            %>
                               </select>&nbsp;&nbsp;&nbsp;<button type="submit" style="width: 60px; height: 50px;" >Search</button></td></tr>
                              </table>
                              </form>
                               <div class="search-image">
            <img src="img/trolleyPic.png" alt="Search Visual" style="width: 400px; height: auto; border-radius: 15px;margin-bottom: 40px ">
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