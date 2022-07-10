<!DOCTYPE html>
<%@page import="com.library.bean.Login"%>
<%@page import="com.library.bean.Book"%>
<html lang="en">
<head>
<meta charset="utf-8">
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
<link rel="icon" type="image/png" href="images/icons/allpagelogo.ico"/>
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
	<%} else { %>
<%Book book=(Book)request.getAttribute("bookdetails"); %>
<div class="wrapper kode-header-class-3">
	<%@ include file="Header.jsp" %>
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
                                    <img src="data:image/jpg;base64,<%=book.getImgstring()%>" alt="">
                                </div>
                            </div>
                            <div class="col-md-7" style="font-size:50px">
                                <div class="kode-text">
                               	<h2><%=book.getBook_name()%></h2></br>
                                    <div class="book-text">
                                        <p class="row-md-10" style="font-size:20px">Author: <%=book.getBook_author() %></p></br>
                                        <p class="row-md-10"  style="font-size:20px">Publisher: <%=book.getPublish_date() %></p>
                                    </div>
                                    <%System.out.println("BOOK:"+book.getBook_id()); %>
                                    <% if(book.getBook_stock() > 0 ) {%>
                                    <a href="LendBook?page=1&book=<%=book.getBook_id()%>" class="add-to-cart">Lend</a>
                                <%} else {  %>
                                <p class="row-md-10" style="font-size:20px;color:red">Unavailable</p>
                                <% } %>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--BOOK DETAIL END-->
                    <!--PRODUCT REVIEW TABS START-->
                    <div class="product-review-tabs">
                <!--NAV TABS START-->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#Description " aria-controls="Description" role="tab" data-toggle="tab">Description </a></li>
                  
                </ul>
                <!--NAV TABS END-->
                <!--TAB PANEL START-->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" >
                      <p><%=book.getBook_description() %></p>
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
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
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
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
                                        <a class="reply" href="#">Reply</a>
                                    </div>
                                </li>
                            </ul>
                        </div>                        
                    </div>
                    <!-- <div role="tabpanel" class="tab-pane fade" id="tags">
                         <div class="product-tags">
                            	<a href="#">habemus</a>
                                <a href="#">accusam</a>
                                <a href="#">vero</a>
                                <a href="#">dolor</a>
                                <a href="#">justo</a>
                                <a href="#">diam</a>
                                <a href="#">nonumy</a>
                                <a href="#">consetetur</a>
                                <a href="#">erat</a>
                                <a href="#">sanctus</a>
                                <a href="#">gubergren</a>
                                <a href="#">eirmod</a>
                                <a href="#">habemus</a>
                                <a href="#">accusam</a>
                                <a href="#">vero</a>
                                <a href="#">dolor</a>
                                <a href="#">justo</a>
                                <a href="#">diam</a>
                                <a href="#">nonumy</a>
                                <a href="#">consetetur</a>
                                <a href="#">erat</a>
                                <a href="#">sanctus</a>
                                <a href="#">gubergren</a>
                                <a href="#">eirmod</a>
                                <a href="#">habemus</a>
                                <a href="#">accusam</a>
                                <a href="#">vero</a>
                                <a href="#">dolor</a>
                                <a href="#">justo</a>
                                <a href="#">diam</a>
                                <a href="#">nonumy</a>
                                <a href="#">consetetur</a>
                                <a href="#">erat</a>
                                <a href="#">sanctus</a>
                                <a href="#">gubergren</a>
                                <a href="#">eirmod</a>
                         </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="CustomTab">
                        <p>Ipsum euismod his at. Eu putent habemus voluptua sit, sit cu rationibus scripserit, modus voluptaria ex per. Aeque dicam consulatu eu his, probatus neglegentur disputationi sit et. Ei nec ludus epicuri petentium, vis appetere maluisset ad. Et hinc exerci utinam cum. Sonet saperet nominavi est at, vel eu sumo tritani. Cum ex minim legere.</p> 
                        <p>Te eam iisque deseruisse, ipsum euismod his at. Eu putent habemus voluptua sit, sit cu rationibus scripserit, modus voluptaria ex per. Aeque dicam consulatu eu his, probatus neglegentur disputationi sit et. Ei nec ludus epicuri petentium, vis appetere maluisset ad. Et hinc exerci utinam cum. Sonet saperet nominavi est at, vel eu sumo tritani. Cum ex minim legere.</p>
                        <p>Sed an nominavi maiestatis, et duo corrumpit constituto, duo id rebum lucilius. Te eam iisque deseruisse, ipsum euismod his at. Eu putent habemus voluptua sit, sit cu rationibus scripserit, modus voluptaria ex per. Aeque dicam consulatu eu his, probatus neglegentur disputationi sit et. Ei nec ludus epicuri petentium, vis appetere maluisset ad. Et hinc exerci utinam cum. Sonet saperet nominavi est at, vel eu sumo tritani. Cum ex minim legere.</p>
                        <p>Ipsum euismod his at. Eu putent habemus voluptua sit, sit cu rationibus scripserit, modus voluptaria ex per. Aeque dicam consulatu eu his, probatus neglegentur disputationi sit et. Ei nec ludus epicuri petentium, vis appetere maluisset ad. Et hinc exerci utinam cum. Sonet saperet nominavi est at, vel eu sumo tritani. Cum ex minim legere.</p> 
                    </div> -->
                </div>
                <!--TAB PANEL END-->
            </div>
                    <!--PRODUCT REVIEW TABS END-->
                    <!--RELATED PRODUCTS START-->
<!--                     <div class="lib-related-products"> -->
<!--                         <h2>Related Books</h2> -->
<!--                         <div class="row"> -->
<!--                             PRODUCT GRID START -->
<!--                             <div class="col-md-4 col-sm-6"> -->
<!--                                 <div class="best-seller-pro"> -->
<!--                                      <figure> -->
<!--                             	<img src="images/book7.png" alt=""> -->
<!--                             </figure> -->
<!--                             <div class="kode-text"> -->
<!--                             	<h3><a href="#">Burnt Siena</a></h3> -->
<!--                             </div> -->
<!--                             <div class="kode-caption"> -->
<!--                             	<h3>Art History Mystery</h3> -->
                            
<!--                                 <p>Sara Wisseman</p> -->
<!--                                 <p class="price">$334.50</p> -->
<!--                                 <a href="#" class="add-to-cart">Add To Cart</a> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             PRODUCT GRID END -->
<!--                             PRODUCT GRID START -->
<!--                             <div class="col-md-4 col-sm-6"> -->
<!--                                 <div class="best-seller-pro"> -->
<!--                                     <figure> -->
<!--                             	<img src="images/book8.png" alt=""> -->
<!--                             </figure> -->
<!--                             <div class="kode-text"> -->
<!--                             	<h3><a href="#">Chrysalis</a></h3> -->
<!--                             </div> -->
<!--                             <div class="kode-caption"> -->
<!--                             	<h3>The Brave Girl</h3> -->
                           
<!--                                 <p>William S.</p> -->
                                
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             PRODUCT GRID END -->
<!--                             PRODUCT GRID START -->
<!--                             <div class="col-md-4"> -->
<!--                                 <div class="best-seller-pro"> -->
<!--                                     <figure> -->
<!--                             	<img alt="" src="images/book4.png"> -->
<!--                             </figure> -->
<!--                             <div class="kode-text"> -->
<!--                             	<h3><a href="#">Dead Water</a></h3> -->
<!--                             </div> -->
<!--                             <div class="kode-caption"> -->
<!--                             	<h3>Dead Water in the Sea</h3> -->
                            
<!--                                 <p>Ann Grannger</p> -->
                                
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             PRODUCT GRID END -->
<!--                         </div> -->
<!--                     </div> -->
                    <!--RELATED PRODUCTS END-->
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
                            <li><a href="contact-us.jsp">Contact us</a></li> 
                            <!-- <li><a href="#">Terms of use</a></li>  -->
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
                                    <p><a href="tel:+55(62) 55258-4570">+55(62) 55258-4570</a></p>
                                    <p><a href="tel:+55(62) 55258-4570">+55(62) 55258-4570</a></p>
                                </div>
                            </li>
                            <li>
                                <i class="fa fa-envelope-o"></i>
                                <div class="kode-text">
                                    <h4>Email Address</h4>
                                    <a href="mailto:librarymailing@gmail.com">librarymailing@gmail.com</a>
                                </div>
                            </li>
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
                    <a style="color:white" href="mailto:librarymailing@gmail.com" class="pull-left">librarymailing@gmail.com</a>
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
<%} %>
</body>
</html>