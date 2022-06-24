<!DOCTYPE html>
<%@page import="com.library.bean.Login"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Book Library - Book Guide Author, Publication </title>
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
<%HttpSession httpSession=request.getSession(false);
  Login login=(Login)httpSession.getAttribute("loginBean");	%>
<!--WRAPPER START-->
<div class="wrapper kode-header-class-3">
<%if(login==null){ %>
              <%response.sendRedirect("login.jsp");%>
              <%} %>
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
                                <p>Welcome To Library</p>
                            </div>
                            <div class="social-icon">
                                <a href="mailto:librarymailing@gmail.com" class="pull-left">librarymailing@gmail.com</a>
                            </div>
                        </div>
                        
                    	<div class="kode-navigation">
						   <ul>
								<li><a href="index.jsp" >Home</a>
								</li>
								
								<li><a href="about-us.jsp">About Us</a></li>
								<li><a href="BooksShow">Our Books</a>
									<ul>
										<li><a href="books-detail.jsp">Book</a></li>                                
									</ul>
								</li>
								<li><a href="authors.jsp">Authors</a>
									<ul>
										<li><a href="authors.jsp">Authors</a></li>
										<li><a href="author-detail.jsp">Authors Detail</a></li>										
									</ul>
								</li>			
								<li class="last"><a href="contact-us.jsp">Contact Us</a></li>
							</ul>
						</div>
                        
						<div id="kode-responsive-navigation" class="dl-menuwrapper">
							<button class="dl-trigger">Open Menu</button>
                            <ul class="dl-menu">
								<li><a href="index.jsp" >Home</a>
								</li>
								
								<li><a href="about-us.jsp">About Us</a></li>
								<li><a href="BooksShow">Our Books</a>
									<ul>
										<li><a href="BookDetail">Book</a></li>                                
									</ul>
								</li>
								<li><a href="authors.jsp">Authors</a>
									<ul>
										<li><a href="authors.jsp">Authors</a></li>
										<li><a href="author-detail.jsp">Authors Detail</a></li>										
									</ul>
								</li>			
								<li class="last"><a href="contact-us.jsp">Contact Us</a></li>
								<li class="last"><a href="LogoutUser">Logout</a></li>
							</ul>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div class="kode-banner">
    	<ul class="bxslider">
            
        	<li>
            	<img src="images/banner-1.png" alt="">
                <div class="kode-caption-2">
                	<h5>Are you searching a book...?</h5>
                	<h2>Biggest Library</h2>
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolor emque laudantium, totam rem aperiam.ipsam voluptatem.</p>
				
                </div>
            </li>

            <li>
            	<img src="images/banner-2.png" alt="">
                <div class="kode-caption-2">
                	<h5>Are you searching a book...?</h5>
                	<h2>Biggest Library</h2>
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolor emque laudantium, totam rem aperiam.ipsam voluptatem.</p>
				
                </div>
            </li>

            <li>
            	<img src="images/banner-3.png" alt="">
                <div class="kode-caption-2">
                	<h5>Are you searching a book...?</h5>
                	<h2>Biggest Library</h2>
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolor emque laudantium, totam rem aperiam.ipsam voluptatem.</p>				
                </div>
            </li>
        </ul>
    </div>

	<div class="search-section">
		<div class="container">
			  <div class="tab-content">
					<div class="form-container">
						<div class="row">
							<div class="col-md-3 col-sm-4">
								<input type="text" placeholder="First Name">
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

<div class="kode-content">
    
        <section>
            <div class="container">
            	<div class="section-heading-1">
                    <h2>Latest Book Uploaded</h2>
                    <p>The Latest books uploaded in the Library.</p>
                    <div class="kode-icon"><i class="fa fa-book"></i></div>
                </div>
            </div>
           
            <div class="owl-blog owl-theme">
                <div class="item">
                    <div class="lib-blog-post">
                    	<div class="kode-thumb">
                        	
                            <div class="lib-btns">
                            	<a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-search"></i></a>
                                <a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-picture-o"></i></a>
                            </div>
                        </div>
                        <div class="kode-text">
                        	<h2>Becky's Book Reviews</h2>
                            <ul>
                            	<li><p>by: <a href="#">James Greig</a></p></li>
                                <li><p><a href="#">20th August 2015</a></p></li>
                            </ul>
                            
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="lib-blog-post">
                    	<div class="kode-thumb">
                        	
                            <div class="lib-btns">
                            	<a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-search"></i></a>
                                <a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-picture-o"></i></a>
                            </div>
                        </div>
                        <div class="kode-text">
                        	<h2>Becks Book Reviews</h2>
                            <ul>
                            	<li><p>by: <a href="#">James Greig</a></p></li>
                                <li><p><a href="#">20th August 2015</a></p></li>
                            </ul>
                            
                        </div>
                    </div>
                </div>

                <div class="item">
                    <div class="lib-blog-post">
                    	<div class="kode-thumb">
                        	
                            <div class="lib-btns">
                            	<a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-search"></i></a>
                                <a href="#" data-toggle="tooltip" title="Title"><i class="fa fa-picture-o"></i></a>
                            </div>
                        </div>
                        <div class="kode-text">
                        	<h2>Beckys Book Reviews</h2>
                            <ul>
                            	<li><p>by: <a href="#">James Greig</a></p></li>
                                <li><p><a href="#">20th August 2015</a></p></li>
                            </ul>
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
    
        <section class="lib-textimonials">
        	<div class="container">

           <div class="section-heading-1 dark-sec">
                <h2>Our Testimonials</h2>
                <p>What our clients say about the books reviews and comments</p>
                <div class="kode-icon"><i class="fa fa-book"></i></div>
            </div>

            <div class="owl-testimonials owl-theme">

                <div class="item">
                    <div class="lib-testimonial-content">
                    	<div class="kode-text">
                        	<p>I loved thrift books! It's refreshing to buy discounted books and have them shipped quickly. I could afford to buy 3 copies to hand out to friends also interested in the topic. Thank you!! Read more</p>
                        </div>
                        <div class="kode-thumb">
                            <img src="images/testimonials1.png" alt="">
                        </div>
                        <h4>Jenifer Robbert</h4>
                        <p class="title">Author</p>
                    </div>
                </div>

                <div class="item">
                    <div class="lib-testimonial-content">
                    	<div class="kode-text">
                        	<p>You have great prices and the books are in the shape as stated. Although it takes so long for them to get to their destination. I have been ordering for years and get great books in the shape said.</p>
                        </div>
                        <div class="kode-thumb">
                            <img src="images/testimonials-img4.png" alt="">
                        </div>
                        <h4>Jenifer Robbert</h4>
                        <p class="title">Author</p>
                    </div>
                </div>
            </div>
            </div>
        </section>
<br>


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
                            <li><a href="#">Terms of use</a></li> 
                        </ul>
                    </div>
                </div>
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
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script src="js/functions.js"></script>
</body>
</html>