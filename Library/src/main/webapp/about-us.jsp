<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Book Library - About Us</title>
<!-- CUSTOM STYLE -->
<link href="style.css" rel="stylesheet">
<!-- THEME TYPO -->
<link href="css/themetypo.css" rel="stylesheet">
<!-- SHORTCODES -->
<link href="css/shortcode.css" rel="stylesheet">
<!-- BOOTSTRAP -->
<link rel="icon" type="image/png" href="images/icons/allpagelogo.ico" />
<link href="css/bootstrap.css" rel="stylesheet">
<!-- COLOR FILE -->
<link href="css/color.css" rel="stylesheet">
<!-- FONT AWESOME -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- BX SLIDER -->
<link href="css/jquery.bxslider.css" rel="stylesheet">
<!-- Boostrap Slider -->
<link href="css/bootstrap-slider.css" rel="stylesheet">
<!-- Widgets -->
<link href="css/widget.css" rel="stylesheet">
<!-- Owl Carusel -->
<link href="css/owl.carousel.css" rel="stylesheet">
<!-- responsive -->
<link href="css/responsive.css" rel="stylesheet">
<!-- Component -->
<link href="js/dl-menu/component.css" rel="stylesheet">

</head>
<body>
	<div id="loader-wrapper">
		<div id="loader"></div>

		<div class="loader-section section-left"></div>
		<div class="loader-section section-right"></div>

	</div>
	<!--WRAPPER START-->
	<div class="wrapper kode-header-class-3">
		<!--HEADER START-->
		<%@ include file="Header.jsp"%>

		<div class="kode-inner-banner">
			<div class="kode-page-heading">
				<h2>About us</h2>
				<ol class="breadcrumb">
					<li><a href="index.jsp">Home</a></li>
					<li class="active">About Us</li>
				</ol>
			</div>
		</div>

	</div>
	<!--FACTS SECTION END-->
	<div>
		<section class="about_section layout_padding">
			<div class="container ">
				<div class="row">
					<div class="col-md-12">
						<div class="img-box">
							<img src="images/about-img.png" alt="">
						</div>
					</div>
					<div class="col-md-12">
						<div class="detail-box">
							<div class="heading_container">
								<h2 style="text-align: center;">About Our Library</h2>
							</div>
							<p>Library management system is a project which aims in
								developing a computerized system to maintain all the daily work
								of library .This project has many features which are generally
								not available in normal library management systems like facility
								of user login and a facility of admin login .The admin can
								monitor the whole system .It also has facility of an online
								notice board where teachers can student can put up information
								about workshops or seminars being held in our colleges or nearby
								colleges and librarian after proper verification from the
								concerned institution organizing the seminar can add it to the
								notice board . It has also a facility where student after
								logging in their accounts can see list of books issued and its
								issue date and return date.Overall this project of ours is being
								developed to help the students as well as staff of library to
								maintain the library in the best way possible and also reduce
								the human efforts.</p>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!--CONTENT END-->
	<footer class="footer-3">
		<div class="container">
			<div class="row">
				<!--CATEGORY WIDGET START-->
				<div class="col-md-3 col-sm-6">
					<div class="widget widget-categories">
						<h2>Information</h2>
						<ul>
							<li><a href="index.jsp">Home Page</a></li>
							<li><a href="BooksShow">Books</a></li>
							<li><a href="about-us.jsp">About us</a></li>
							<!-- <li><a href="#">Terms of use</a></li>  -->
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="widget widget-contact-info">
						<h2>get in touch</h2>
						<ul>
							<li><i class="fa fa-paper-plane"></i>
								<div class="kode-text">
									<h4>Address</h4>
									<p>A-1/301 Anmol Towers,Opposite Telephone
										Exchange,Naranpura,Ahmedabad 380063</p>
								</div></li>
							<li><i class="fa fa-phone"></i>
								<div class="kode-text">
									<h4>phone Number</h4>
									<p>
										<a href="tel:+919662748241">+919662748241</a>
									</p>
								</div></li>
							<li><i class="fa fa-envelope-o"></i>
								<div class="kode-text">
									<h4>Email Address</h4>
									<a href="mailto:librarymailing@gmail.com">librarymailing@gmail.com</a>
								</div></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<img src="images/gallery2.png" height="300px" width="400px" alt="">
				</div>
				<!--NEWSLETTER START END-->
			</div>
		</div>
	</footer>

	<footer class="footer-2">
		<div class="container">
			<div class="lib-copyrights">
				<p>Copyright &copy; 2022 Library. All rights reserved</p>
				<div class="social-icon">
					<a style="color: white" href="mailto:librarymailing@gmail.com"
						class="pull-left">librarymailing@gmail.com</a>
				</div>
			</div>
			<div class="back-to-top">
				<a href="#home"><i class="fa fa-angle-up"></i></a>
			</div>
		</div>
	</footer>
	</div>
	<!--WRAPPER END-->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/dl-menu/modernizr.custom.js"></script>
	<script src="js/dl-menu/jquery.dlmenu.js"></script>
	<script src="js/jquery.bxslider.min.js"></script>
	<script src="js/bootstrap-slider.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/functions.js"></script>
</body>
</html>