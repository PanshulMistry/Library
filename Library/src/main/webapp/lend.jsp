<%@page import="com.library.bean.Login"%>
<%@page import="com.library.bean.Book"%>
<%@page import="com.library.bean.Lend"%>
<%@page import="java.util.List"%>
<%@page import="com.library.service.impl.LibraryServiceImpl"%>
<%@page import="com.library.service.LibraryService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Book Library - Lend Books</title>
<!-- CUSTOM STYLE -->
<link rel="icon" type="image/png" href="images/icons/allpagelogo.ico" />
<link href="style.css" rel="stylesheet">
<!-- THEME TYPO -->
<link href="css/themetypo.css" rel="stylesheet">
<!-- BOOTSTRAP -->
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
<link rel="stylesheet" type="text/css" href="css/bookblock.css" />

</head>
<style>
table, th, td {
	border: 3px double black;
	text-align: center;
}

#returnid {
	font-size: 15px;
	padding: 2px 15px;
	text-align: center;
	display: block;
	margin: 0 auto;
	border-radius: 10px;
}
</style>
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
	</div>
	<div class="kode-inner-banner">
		<div class="kode-page-heading">
			<h2>Lend Records</h2>
			<ol class="breadcrumb">
				<li><a href="index.jsp">Home</a></li>
				<li class="active">Lend</li>
			</ol>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<%LibraryService ls = new LibraryServiceImpl();%>
	<div class="kode-content">

		<section>
			<div class="container">
				<table>
					<thead>
						<th>Sr No</th>
						<th>Book Name</th>
						<th>Lend Date</th>
						<th>Book</th>
					</thead>
					<%
					List<Lend> lendList = (List) request.getAttribute("lendbooks");
					%>

					<tbody>

						<%
						if (lendList != null) {
						%>
						<%
						int c = 0;
						%>
						<%
						for (Lend l : lendList) {
						%>
						<%
						Book book = ls.getBookDetails(l.getBook_id());
						%>
						<tr>
							<td>
								<%c++;%> <%=c%>
							</td>
							<td><%=book.getBook_name()%></td>
							<td><%=l.getLend_date()%></td>
							<td style="align-items: center;"><a
								href="GetPdfBook?bookid=<%=l.getBook_id()%>"><i
									class="fa fa-book fa-2x" aria-hidden="true"></i></a></td>
						</tr>
						<%
						}
						%>
						<%
						}
						%>
					</tbody>
				</table>
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
	<script src="js/modernizr.custom.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.bxslider.min.js"></script>
	<script src="js/bootstrap-slider.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/dl-menu/jquery.dlmenu.js"></script>
	<script type="text/javascript" src="lib/hash.js"></script>
	<script type="text/javascript" src="lib/booklet-lib.js"></script>
	<script src="js/jquerypp.custom.js"></script>
	<script src="js/jquery.bookblock.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
	<script src="js/functions.js"></script>
	<%
	}
	%>
</body>
</html>