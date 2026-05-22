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
  html, body {
    height: 100%;
    overflow-y: auto;
  }

  .hero-section {
    min-height: 100vh;
    overflow-y: auto;
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
			<div class="site-logo"></div>
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
			<div class="header-right">
				<a href="aLogin.jsp" class="card-bag" style="font-family: cursive; color:white;margin-right: 20px">
					<img src="img/icons/bag.png" alt="">Admin Login
				</a>
				<a href="Login.jsp" class="card-bag" style="font-family: cursive; color:white;margin-right: 20px">
					<img src="img/icons/bag.png" alt="">Login
				</a>
				
			</div>
		</div>
	</header>
	<!-- Header section end -->

	<!-- Hero section -->
	<section class="hero-section set-bg" data-setbg="img/bg1.jpg">
            
                
            <form action="Register_Action" method="post" enctype="multipart/form-data" onsubmit="return validateForm()" style="margin-bottom:40px" align="center">
			<h1 style="font-family:'Raleway', sans-serif; font-size:50px;color:whitesmoke;text-align: center; margin-top: 10px;">Low Cost Grocery Finder</h1>
			<br><br>
			<table border="0" width="100%" align="center">
				<tr>
					<td width="40%"></td>
					<td width="60%">
						<table border="0" cellspacing="10" cellpadding="15" bgcolor="white" width="40%" style="margin-top:20px;">
							<tr>
								<td colspan="2" style="text-align:center;color:white;padding:20px;font-size:30px;background-color:black">
									User Registration
								</td>
							</tr>
							<tr height="30px"></tr>
							<tr><td><strong>Customer name: </strong></td><td><input type="text" id="user" name="user" style="border-radius: 8px;" required></td></tr>
							<tr><td><strong>Password: </strong></td><td><input type="password" id="password" name="password" style="border-radius: 8px;" required></td></tr>
							<tr><td><strong>Mail ID: </strong></td><td><input type="email" id="email" name="email" style="border-radius: 8px;" required></td></tr>
							<tr><td><strong>DOB: </strong></td><td><input type="text" id="dob" name="dob" placeholder="DD/MM/YYYY" style="border-radius: 8px;" required></td></tr>
							<tr><td><strong>Gender: </strong></td><td><input type="text" id="gen" name="gen" style="border-radius: 8px;" required></td></tr>
							<tr><td><strong>Profile: </strong></td><td><input type="file" id="profile" name="profile" style="border-radius: 8px;padding: 5px; width: 100%;" required></td></tr>
							<tr><td><strong>Contact: </strong></td><td><input type="text" id="contact" name="contact" style="border-radius: 8px;" required></td></tr>
							<tr><td><strong>Address: </strong></td><td><input type="text" id="address" name="address" style="border-radius: 8px;" required></td></tr>
							<tr><td align="center" colspan="2"><button type="submit">Register</button></td></tr>
							<tr><td align="center" colspan="2"><a href="Login.jsp">Click To Back</a></td></tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
                
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

	<!-- Validation Script -->
	<script>
	function validateForm() {
		// Get field values
		var user = document.getElementById("user").value.trim();
		var password = document.getElementById("password").value.trim();
		var email = document.getElementById("email").value.trim();
		var dob = document.getElementById("dob").value.trim();
		var gen = document.getElementById("gen").value.trim();
		var profile = document.getElementById("profile").value;
		var contact = document.getElementById("contact").value.trim();
		var address = document.getElementById("address").value.trim();

		var dobPattern = /^(0[1-9]|[12][0-9]|3[01])\/(0[1-9]|1[0-2])\/\d{4}$/;
                var nameRegex = /^[A-Za-z\s]+$/; 

		if (user === "" || password === "" || email === "" || dob === "" || gen === "" || profile === "" || contact === "" || address === "") {
			return false;
		}

		if (!dobPattern.test(dob)) {
			alert("DOB must be in the format DD/MM/YYYY!");
			return false;
		}
                if (!nameRegex.test(user)) {
			alert('Name must contain only letters and spaces.');
			return false;
		}
		if (!/^\d{10}$/.test(contact)) {
			alert("Contact must be a 10-digit number!");
			return false;
		}
                if (password.length < 6) {
			alert('Password must be at least 6 characters long.');
			return false;
		}
		return true; 
	}
	</script>
</body>
</html>
