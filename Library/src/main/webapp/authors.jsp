<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Book Library - Book Guide Author, Publication and Store</title>
<!-- CUSTOM STYLE -->
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

<link href="css/bootstrap-slider.css" rel="stylesheet">

<link href="css/widget.css" rel="stylesheet">

<link href="css/shortcode.css" rel="stylesheet">
<!-- responsive -->
<link href="css/responsive.css" rel="stylesheet">
<!-- Component -->
<link href="js/dl-menu/component.css" rel="stylesheet">

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
<!--WRAPPER START-->
<div class="wrapper kode-header-class-3">
	<!--HEADER START-->
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
                                <p>Welcome to Library theme</p>
                            </div>
                            <div class="social-icon">
                                <a href="mailto:info@library-theme.com" class="pull-left">info@library-theme.com</a>
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>                      
                                </ul>
                            </div>
                        </div>
                    	<div class="kode-navigation">
							<ul>
								<li><a href="index.jsp">Home</a>
									<ul>
										<li><a href="index.jsp">Home page 1</a></li>
									</ul>
								</li>
								
								<li><a href="about-us.jsp">About Us</a></li>
								<li><a href="books.jsp">Our Books</a>
									<ul>
										<li><a href="books3-sidebar.jsp">Book With Sidebar</a></li>
										<li><a href="books-detail.jsp">Book Detail</a></li>                                
									</ul>
								</li>
								<li><a href="blog.jsp">Blog</a>
									<ul>
										<li><a href="#">Blog 2 Column</a></li>
										<li><a href="#">Blog Full</a></li>
										<li><a href="#">Blog Detail</a></li>
									</ul>
								</li>
								<li><a href="authors.jsp">Authors</a>
									<ul>
										<li><a href="authors.jsp">Authors</a></li>
										<li><a href="author-detail.jsp">Authors Detail</a></li>										
									</ul>
								</li>
								<li class="last"><a href="#">Events</a>
									<ul>
										<li><a href="#">Event 2 Column</a></li>
										<li><a href="#">Event 3 Column</a></li>
										<li><a href="#">Event Single</a></li>
										<li><a href="#">Event Detail</a></li>
									</ul>
								</li>
								
								<li class="last"><a href="#">Pages</a>
									<ul class="children">
										<li><a href="error-404.jsp">Error 404</a></li>
										<li><a href="#">Comming Soon</a></li>
										<li class="last"><a href="gallery-2col.html">Gallery</a>
											<ul>
												<li><a href="gallery-2col.html">Gallery 2 Col</a></li>
												<li><a href="gallery-3col.html">Gallery 3 Col</a></li>
												<li><a href="gallery-4col.html">Gallery 4 Col</a></li>    
											</ul>
										</li>
									</ul>
								</li>
								<li class="last"><a href="contact-us.jsp">Contact Us</a></li>
							</ul>
						</div>
						<div id="kode-responsive-navigation" class="dl-menuwrapper">
							<button class="dl-trigger">Open Menu</button>
							<ul class="dl-menu">
								<li class="menu-item kode-parent-menu"><a href="index.html">Home</a>
									<ul class="dl-submenu">
										<li><a href="index-1.html">Home page 1</a></li>
									</ul>
								</li>
								<li><a href="about-us.html">About Us</a></li>
								<li class="menu-item kode-parent-menu"><a href="books.html">Our Books</a>
									<ul class="dl-submenu">
										<li><a href="books3-sidebar.html">Book With Sidebar</a></li>
										<li><a href="books-detail.html">Book Detail</a></li>                                
									</ul>
								</li>
								<li class="menu-item kode-parent-menu"><a href="blog.html">Blog</a>
									<ul class="dl-submenu">
										<li><a href="blog-2column.html">Blog 2 Column</a></li>
										<li><a href="blog-full.html">Blog Full</a></li>
										<li><a href="blog-detail.html">Blog Detail</a></li>
									</ul>
								</li>
								<li><a href="authors.html">Authors</a></li>
								<li class="menu-item kode-parent-menu last"><a href="#">Events</a>
									<ul class="dl-submenu">
										<li><a href="events-2column.html">Event 2 Column</a></li>
										<li><a href="events-3column.html">Event 3 Column</a></li>
										<li><a href="event-full.html">Event Single</a></li>
										<li><a href="event-detail.html">Event Detail</a></li>
									</ul>
								</li>
								<li class="menu-item kode-parent-menu last"><a href="#">Pages</a>
									<ul class="dl-submenu">
										<li><a href="error-404.html">Error 404</a></li>
										<li><a href="coming-soon.html">Comming Soon</a></li>
										<li class="menu-item kode-parent-menu last"><a href="gallery-2col.html">Gallery</a>
											<ul class="dl-submenu">
												<li><a href="gallery-2col.html">Gallery 2 Col</a></li>
												<li><a href="gallery-3col.html">Gallery 3 Col</a></li>
												<li><a href="gallery-4col.html">Gallery 4 Col</a></li>    
											</ul>
										</li>
									</ul>
								</li>
								<li class="last"><a href="contact-us.html">Contact Us</a></li>
							</ul>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!--HEADER END-->
    <!--BANNER START-->
    <div class="kode-inner-banner">
    	<div class="kode-page-heading">
        	<h2>Photo Gallery</h2>
            <ol class="breadcrumb">
              <li><a href="#">Home</a></li>
              <li><a href="#">Library</a></li>
              <li class="active">Gallery</li>
            </ol>
        </div>
    </div>
    <!--BANNER END-->
    <div class="search-section">
        <div class="container">
			<!-- Nav tabs -->
			  <ul class="nav nav-tabs" role="tablist">
				<li role="presentation"><a href="#Basic" aria-controls="Basic" role="tab" data-toggle="tab">Basic</a></li>
				<li role="presentation" class="active"><a href="#Author" aria-controls="Author" role="tab" data-toggle="tab">Author</a></li>
				<li role="presentation"><a href="#Publications" aria-controls="Publications" role="tab" data-toggle="tab">Publications</a></li>
			  </ul>
			
			  <!-- Tab panes -->
			  <div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="Basic">
					<div class="form-container">
						<div class="row">
							<div class="col-md-3 col-sm-4">
								<input type="text" placeholder="First Name">
							</div>
							<div class="col-md-3 col-sm-4">
								<input type="text" placeholder="Middle Name">
							</div>
							<div class="col-md-3 col-sm-4">
								<input type="text" placeholder="Last Name">
							</div>
							<div class="col-md-3 col-sm-12">
								<button>Search Author</button>
							</div>
						</div>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="Author">
					<div class="form-container">
						<div class="row">
							<div class="col-md-3 col-sm-4">
								<input type="text" placeholder="First Name">
							</div>
							<div class="col-md-3 col-sm-4">
								<input type="text" placeholder="Middle Name">
							</div>
							<div class="col-md-3 col-sm-4">
								<input type="text" placeholder="Last Name">
							</div>
							<div class="col-md-3 col-sm-12">
								<button>Search Author</button>
							</div>
						</div>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="Publications">
					<div class="form-container">
						<div class="row">
							<div class="col-md-3 col-sm-4">
								<input type="text" placeholder="First Name">
							</div>
							<div class="col-md-3 col-sm-4">
								<input type="text" placeholder="Middle Name">
							</div>
							<div class="col-md-3 col-sm-4">
								<input type="text" placeholder="Last Name">
							</div>
							<div class="col-md-3 col-sm-12">
								<button>Search Author</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
    </div>
    <!--CONTENT START-->
    <!--CONTENT START-->
    <div class="kode-content padding-tb-50">
        <!--TOP AUTHERS START-->
        <div class="container">
            <div class="row">
            	<!--AUTHOR LIST START-->
                <div class="col-md-4 col-sm-6 ">
                    <div class="kode-author kode-author-2">
                        <a href="#"><img src="images/author4.png" alt=""></a>
                        <div class="kode-caption">
                            <h4>Chinua Achebe</h4>
                            <p>Authors</p>
                            <div class="social-icon">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!--AUTHOR LIST END-->
                <!--AUTHOR LIST START-->
                <div class="col-md-4 col-sm-6">
                    <div class="kode-author kode-author-2">
                        <a href="#"><img src="images/author5.png" alt=""></a>
                        <div class="kode-caption">
                            <h4>Julian Baggini</h4>
                            <p>Authors</p>
                            <div class="social-icon">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!--AUTHOR LIST END-->
                <!--AUTHOR LIST START-->
                <div class="col-md-4 col-sm-6">
                    <div class="kode-author kode-author-2">
                        <a href="#"><img src="images/author6.png" alt=""></a>
                        <div class="kode-caption">
                            <h4>Quentin Blake</h4>
                            <p>Authors</p>
                            <div class="social-icon">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!--AUTHOR LIST END-->
                <!--AUTHOR LIST START-->
                <div class="col-md-4 col-sm-6">
                    <div class="kode-author kode-author-2">
                        <a href="#"><img src="images/author7.png" alt=""></a>
                        <div class="kode-caption">
                            <h4>Saul Bellow</h4>
                            <p>Authors</p>
                            <div class="social-icon">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!--AUTHOR LIST END-->
                <!--AUTHOR LIST START-->
                <div class="col-md-4 col-sm-6">
                    <div class="kode-author kode-author-2">
                        <a href="#"><img src="images/author12.png" alt=""></a>
                        <div class="kode-caption">
                            <h4>Paul Jack</h4>
                            <p>Authors</p>
                            <div class="social-icon">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!--AUTHOR LIST END-->
                <!--AUTHOR LIST START-->
                <div class="col-md-4 col-sm-6">
                    <div class="kode-author kode-author-2">
                        <a href="#"><img src="images/author9.png" alt=""></a>
                        <div class="kode-caption">
                            <h4>Nina Bawden</h4>
                            <p>Authors</p>
                            <div class="social-icon">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!--AUTHOR LIST END-->
                <!--AUTHOR LIST START-->
                <div class="col-md-4 col-sm-6">
                    <div class="kode-author kode-author-2">
                        <a href="#"><img src="images/author10.png" alt=""></a>
                        <div class="kode-caption">
                            <h4>Mary Beard</h4>
                            <p>Authors</p>
                            <div class="social-icon">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!--AUTHOR LIST END-->
                <!--AUTHOR LIST START-->
                <div class="col-md-4 col-sm-6">
                    <div class="kode-author kode-author-2">
                        <a href="#"><img src="images/author11.png" alt=""></a>
                        <div class="kode-caption">
                            <h4>Belinda Bauer</h4>
                            <p>Authors</p>
                            <div class="social-icon">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!--AUTHOR LIST END-->
                <!--AUTHOR LIST START-->
                <div class="col-md-4 col-sm-6 visible-lg visible-md">
                    <div class="kode-author kode-author-2">
                        <a href="#"><img src="images/author13.png" alt=""></a>
                        <div class="kode-caption">
                            <h4>Sebastian Barry</h4>
                            <p>Authors</p>
                            <div class="social-icon">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!--AUTHOR LIST END-->
            </div>
            <!--PAGINATION START-->
            <nav>
              <ul class="pagination">
                <li>
                  <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                  </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                  <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                  </a>
                </li>
              </ul>
            </nav>
            <!--PAGINATION END-->
        </div>
        <!--TOP AUTHERS END-->
    </div>
    <!--CONTENT END-->
    <!--FACTS SECTION END-->
	<section class="kode-uptodate">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<h2>stay up-to-dated</h2>
				</div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-3">
							<div class="social-icons">
								<ul>
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-9">
							<div class="input-container">
								<input type="text" placeholder="Your E-mail Address" id="sub-2">
								<button>Subscribe</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
    <!--CONTENT END-->
    <footer class="footer-3">
        <div class="container">
            <div class="row">
                <!--CATEGORY WIDGET START-->
                <div class="col-md-3 col-sm-6">
                    <div class="widget widget-categories">
                        <h2>Information</h2>
                        <ul>
                            <li><a href="#">Specials</a></li> 
                            <li><a href="#">New products</a></li> 
                            <li><a href="#">Best sellers</a></li> 
                            <li><a href="#">Contact us</a></li> 
                            <li><a href="#">Terms of use</a></li> 
                            <li><a href="#">Sitemap</a></li>  
                        </ul>
                    </div>
                </div>
                <!--CATEGORY WIDGET END-->
                <!--LATEST NEWS WIDGET START-->
                <div class="col-md-3 col-sm-6">
                    <div class="widget widget-latest-news">
                        <h2>Lates News</h2>
                        <ul>
                            <li>
                                <div class="kode-thumb"><a href="#"><img src="images/latest-news.png" alt=""></a></div>
                                <div class="kode-text">
                                    <p>Phasellus risusa Aliowm</p>
                                    <p>14 December 2015</p>
                                </div>
                            </li>
                            <li>
                                <div class="kode-thumb"><a href="#"><img src="images/latest-news.png" alt=""></a></div>
                                <div class="kode-text">
                                    <p>Phasellus risusa Aliowm</p>
                                    <p>14 December 2015</p>
                                </div>
                            </li>
                            <li>
                                <div class="kode-thumb"><a href="#"><img src="images/latest-news.png" alt=""></a></div>
                                <div class="kode-text">
                                    <p>Phasellus risusa Aliowm</p>
                                    <p>14 December 2015</p>
                                </div>
                            </li>
                            <li>
                                <div class="kode-thumb"><a href="#"><img src="images/latest-news.png" alt=""></a></div>
                                <div class="kode-text">
                                    <p>Phasellus risusa Aliowm</p>
                                    <p>14 December 2015</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--LATEST NEWS WIDGET END-->
                <!--TWITTER WIDGET START-->
                <div class="col-md-3 col-sm-6">
                    <div class="widget widget-flickr">
                        <h2>Flickr Gallery </h2>
                        <ul>
                            <li>
                                <a href="#"><img src="images/gallery1.png" alt=""></a>
                            </li>
                            <li>
                                <a href="#"><img src="images/gallery2.png" alt=""></a>
                            </li>
                            <li>
                                <a href="#"><img src="images/gallery3.png" alt=""></a>
                            </li>
                            <li>
                                <a href="#"><img src="images/gallery4.png" alt=""></a>
                            </li>
                            <li>
                                <a href="#"><img src="images/gallery5.png" alt=""></a>
                            </li>
                            <li>
                                <a href="#"><img src="images/gallery6.png" alt=""></a>
                            </li>
                            <li>
                                <a href="#"><img src="images/gallery4.png" alt=""></a>
                            </li>
                            <li>
                                <a href="#"><img src="images/gallery5.png" alt=""></a>
                            </li>
                            <li>
                                <a href="#"><img src="images/gallery6.png" alt=""></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--TWITTER WIDGET END-->
                
                <!--NEWSLETTER START-->
                <div class="col-md-3 col-sm-6">
                    <div class="widget widget-contact-info">
                        <h2>get in touch</h2>
                        <ul>
                            <li>
                                <i class="fa fa-paper-plane"></i>
                                <div class="kode-text">
                                    <h4>Address</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. </p>
                                </div>
                            </li>
                            <li>
                                <i class="fa fa-phone"></i>
                                <div class="kode-text">
                                    <h4>phone Number</h4>
                                    <p>+55(62) 55258-4570</p>
                                    <p>+55(62) 55258-4570</p>
                                </div>
                            </li>
                            <li>
                                <i class="fa fa-envelope-o"></i>
                                <div class="kode-text">
                                    <h4>Email Address</h4>
                                    <a href="#">Info@thelibrary.com</a>
                                </div>
                            </li>
                        </ul>                        
                    </div>
                </div>
                <!--NEWSLETTER START END-->
            </div>
        </div>
    </footer>
    <div class="copyrights">
    	<div class="container">
        	<p>Copyrights � 2015-16 KodeForest. All rights reserved</p>
            <div class="cards"><img src="images/cards.png" alt=""></div>
        </div>
    </div>
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
</body>
</html>