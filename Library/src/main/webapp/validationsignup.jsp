<html>
<head>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
<style>
form .error {
  color: #ff0000;
}
</style>
<script >
$(function() {
	  $("form[name='registration']").validate({
	    rules: {
	      firstname: "required",
	      lastname: "required",
	      email: {
	        required: true,
	        email: true
	      },
	      password: {
	        required: true,
	        minlength: 5
	      }
	    },
	    messages: {
	      firstname: "<p>Please enter your firstname</p>",
	      lastname: "Please enter your lastname",
	      password: {
	        required: "Please provide a password",
	        minlength: "Your password must be at least 5 characters long"
	      },
	      email: "Please enter a valid email address"
	    },
	    submitHandler: function(form) {
	      form.submit();
	    }
	  });
	});
</script>
</head>
<body>
<div id="loader-wrapper">
    <div id="loader"></div>

    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>

</div>
<div class="container">
  <h2>Registration</h2>
  <form action="SignUpUser" method="post" name="registration">

    <label for="firstname">First Name</label>
    <input type="text" name="firstname" id="firstname" placeholder="John"/><br>

    <label for="lastname">Last Name</label>
    <input type="text" name="lastname" id="lastname" placeholder="Doe"/><br>

    <label for="email">Email</label>
    <input type="email" name="email" id="email" placeholder="john@doe.com"/><br>

    <label for="password">Password</label>
    <input type="password" name="password" id="password" placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;"/><br>

    <button type="submit">Register</button>

  </form>
</div>

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
<!-- <script src="js/jquery.min.js"></script> -->
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