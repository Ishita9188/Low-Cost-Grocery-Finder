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
            @media (min-width: 769px) {
  .main-menu {
    display: none !important;
  }
  .header-right {
    display: block;
  }
}

/* Mobile view (width <= 768px): Hide header-right, show main-menu when toggled */
@media (max-width: 768px) {
  .header-right {
    display: none;
  }
  .main-menu {
    display: none;
    background-color: #333; /* optional styling */
    padding: 10px;
  }
  .main-menu a {
    display: block;
    color: white;
    margin: 5px 0;
  }
}
/* Logo responsiveness */
.header-section img[alt="Logo"] {
  height: 50px;
  width: auto;
  margin-top: -5px;
  transition: height 0.3s ease;
}

/* Site title base style */
.site-title h1 {
  font-family: 'Raleway', sans-serif;
  font-weight: 600;
  font-size: 40px;
  color: whitesmoke;
  text-align: center;
  margin-top: 20px;
  transition: font-size 0.3s ease;
}

/* Medium devices (tablets) */
@media (max-width: 768px) {
  .header-section img[alt="Logo"] {
    height: 40px;
  }
  .site-title h1 {
    font-size: 28px;
    margin-top: 15px;
  }
}

/* Small devices (phones) */
@media (max-width: 480px) {
  .header-section img[alt="Logo"] {
    height: 30px;
  }
  .site-title h1 {
    font-size: 20px;
    margin-top: 10px;
  }
}
/* Base background image settings */
.hero-section {
  background-position: center;
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
    min-height: 100vh;  /* Full height of viewport */

}

/* Responsive styles for tablets and below */
@media (max-width: 768px) {
  .hero-section h1 {
    font-size: 32px;
    margin-top: 20px;
    text-align: center;
    padding: 0 10px;
  }

  /* Center the login form */
  .hero-section table[bgcolor="white"] {
    width: 90% !important;
    margin: 50px auto 0 auto;
    box-shadow: 0px 0px 10px rgba(0,0,0,0.2);
  }

  /* Adjust form content font size */
  .hero-section table[bgcolor="white"] td {
    padding: 10px;
    font-size: 14px;
  }

  /* Full-width input fields */
  .hero-section input[type="text"],
  .hero-section input[type="password"] {
    width: 100%;
    padding: 8px;
    box-sizing: border-box;
  }

  /* Submit button full width */
  .hero-section button[type="submit"] {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    background-color: #000;
    color: white;
    border: none;
    cursor: pointer;
  }

  .hero-section a {
    display: inline-block;
    margin-top: 10px;
    font-size: 14px;
  }

  /* Fix for black header row inside form */
  .hero-section table[bgcolor="white"] tr:first-child td {
    font-size: 22px;
    padding: 15px;
    text-align: center;
  }
}

/* Even smaller screens (phones) */
@media (max-width: 480px) {
  .hero-section h1 {
    font-size: 24px;
    margin-top: 15px;
  }

  .hero-section table[bgcolor="white"] td {
    font-size: 13px;
    padding: 8px;
  }

  .hero-section button[type="submit"] {
    font-size: 14px;
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
		<div class="container-fluid">
			<!-- logo -->
			<div class="site-logo">
			</div>
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
			<div class="header-right">
                            <a href="aLogin.jsp" class="card-bag" style="font-family: cursive; color:white;margin-right: 20px"><img src="img/icons/bag.png" alt="" >Admin Login</a>
				<a href="Login.jsp" class="card-bag" style="font-family: cursive; color:white;margin-right: 20px"><img src="img/icons/bag.png" alt="" >Login</a>
			</div>
			<!-- Mobile navigation (toggle with nav-switch) -->
    <nav class="main-menu" style="display: none;">
      <a href="aLogin.jsp" class="card-bag" style="font-family: cursive; color:white; display: block; margin: 10px 0;">
        <img src="img/icons/bag.png" alt=""> Admin Login
      </a>
      <a href="Login.jsp" class="card-bag" style="font-family: cursive; color:white; display: block; margin: 10px 0;">
        <img src="img/icons/bag.png" alt=""> Login
      </a>
    </nav>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Hero section -->
	<section class="hero-section set-bg" data-setbg="img/bg1.jpg" style="background-repeat: no-repeat;background-attachment: fixed;background-size:100% 100%;">
        <form action="aLogin_Action">
             <h1 style="font-family:'Raleway', sans-serif; font-size:50px;color:whitesmoke;text-align: center;margin-top: 10px; ">Low Cost Grocery Finder</h1>
             <br><br>
             <table border="0" width="100%">
            <tr>
                <td width="40%"></td>
                <td width="60%">
                    <table border="0" cellspacing="10" cellpadding="15" bgcolor="white" width="40%" style="margin-top:100px;">
                        <tr><td colspan="2" style="text-align:center;color:white;padding:20px;font-size: 30px;background-color: black">Admin Login</td></tr>
                        <tr height="30px"></tr>
          <tr><td><strong>Username: </strong></td><td><input type="text" name="user" style="border-radius: 2px;" required></td></tr>
          <tr><td><strong>Password: </strong></td><td><input type="password" name="pass"  required></td></tr>
          <tr><td align="center" colspan="2"><button type="submit">LOGIN</button></td></tr>
          
          
                    </table>
                </td>
            </tr>
            
        </table></form>
				
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