<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Book Library - Book Guide Author, Publication</title>
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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
<script>
	$(function() {
		$("form[name='registration']")
				.validate(
						{
							rules : {
								firstname : "required",
								lastname : "required",
								useremail : {
									required : true,
									email : true
								},
								userpass : {
									required : true,
									minlength : 8
								},
								userpassrep : {
									required : true,
									minlength : 8,
								},
								mobileno : {
									required : true,
									minlength : 10
								}
							},
							messages : {
								firstname : "Please Enter Your Firstname",
								lastname : "Please Enter Your Lastname",
								userpass : {
									required : "Please Provide Password",
									minlength : "Your Password Must Be at Least 8 Characters Long"
								},
								userpassrep : {
									required : "Please Provide Confirm Password",
									minlength : "Your Password Must Be At Least 8 Characters Long"
								},
								mobileno : "Please Provide Mobile No",
								useremail : "Please Enter A Valid Email Address"
							},
							// Make sure the form is submitted to the destination defined
							// in the "action" attribute of the form when valid
							submitHandler : function(form) {
								form.submit();
							}
						});
	});
</script>
<script>
	function checkPasswordMatch() {
		var password = $("#userpass").val();
		var confirmPassword = $("#userpassrep").val();
		if (password != confirmPassword) {
			$("#CheckPasswordMatch").html("Passwords does not match!");
			$('input[type="submit"]').attr('disabled', true);
		} else {
			$("#CheckPasswordMatch").html("Passwords match.");
			$('input[type="submit"]').attr('disabled', false);
		}
	}
	$(document).ready(function() {
		$("#userpassrep").keyup(checkPasswordMatch);

		$("#btn").click(function() {
			var password = $("#userpass").val();
			var confirmPassword = $("#userpassrep").val();
			if (password == "" || confirmPassword == "") {

				$("#error").html("Both Field are required..");
			}
			if (password != confirmPassword) {
				$("#error").html("Password Not Matched..");

			}
		});
	});
</script>
<style>
form .error {
	color: #ff0000;
	width: 1000px;
}
</style>
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
									<p>Welcome To Library</p>
								</div>
								<div class="social-icon">
									<a href="mailto:librarymailing@gmail.com" class="pull-left">librarymailing@gmail.com</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>



	</div>

	<div class="kode-content">
		<br> <br> <br> <br>
		<section class="lib-textimonials">
			<div class="container">

				<div class="section-heading-1 dark-sec">

					<form method="post" action="SignUpUser" name="registration">
						<h3 id="header" style="color: white;">SIGNUP</h3>
						<p id="heading">Create an account today, It's Free And Only
							Takes a Minute</p>
						<hr>
						<label for="firstname" align="left">First Name:</label> <input
							type="text" name="firstname" id="firstname" placeholder="Panshul"
							style="width: 500px; text-align: left" align="left"> <br>
						<br> <label for="lastname">Last Name :</label> <input
							type="text" name="lastname" id="lastname" placeholder="library"
							style="width: 500px; text-align: left" align="left"><br>
						<br> <label for="useremail">Enter Email-Id :</label> <input
							type="email" name="useremail" id="useremail"
							placeholder="panshul@library.com"
							style="width: 500px; text-align: left" align="left"><br>
						<br> <label for="userpass">Password : </label> <input
							type="password" name="userpass" id="userpass"
							placeholder="********" style="width: 500px; text-align: left"
							align="left"><br> <br> <label for="userpassrep">Confirm
							Password :</label> <input type="password" name="userpassrep"
							id="userpassrep" placeholder="********"
							style="width: 500px; text-align: left" align="left"><br>
						<span id="error" style="color: red; font-weight: bold;"></span>
						<!--              			<br> -->
						<div class="registrationFormAlert"
							style="color: green; font-weight: bold;" id="CheckPasswordMatch"></div>
						<br> <label for="mobileno">Mobile No : </label> <input
							type="password" name="mobileno" id="mobileno"
							placeholder="1234567890" style="width: 500px; text-align: left"
							align="left"><br> <br>
						<hr>
						<br> <input type="submit" value="SIGN UP" id="submit"
							style="color: pink; font-weight: bolder; font-size: larger; width: 300px">

					</form>
				</div>
			</div>
		</section>



	</div>
	<!--CONTENT END-->
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
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
</body>
</html>