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
<!-- SHORTCODES -->
<link href="css/shortcode.css" rel="stylesheet">
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
        	<h2>About us</h2>
            <ol class="breadcrumb">
              <li><a href="#">Home</a></li>
              <li><a href="#">Library</a></li>
              <li class="active">About Us</li>
            </ol>
        </div>
    </div>
    <!--BANNER END-->
    <!--BUT NOW START-->
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
    <!--BUT NOW END-->
    <!--CONTENT START-->
    <div class="kode-content">
        <!--BOOK GUIDE SECTION START-->
        <section class="kode-about-us-section">
        	<div class="container">
            	<!--SECTION CONTENT START-->
            	<div class="heading-1">
                	<h2>Give That You Like Never Before</h2>
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem</p>
                </div>
                <!--SECTION CONTENT END-->
                <div class="row">
                	<div class="col-md-6">
                    	<h2>Who we are?</h2>
                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
                        <ul class="kd-list3">
                            <li><a href="#">Consetetur sadipscing elitr sed diam nonumy eirmod</a></li>
                            <li><a href="#">Sadipscing elitr sed diam nonumy eirmod</a></li>
                            <li><a href="#">Consetetur elitr sed diam nonumy eirmod</a></li>
                            <li><a href="#">Nonumy elitr sed diam nonumy eirmod</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6">
                    	<div class="about-thumb">
                        	<img src="images/about-img3.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--BOOK GUIDE SECTION END-->
        <!--BOOKS SECTION START-->
        <section class="about-lib-theme">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h2>Meet Our Team</h2>
                        <div class="row">
                        	<div class="col-md-6 col-sm-6">
                            	<div class="kode-team-listing">
                                	<div class="kode-thumb">
                                    	<a href="#"><img src="images/team-1.png" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                    	<h3>Jenny</h3>
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy</p>
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
                            <div class="col-md-6 col-sm-6">
                            	<div class="kode-team-listing">
                                	<div class="kode-thumb">
                                    	<a href="#"><img src="images/team-2.png" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                    	<h3>Rose</h3>
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy</p>
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
                            <div class="col-md-6 col-sm-6">
                            	<div class="kode-team-listing">
                                	<div class="kode-thumb">
                                    	<a href="#"><img src="images/team-3.png" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                    	<h3>John Doe</h3>
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy</p>
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
                            <div class="col-md-6 col-sm-6">
                            	<div class="kode-team-listing">
                                	<div class="kode-thumb">
                                    	<a href="#"><img src="images/team-4.png" alt=""></a>
                                    </div>
                                    <div class="kode-text">
                                    	<h3>Nina Williams</h3>
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy</p>
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
                        </div>
                    </div>
                    <div class="col-md-6">
                    	<h2>Our Dealing in projects</h2>
                        <div class="lib-qualities">
                             <ul>   
                                <!--LIST ITEM START-->
                                <li>
                                    <i class="fa fa-star"></i>
                                    <h2>100% Client's satisfaction</h2>
                                    <p>We provide 100% customer professional support and clean code to satisfy our clients.</p>
                                </li>
                                <!--LIST ITEM END-->
                                <!--LIST ITEM START-->
                                <li>
                                    <i class="fa fa-leaf"></i>
                                    <h2>User friendly Design Quality</h2>
                                    <p>The desgin of the book library is very user friendly easy to use and customize the design and site.</p>
                                </li>
                                <!--LIST ITEM END-->
                                <!--LIST ITEM START-->
                                <li>
                                    <i class="fa fa-users"></i>
                                    <h2>Great Impression on website visitors</h2>
                                    <p>The exciting look of the book library gives a wonder full impression to the visitors and provide the traffic.</p>
                                </li>
                                <!--LIST ITEM END-->
                                <!--LIST ITEM START-->
                                <li>
                                    <i class="fa fa-life-ring"></i>
                                    <h2>24 hours quick support</h2>
                                    <p>We provide 24 / 7 custom support to our customer because we never leave our customers alone.</p>
                                </li>
                                <!--LIST ITEM END-->
                            </ul>
                        </div>                        
                    </div>                    
                </div>                
            </div>
        </section>
        <!--BOOKS SECTION END-->
        <!--LIBRARY GALLERY SECTION START-->
        <section class="our-libraries">
        	<div class="container">
            	<h2>Our Libraries</h2>
                <div class="our-libraries-cover">
                	<div class="owl-library">
                    <div class="item">
                    	<div class="kode-thumb">
                        	<a href="#"><img src="images/library-1.png" alt="Library"></a>
                    	</div>
                    </div>
                    <div class="item">
                    	<div class="kode-thumb">
                        	<a href="#"><img src="images/library-2.png" alt="Library"></a>
                    	</div>
                    </div>
                    <div class="item">
                    	<div class="kode-thumb">
                        	<a href="#"><img src="images/library-3.png" alt="Library"></a>
                    	</div>
                    </div>
                    <div class="item">
                    	<div class="kode-thumb">
                        	<a href="#"><img src="images/library-4.png" alt="Library"></a>
                    	</div>
                    </div>
                    <div class="item">
                    	<div class="kode-thumb">
                        	<a href="#"><img src="images/library-1.png" alt="Library"></a>
                    	</div>
                    </div>
                    <div class="item">
                    	<div class="kode-thumb">
                        	<a href="#"><img src="images/library-2.png" alt="Library"></a>
                    	</div>
                    </div>
                    <div class="item">
                    	<div class="kode-thumb">
                        	<a href="#"><img src="images/library-3.png" alt="Library"></a>
                    	</div>
                    </div>
                    <div class="item">
                    	<div class="kode-thumb">
                        	<a href="#"><img src="images/library-4.png" alt="Library"></a>
                    	</div>
                    </div>
                    
                </div>
                </div>
            </div>
        </section>
        <!--LIBRARY GALLERY SECTION END-->
        <!--FACTS SECTION START-->
        <section class="kode-interesting-facts">
            <div class="container">
				<h2>Interesting Facts</h2>
                <div class="kode-facts">
                	<!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#work" aria-controls="work" role="tab" data-toggle="tab">Why work with us</a></li>
                        <li role="presentation"><a href="#Benifits" aria-controls="Benifits" role="tab" data-toggle="tab">Benifits &amp; perks</a></li>
                        <li role="presentation"><a href="#located" aria-controls="located" role="tab" data-toggle="tab">Where we located</a></li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane fade in active" id="work">
                        	<h4>Why Work with us</h4>
                            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="Benifits">
                        	<h4>Benifits &amp; Perks</h4>
                            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
                            <p> Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="located">
                        	<h4>Where we located?</h4>
                            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
	</div>	
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
<script src="js/owl.carousel.js"></script>
<script src="js/functions.js"></script>
</body>
</html>