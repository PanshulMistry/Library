<!DOCTYPE html>
<%@page import="com.library.bean.Login"%>
<%@page import="com.library.bean.Book"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Book Library - Book - Detail</title>
<!-- CUSTOM STYLE -->
<link href="style.css" rel="stylesheet">
<!-- THEME TYPO -->
<link href="css/themetypo.css" rel="stylesheet">
<!-- BOOTSTRAP -->
<link href="css/bootstrap.css" rel="stylesheet">
<!-- COLOR FILE -->
<link href="css/color.css" rel="stylesheet">
<link rel="icon" type="image/png" href="images/icons/allpagelogo.ico" />
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
	<%
	HttpSession httpSession = request.getSession(false);
	Login login = (Login) httpSession.getAttribute("loginBean");
	%>

	<%
	if (login == null) {
	%>
	<%
	response.sendRedirect("login.jsp");
	%>
	<%
	} else {
	%>
	<%
	Book book = (Book) request.getAttribute("bookdetails");
	%>
	<div class="wrapper kode-header-class-3">
		<%@ include file="Header.jsp"%>
		<!--HEADER END-->
		<!--BANNER START-->
		<div class="kode-inner-banner">
			<div class="kode-page-heading">
				<h2>Product Detail</h2>
				<ol class="breadcrumb">
					<li><a href="index.jsp">Home</a></li>
					<li class="active">Book Detail</li>
				</ol>
			</div>
		</div>

		<!--CONTENT START-->
		<div class="kode-content padding-tb-50">
			<div class="container">
				<div class="row">
					<div class="col-md-9">

						<div class="lib-book-detail">
							<div class="row">
								<div class="col-md-5">
									<div class="kode-thumb">
										<img src="data:image/jpg;base64,<%=book.getImgstring()%>"
											alt="">
									</div>
								</div>
								<div class="col-md-7" style="font-size: 50px">
									<div class="kode-text">
										<h2><%=book.getBook_name()%></h2>
										</br>
										<div class="book-text">
											<p class="row-md-10" style="font-size: 20px">
												Author:
												<%=book.getBook_author()%></p>
											</br>
											<p class="row-md-10" style="font-size: 20px">
												Publisher:
												<%=book.getPublish_date()%></p>
										</div>
										<%
										if (book.getBook_stock() > 0) {
										%>
										<a href="LendBook?page=1&book=<%=book.getBook_id()%>"
											class="add-to-cart">Lend</a>
										<%
										} else {
										%>
										<p class="row-md-10" style="font-size: 20px; color: red">Unavailable</p>
										<%
										}
										%>
									</div>
								</div>
							</div>
						</div>
						<!--BOOK DETAIL END-->
						<!--PRODUCT REVIEW TABS START-->
						<div class="product-review-tabs">
							<!--NAV TABS START-->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a
									href="#Description " aria-controls="Description" role="tab"
									data-toggle="tab">Description </a></li>

							</ul>
							<!--NAV TABS END-->
							<!--TAB PANEL START-->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active">
									<p><%=book.getBook_description()%></p>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="reviews">
									<div class="kode-comments">
										<ul>
											<li>
												<div class="kode-thumb">
													<a href="#"><img alt="" src="images/author14.png"></a>
												</div>
												<div class="kode-text">
													<h4>Saul Bellow</h4>
													<p class="designation">JUNE 20, 2015</p>
													<p>Lorem ipsum dolor sit amet, consetetur sadipscing
														elitr, sed diam nonumy eirmod tempor invidunt ut labore et
														dolore magna aliquyam erat, sed diam voluptua. At vero eos
														et accusam et justo duo dolores et ea rebum. Stet clita
														kasd gubergren, no sea takimata sanctus est Lorem ipsum
														dolor sit amet.</p>
													<a class="reply" href="#">Reply</a>
												</div>
											</li>
											<li>
												<div class="kode-thumb">
													<a href="#"><img alt="" src="images/author14.png"></a>
												</div>
												<div class="kode-text">
													<h4>Saul Bellow</h4>
													<p class="designation">JUNE 20, 2015</p>
													<p>Lorem ipsum dolor sit amet, consetetur sadipscing
														elitr, sed diam nonumy eirmod tempor invidunt ut labore et
														dolore magna aliquyam erat, sed diam voluptua. At vero eos
														et accusam et justo duo dolores et ea rebum. Stet clita
														kasd gubergren, no sea takimata sanctus est Lorem ipsum
														dolor sit amet.</p>
													<a class="reply" href="#">Reply</a>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<!--TAB PANEL END-->
						</div>
					</div>
				</div>
			</div>
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
	<script src="js/jquery.bxslider.min.js"></script>
	<script src="js/bootstrap-slider.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/dl-menu/modernizr.custom.js"></script>
	<script src="js/dl-menu/jquery.dlmenu.js"></script>
	<script src="js/functions.js"></script>
	<%
	}
	%>
</body>
</html>