<!DOCTYPE html>
<%@page import="com.library.bean.Login"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Book Library - Admin | Add Book</title>
<!-- CUSTOM STYLE -->
<link href="style.css" rel="stylesheet">
<!-- THEME TYPO -->
<link href="css/themetypo.css" rel="stylesheet">
<!-- BOOTSTRAP -->
<link href="css/bootstrap.css" rel="stylesheet">
<!-- COLOR FILE -->
<link rel="icon" type="image/png" href="images/icons/allpagelogo.ico"/>
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

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>

	<div id="loader-wrapper">
		<div id="loader"></div>

		<div class="loader-section section-left"></div>
		<div class="loader-section section-right"></div>

	</div>
	<%
	HttpSession httpSession = request.getSession(false);
	Login login = (Login) httpSession.getAttribute("adminBean");
	%>
	<!--WRAPPER START-->
	<div class="wrapper kode-header-class-3">
		<!--HEADER START-->
		<%@ include file="AdminHeader.jsp"%>
		<%
		if (login == null) {
		%>
		<%
		response.sendRedirect("login.jsp");
		%>
		<%
		} else {
		%>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="kode-content">

		<section>
			<div class="container">
				<div class="section-heading-1">
					<h2>Upload Book</h2>
					<div class="kode-icon">
						<i class="fa fa-book"></i>
					</div>
				</div>
				<form action="AddBook" method="post" enctype="multipart/form-data">
					<div class="form-row">
						<div class="form-group col-md-6">
							 <label for="bookname">Book Name</label>
							<input type="text" class="form-control" autofocus id="bookname"
								name="bookname" placeholder="Book Name">
						</div>
						<div class="form-group col-md-6">
							 <label for="authorname">Author Name</label>
							<input type="text" class="form-control" id="authorname"
								name="authorname" placeholder="Author Name">
						</div>
						<div class="form-group col-md-6">
							<label for="bookimg">Upload Book image</label><input type="file"
								class="form-control" id="bookimg" name="bookimg">
						</div>
						<div class="form-group col-md-6">
							<label for="dates">PubLish Date</label>
							<input type="date" class="form-control" id="publishdate"
								name="publishdate" placeholder="Date">
						</div>
						<div class="form-group col-md-12" style="text-align: center;">
							<label for="bookdesc" >Book Description</label>
							<textarea class="form-control" id="bookdesc" name="bookdesc"
								placeholder="Book Description"></textarea>
						</div>
						<div class="form-group col-md-6">
							<label for="bookimg">Upload Book</label><input type="file"
								class="form-control" id="bookpdf" name="bookpdf">
						</div>
						
						<div class="form-group col-md-4">
					<td class="qty">
					<div class="quantity">
					<label for="stocks" style="padding-right: 30px;">Book Stock</label>
						<span class="qty-minus"
							onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i
							class="fa fa-minus" aria-hidden="true" style="padding-top: 40px; "></i></span> <input type="text"
							class="qty-text " id="qty" step="1" min="1" max="99" style="width:80px; height: 40px;" 
							name="stock" value="7" readonly="readonly"> <span class="qty-plus"
							onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &lt; 7 ) effect.value++; return false;"><i
							class="fa fa-plus" aria-hidden="true"></i></span>
					</div>
				</td>
				</div>

					</div>

					<div class="section-heading-1">
						<br>
						<hr>
						<br>
						<button type="submit" class="btn btn-primary">Add Book</button>
					</div>

				</form>
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
							<li><a href="contact-us.jsp">Contact us</a></li>
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
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
										sed do eiusmod tempor.</p>
								</div></li>
							<li><i class="fa fa-phone"></i>
								<div class="kode-text">
									<h4>phone Number</h4>
									<p>
										<a href="tel:+55(62) 55258-4570">+55(62) 55258-4570</a>
									</p>
									<p>
										<a href="tel:+55(62) 55258-4570">+55(62) 55258-4570</a>
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