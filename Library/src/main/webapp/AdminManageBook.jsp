<!DOCTYPE html>
<%@page import="com.library.bean.Login"%>
<%@page import="com.library.bean.Book"%>
<%@page import="java.util.List"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Book Library - Admin | Manage Books</title>
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
	<%
	HttpSession httpSession = request.getSession(false);
	Login login = (Login) httpSession.getAttribute("adminBean");
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
	<!--WRAPPER START-->
	<div class="wrapper kode-header-class-3">
		<!--HEADER START-->
		<%@ include file="AdminHeader.jsp"%>

	</div>
	<div class="kode-inner-banner">
		<div class="kode-page-heading">
			<h2>Manage Books</h2>
			<ol class="breadcrumb">
				<li><a href="AdmminHomePage.jsp">Home</a></li>
				<li class="active">Manage Books</li>
			</ol>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<%
	List<Book> bookList = (List) request.getAttribute("books");
	%>
	<div class="kode-content">

		<section>
			<div class="container">
				<table>
					<thead>
						<th>Sr No</th>
						<th>Book Name</th>
						<th>Book Author</th>
						<th>Publish Date</th>
						<th>Book Image</th>
						<th>Book Description</th>
						<th>Update Book</th>
						<th>Delete Book</th>
					</thead>
					<tbody>
						<%
						if (bookList != null) {
						%>
						<%
						int c = 0;
						%>
						<%
						for (Book b : bookList) {
						%>
						<tr>
							<td>
								<%
								c++;
								%> <%=c%>
							</td>
							<td><%=b.getBook_name()%></td>
							<td><%=b.getBook_author()%></td>
							<td><%=b.getPublish_date()%></td>
							<td><img src="data:image/jpg;base64,<%=b.getImgstring()%>"
								alt="" width="100" height="150"></td>
							<td><%=b.getBook_description()%></td>
							<td style="align-items: center;">
								<!--                                 <form action="/return" method="post"> -->
								<!--                                     <input type="hidden" name="" value="bookid"> -->
								<a href="AdminEditBook?page=1&bookid=<%=b.getBook_id()%>"><i
									class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i></a> <!--                                 </form> -->
							</td>
							<%--                              onclick="document.getElementById('<%=b.getBook_id()%>').style.display='block'" --%>
							<td style="align-items: center;">
							<%String var = "#"+b.getBook_id();%>
							<a href="#" data-toggle="modal" data-target="<%=var%>">
							<i class="fa fa-trash fa-2x" style="color: red" aria-hidden="true"></i></a>
<!-- 							<button onclick="document.getElementById('').style.display='block'"
								class="btn btn-danger">
								<i class="fas fa-trash-alt"></i>
								</button>
								<!-- Button trigger modal --> <!-- 							<button type="button" class="btn btn-primary" data-toggle="modal" -->
								<!-- 								data-target="#exampleModal">Launch demo modal</button> -->

								<!-- Modal -->
								<div class="modal fade" id="<%=b.getBook_id()%>" tabindex="-1"
									role="dialog" aria-labelledby="<%=b.getBook_id() %>"
									aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="<%=b.getBook_id()%>">Delete
													Book</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												Are you sure you want to Delete
												<%=b.getBook_name()%>book?
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">Close</button>
												<a href="DeleteBook?bookid=<%=b.getBook_id()%>"><button type="button" class="btn btn-primary" style="color:white;background-color: red">Delete
											   </button></a>
<!-- 												<a -->
<!-- 													style="position: absolute; left: 50%; color: black; border: 1px solid black; background-color: lightgray; padding-top: 3px; padding-bottom: 3px; padding-right: 5px; padding-left: 5px;" -->
<!-- 													href="#" class="btn btn-secondary" data-dismiss="modal"> -->
<!-- 													Cancel</a>  -->
<!-- 												<a -->
<!-- 													style="position: absolute; left: 33%; color: black; border: 1px solid black; background-color: lightgray; padding-top: 3px; padding-bottom: 3px; padding-right: 5px; padding-left: 5px;" -->
<!-- 													href="#" -->
<!-- 													class="btn btn-primary"> Delete</a> -->

											</div>
										</div>
									</div>
								</div>
<!-- 										<div id="#edit" class="modal" -->
<!-- 											style="position: fixed;; top: 47%; height: 150px; width: 400px; left: 37%; border: 2px solid black; background: white;"> -->
<!-- 											<form class="modal-content"> -->
<!-- 												<div class="container" -->
<!-- 													style="background-color: activeborder; color: black; border-radius: 20px;"> -->
<!-- 													<h1> -->
<!-- 														Delete -->
<!-- 														<button type="button" class="close" data-dismiss="modal" -->
<!-- 															aria-label="Close"> -->
<!-- 															<a href="#" class="cancelbtn" -->
<!-- 																style="color: black;"> <span aria-hidden="true">&times;</span> -->
<!-- 															</a> -->
<!-- 														</button> -->
<!-- 													</h1> -->

<!-- 													<p> -->
<!-- 														Are you sure you want to delete -->
<!-- 														? -->
<!-- 													</p> -->

<!-- 													<div class="clearfix" style="position: relative;"> -->
<!-- 														<a -->
<!-- 															style="position: absolute; left: 50%; color: black; border: 1px solid black; background-color: lightgray; padding-top: 3px; padding-bottom: 3px; padding-right: 5px; padding-left: 5px;" -->
<!-- 															href="#" class="cancelbtn"> -->
<!-- 															Cancel</a> <a -->
<!-- 															style="position: absolute; left: 33%; color: black; border: 1px solid black; background-color: lightgray; padding-top: 3px; padding-bottom: 3px; padding-right: 5px; padding-left: 5px;" -->
<!-- 															href="#" -->
<!-- 															class="deletebtn"> Delete</a> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 											</form> -->
<!-- 										</div> -->
								
								</td>
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
							<li><a href="homepage.html">Home Page</a></li>
							<li><a href="books-detail.html">Books</a></li>
							<li><a href="contact-us.html">Contact us</a></li>
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
					<img src="/images/lendrecords.png" height="300px" width="400px"
						alt="">
				</div>
				<!--NEWSLETTER START END-->
			</div>
		</div>
	</footer>

	<footer class="footer-2">
		<div class="container">
			<div class="lib-copyrights">
				<p>Copyrights © 2022 Library. All rights reserved</p>
				<div class="social-icon">
					<a href="mailto:librarymailing@gmail.com" class="pull-left">librarymailing@gmail.com</a>
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