<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html>
  <html lang="en">
  <head>
      <meta charset="ISO-8859-1">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Login</title>
  </head>
  <link rel="stylesheet" href="css/login.css">
  <script src="js/login.js"></script>
  <!-- CUSTOM STYLE -->
<link href="style.css" rel="stylesheet">
<!-- Widgets -->
<link href="css/widget.css" rel="stylesheet">
  <body>
  <div id="loader-wrapper">
	<div id="loader"></div>

	<div class="loader-section section-left"></div>
	<div class="loader-section section-right"></div>

</div>
  
    <div class="wrapper">
        <div class="title-text">
          <div class="title login">Login Form</div>
        </div>
        <div class="form-container">
          <div class="controls">
          <div class="form-inner">
            <form action="LoginServlet" class="login" method="post">
              <div class="field">
                <input type="text" name="email" id="email" placeholder="Email Address" required>
              </div>
              <div class="field">
                <input type="password" name="pass" id="pass" placeholder="Password" required>
              </div>
              <div class="field btn">
                <div class="btn-layer"></div>
                <input type="submit" value="Login">
              </div>
              <div class="signup-link">Not a member? <a href="signup.jsp">Signup now</a></div>
            </form>
          </div>
        </div>
      </div>
      <script src="js/login.js"></script>
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

