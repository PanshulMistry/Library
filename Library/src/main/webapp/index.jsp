<!DOCTYPE html>
<%@page import="com.library.bean.Book"%>
<%@page import="com.library.bean.Return"%>
<%@page import="java.sql.Date"%>
<%@page import="com.library.bean.Lend"%>
<%@page import="java.util.List"%>
<%@page import="com.library.service.impl.LibraryServiceImpl"%>
<%@page import="com.library.service.LibraryService"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.library.bean.Login"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Book Library - User HomePage</title>
<!-- CUSTOM STYLE -->
<link rel="icon" type="image/png" href="images/icons/allpagelogo.ico"/>
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
 <%if(login==null){ %>
    <%response.sendRedirect("login.jsp");%>
    <%} else {%>
  <%System.out.println("index login:"+login.getUser_fname()); %>
<!--WRAPPER START-->
<div class="wrapper kode-header-class-3">

 <%
 LibraryService ls = new LibraryServiceImpl();
 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
 	
 java.util.Date firstDate; 
 java.util.Date secondDate;
 
	List<Lend> lendList = ls.getLendUser(login.getLogin_id());
	java.util.Date date = new java.util.Date();
	String d = sdf.format(date);
	Date currDate = Date.valueOf(d);
	secondDate = new java.util.Date(currDate.getTime()); 
	String msg="";
	String msg1="";
	String msg2="";
	Book book;
	for(Lend l : lendList)
	{
		Date lendDate = l.getLend_date();
		firstDate = new java.util.Date(lendDate.getTime());
		long time_difference = secondDate.getTime() - firstDate.getTime();  
		long days_difference = (time_difference / (1000*60*60*24)) % 365;   
		if(days_difference==7)
		{
			Return r = new Return();
			r.setBooktable_id(l.getBook_id());
			r.setLogintable_id(login.getLogin_id());
			r.setReturn_date(currDate);
			msg1 = ls.insertReturnBook(r);
			book = ls.getBookDetails(l.getBook_id());
			msg2 = ls.updateReturnStock(book);
			System.out.println("Update return stock is:"+msg2);
			if(msg1!=null)
			{
				msg=ls.deleteLendUserBook(lendDate, login.getLogin_id());
			}
		}
		if(msg!=null)
		{
			System.out.println("Deleted Date "+ lendDate +" record is:"+msg);
		}
		
	}
 %> 
	<!--HEADER START-->
<%@ include file="Header.jsp" %>
	<!-- HEADER END -->
    <div class="kode-banner">
    	<ul class="bxslider">
            
        	<li>
            	<img src="homepage/banner-1.png" alt="">
                <div class="kode-caption-2">
                	<h5><%=login.getUser_fname()%></h5>
                	<h2>Biggest Library</h2>
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolor emque laudantium, totam rem aperiam.ipsam voluptatem.</p>
				
                </div>
            </li>

            <li>
            	<img src="homepage/banner-2.png" alt="">
                <div class="kode-caption-2">
                	<h5>Are you searching a book...?</h5>
                	<h2>Biggest Library</h2>
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolor emque laudantium, totam rem aperiam.ipsam voluptatem.</p>
				
                </div>
            </li>

            <li>
            	<img src="homepage/banner-3.png" alt="">
                <div class="kode-caption-2">
                	<h5>Are you searching a book...?</h5>
                	<h2>Biggest Library</h2>
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolor emque laudantium, totam rem aperiam.ipsam voluptatem.</p>				
                </div>
            </li>
        </ul>
    </div>

<!-- 	<div class="search-section"> -->
<!-- 		<div class="container"> -->
<!-- 			  <div class="tab-content"> -->
<!-- 					<div class="form-container"> -->
<!-- 						<div class="row"> -->
<!--                             <form action="/search" method="get"> -->
<!--                                 <div class="col-md-3 col-sm-4"> -->
<!--                                     <input style="text-align:center;" type="text" name="bookname" placeholder="Book Name"> -->
<!--                                 </div> -->
<!--                                 <div class="col-md-3 col-sm-12"> -->
<!--                                     <button type="submit">Search Book</button> -->
<!--                                 </div> -->
<!--                             </form> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			  </div> -->
<!-- 		</div> -->
<!-- 	</div> -->

<div class="kode-content">
    


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
<%} %>
</body>
</html>