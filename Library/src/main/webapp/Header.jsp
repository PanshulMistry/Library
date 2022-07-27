<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<header class="header-3">
	<div class="container">
		<div class="logo-container">
			<div class="row">
				<div class="col-md-3">
					<!--LOGO START-->
					<div class="logo">
						<a href="#"><img src="images/logo-2.png" alt=""></a>
					</div>
					<!--LOGO END-->
				</div>
				<div class="col-md-9">
					<div class="top-strip">
						<div class="pull-left">
							<p>Welcome To Library</p>
						</div>
						<div class="social-icon">
							<a href="mailto:librarymailing@gmail.com" class="pull-left">librarymailing@gmail.com</a>
						</div>
					</div>

					<div class="kode-navigation">
						<ul>
							<li><a href="index.jsp">Home</a></li>

							<li><a href="about-us.jsp">About Us</a></li>
							<li><a href="BooksShow?page=1">Our Books</a></li>
							<li class="last"><a href="contact-us.jsp">Contact Us</a></li>
							<li class="last"><a href="LendBook?page=2">Inventory</a></li>
							<li class="last"><a href="LogoutUser">Logout</a></li>
						</ul>
					</div>

					<div id="kode-responsive-navigation" class="dl-menuwrapper">
						<button class="dl-trigger">Open Menu</button>
						<ul class="dl-menu">
							<li><a href="index.jsp">Home</a></li>

							<li><a href="about-us.jsp">About Us</a></li>
							<li><a href="BooksShow">Our Books</a></li>
							<li class="last"><a href="contact-us.jsp">Contact Us</a></li>
							<li class="last"><a href="LendBook?page=2">Inventory</a></li>
							<li class="last"><a href="LogoutUser">Logout</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>