<%@page import="com.library.bean.Login"%>
<%@page import="com.library.bean.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Book Library - Books</title>
<!-- CUSTOM STYLE -->
<link href="style.css" rel="stylesheet">
<!-- THEME TYPO -->
<link href="css/themetypo.css" rel="stylesheet">
<!-- BOOTSTRAP -->
<link href="css/bootstrap.css" rel="stylesheet">
<!-- COLOR FILE -->
<link href="css/color.css" rel="stylesheet">
<!-- FONT AWESOME -->
<link rel="icon" type="image/png" href="images/icons/allpagelogo.ico" />
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- BX SLIDER -->
<link href="css/jquery.bxslider.css" rel="stylesheet">

<link href="css/bootstrap-slider.css" rel="stylesheet">

<link href="css/widget.css" rel="stylesheet">

<link href="css/shortcode.css" rel="stylesheet">
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
	<div class="wrapper kode-header-class-3">
		<!--HEADER START-->
		<%@ include file="Header.jsp"%>
		<!--HEADER END-->
		<!--BANNER START-->
		<div class="kode-inner-banner">
			<div class="kode-page-heading">
				<h2>Photo Gallery</h2>
				<ol class="breadcrumb">
					<li><a href="index.jsp">Home</a></li>
					<li><a href="#">Library</a></li>

				</ol>
			</div>
		</div>
		<!--BANNER END-->
		<div class="search-section">
			<div class="container">
				<div class="tab-content">
					<div class="form-container">
						<div class="row">
							<form action="BookSearch" method="post">
								<div class="col-md-3 col-sm-4">
									<input style="text-align: center;" type="text" name="bookname"
										placeholder="Book Name">
								</div>
								<div class="col-md-3 col-sm-12">
									<button type="submit">Search Book</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%
	Book book = (Book) request.getAttribute("booksearch");
	%>
	<%
	if (book != null) {
	%>
	<section>
		<div class="col-md-2 col-sm-4">
			<div class="best-seller-pro">
				<figure>
					<img src="data:image/jpg;base64,<%=book.getImgstring()%>" alt="">
				</figure>
				<div class="kode-text">
					<h3><%=book.getBook_name()%></h3>
				</div>
				<div class="kode-caption">
					<h3><%=book.getBook_name()%></h3>
					<div class="rating">
						<span> </span><span> </span><span> </span><span> </span><span>
						</span>
					</div>
					<p><%=book.getBook_author()%></p>
					<a href="BookDetail?bookid=<%=book.getBook_id()%>"
						class="add-to-cart" style="pointer-events: none">Lend</a>

				</div>
			</div>
		</div>

	</section>
	<%
	} else {
	%>
	<!--CONTENT START-->
	<div class="kode-content padding-tb-50">
		<!--TOP AUTHERS START-->
		<div class="container">
			<div class="kode-product-filter"></div>
			<div class="row">
				<!--PRODUCT GRID START-->
				<%
				List<Book> bookList = (List) request.getAttribute("books");
				%>
				<%
				for (Book b : bookList) {
				%>
				<div class="col-md-3 col-sm-6">
					<div class="best-seller-pro">
						<figure>
							<img src="data:image/jpg;base64,<%=b.getImgstring()%>"
								width="150px" height="250px" alt="">
						</figure>
						<div class="kode-text">
							<h3><%=b.getBook_name()%></h3>
						</div>
						<div class="kode-caption">
							<h3><%=b.getBook_name()%></h3>
							<p><%=b.getBook_author()%></p>
							<a href="BookDetail?bookid=<%=b.getBook_id()%>"
								class="add-to-cart">Lend</a>
						</div>
					</div>
				</div>
				<%
				}
				%>
			</div>

			<!--PAGINATION START-->
			<nav>
				<ul class="pagination">
					<li><a href="#" aria-label="Previous"> <span
							aria-hidden="true">&laquo;</span>
					</a></li>
					<li><a href="BooksShow?page=1">1</a></li>
					<li><a href="BooksShow?page=2">2</a></li>
					<li><a href="BooksShow?page=3">3</a></li>
					<li><a href="BooksShow?page=4">4</a></li>
					<li><a href="BooksShow?page=5">5</a></li>
					<li><a href="#" aria-label="Next"> <span
							aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>
			<!--PAGINATION END-->
		</div>
		<!--TOP AUTHERS END-->
	</div>
	<%
	}
	%>
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
	<script src="js/functions.js"></script>
	<%
	}
	%>
</body>
</html>