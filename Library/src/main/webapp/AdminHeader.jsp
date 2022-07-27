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
							<li><a href="AdminHome.jsp">Home</a></li>

							<li><a href="#">Books</a>
								<ul>
									<li><a href="AdminAddBook.jsp">Add Book</a></li>
									<li><a href="AdminManageBooks">Manage Books</a></li>
								</ul></li>
							<li><a href="AdminLendDetails">Lended Books</a></li>
							<li><a href="AdminReturnDetails">Returned Books</a></li>
							<li class="last"><a href="LogoutUser">Logout</a></li>
						</ul>
					</div>

					<div id="kode-responsive-navigation" class="dl-menuwrapper">
						<button class="dl-trigger">Open Menu</button>
						<ul class="dl-menu">
							<li><a href="AdminHome.jsp">Home</a></li>

							<li><a href="about-us.jsp">About Us</a></li>
							<li><a href="AdminManageBooks">Books</a> <!-- 									<ul> -->
								<!-- 										<li><a href="books-detail.html">Book</a></li>                                 -->
								<!-- 									</ul> --></li>
							<li class="last"><a href="LogoutUser">Logout</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>