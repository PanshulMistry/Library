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
<link rel="icon" type="image/png" href="images/icons/allpagelogo.ico"/>
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
<div class="wrapper kode-header-class-3">
	<!--HEADER START-->
	<%@ include file="Header.jsp" %>
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
                                    <input style="text-align:center;" type="text" name="bookname" placeholder="Book Name">
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
	<%Book book = (Book)request.getAttribute("booksearch");%>
	<%if(book!=null) {%>
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
<span> </span><span> </span><span> </span><span> </span><span> </span>
</div>
                                <p><%=book.getBook_author()%></p>
<!--                                 <p class="price">$224.20</p> -->
									
                                <a href="BookDetail?bookid=<%=book.getBook_id()%>" class="add-to-cart" style="pointer-events: none">Lend</a>
                            
                            </div>
                        </div>
                    </div>
      
	</section>
	<%} else { %>
<!--     <div class="search-section"> 
		<div class="container">
			
			  <ul class="nav nav-tabs" role="tablist">
				<li role="presentation"><a href="#Basic" aria-controls="Basic" role="tab" data-toggle="tab">Basic</a></li>
				<li role="presentation" class="active"><a href="#Author" aria-controls="Author" role="tab" data-toggle="tab">Author</a></li>
				<li role="presentation"><a href="#Publications" aria-controls="Publications" role="tab" data-toggle="tab">Publications</a></li>
			  </ul>
			
			  
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
	</div>-->
    <!--CONTENT START-->
    <!--CONTENT START-->
    <div class="kode-content padding-tb-50">
        <!--TOP AUTHERS START-->
        <div class="container">
            <div class="kode-product-filter">
                
            </div>
            <div class="row">
                	<!--PRODUCT GRID START-->
                	<%List<Book> bookList=(List)request.getAttribute("books");%>
                    <%for(Book b : bookList) {%>
                	<div class="col-md-3 col-sm-6">
                    	<div class="best-seller-pro">
                        	<figure>
                            	<img src="data:image/jpg;base64,<%=b.getImgstring()%>" alt="">
                            </figure>
                            <div class="kode-text">
                            	<h3><%=b.getBook_name()%></h3>
                            </div>
                            <div class="kode-caption">
                            	<h3><%=b.getBook_name()%></h3>
                                <div class="rating">
<span> </span><span> </span><span> </span><span> </span><span> </span>
</div>
                                <p><%=b.getBook_author()%></p>
                                <a href="BookDetail?bookid=<%=b.getBook_id()%>" class="add-to-cart">Lend</a>
                            </div>
                        </div>
                    </div>
                    <%} %>
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
   <%} %>
<!-- 	<section class="kode-uptodate"> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="row"> -->
<!-- 				<div class="col-md-4"> -->
<!-- 					<h2>stay up-to-dated</h2> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-8"> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-md-3"> -->
<!-- 							<div class="social-icons"> -->
<!-- 								<ul> -->
<!-- 									<li><a href="#"><i class="fa fa-facebook"></i></a></li> -->
<!-- 									<li><a href="#"><i class="fa fa-google-plus"></i></a></li> -->
<!-- 									<li><a href="#"><i class="fa fa-twitter"></i></a></li> -->
<!-- 									<li><a href="#"><i class="fa fa-pinterest-p"></i></a></li> -->
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="col-md-9"> -->
<!-- 							<div class="input-container"> -->
<!-- 								<input type="text" placeholder="Your E-mail Address" id="sub-2"> -->
<!-- 								<button>Subscribe</button> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</section> -->
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
                            <li><a href="#">Books</a></li> 
                            <li><a href="contact-us.jsp">Contact Us</a></li> 
                          
                        </ul>
                    </div>
                </div>
                <!--CATEGORY WIDGET END-->
                
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
                                    <p><a href="tel:+55(62) 55258-4570"></a>+55(62) 55258-4570</p>
                                    <p><a href="tel:+55(62) 55258-4570"></a>+55(62) 55258-4570</p>
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
                <!--NEWSLETTER START END-->
                <div class="col-md-3 col-sm-6">
                	<img src="images/gallery2.png" height="300px" width="400px">
                </div>
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
		            <div class="back-to-top">
		            	<a href="#home"><i class="fa fa-angle-up"></i></a>
		            </div>
		        </div>
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
<%} %>
</body>
</html>