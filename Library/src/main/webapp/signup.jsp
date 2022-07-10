<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<!-- CUSTOM STYLE -->
<link href="style.css" rel="stylesheet">
<link rel="icon" type="image/png" href="images/icons/allpagelogo.ico"/>
<!-- Widgets -->
<link href="css/widget.css" rel="stylesheet">
<!-- Font Awesome -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
  rel="stylesheet"
/>
<!-- Google Fonts -->
<link
  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
  rel="stylesheet"
/>
<!-- MDB -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.css"
  rel="stylesheet"
/>
<!-- MDB -->
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.js"
></script>
<script src="assets/js/jquery-3.5.1.min.js"></script>

<script>
	//checks email already registered or not in the system
// 	$(document).ready(function() {

// 		$(".form-submit").attr('disabled', 'disabled');
// 		$("input[type=email]").blur(function() {
// 			//alert("hey there");
// 			$("#msg").empty();
// 			var str = $("#email").val();
// 			if (str.length == 0) {
// 			} else {
// 				$.get("CheckEmail", {
// 					email : str
// 				}).done(function(data) {
// 					if (data == 'true') {
// 						//alert("email already exists");
// 						$(".form-submit").attr('disabled', 'disabled');

// 						$("#msg").append("Email already exists");
// 					} else {
// 						$(".form-submit").removeAttr('disabled', 'disabled');
// 						$("#msg").empty();

// 					}
// 				});
// 			}
// 		});
// 	});
	const email = document.getElementById("mail");

	email.addEventListener("input", function (event) {
	  if (email.validity.typeMismatch) {
	    email.setCustomValidity("I am expecting an e-mail address!");
	    email.reportValidity();
	  } else {
	    email.setCustomValidity("");
	  }
	});
</script>
</head>
<body>
<div id="loader-wrapper">
	<div id="loader"></div>

	<div class="loader-section section-left"></div>
	<div class="loader-section section-right"></div>

</div>
<section class="vh-100" style="background-color: #eee;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                <form class="mx-1 mx-md-4" action="SignUpUser" method="post">

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="form3Example1c" name="firstname" required class="form-control" required="required" style="border-bottom: 2px solid ;"/>
                      <label class="form-label" for="form3Example1c">First Name</label>
                    </div>
                  </div>
                  
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="form3Example1c" name="lastname" required class="form-control" style="border-bottom: 2px solid ;"/>
                      <label class="form-label" for="form3Example1c">Last Name</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <span id="msg" style="color: red">
                      <input type="email" id="mail" class="form-control" name="useremail" required style="border-bottom: 2px solid ;"  />
                      <label class="form-label" for="form3Example3c">Your Email</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                    	<span id="msg1" style="color: red"></span>
                      <input type="password" id="form3Example4c" class="form-control" name="userpass" required style="border-bottom: 2px solid ;"/>
                      <label class="form-label" for="form3Example4c">Password</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="password" id="form3Example4cd" class="form-control" name="userpassrep" required style="border-bottom: 2px solid ;"/>
                      <label class="form-label" for="form3Example4cd">Repeat your password</label>
                    </div>
                  </div>
					
				  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fa fa-mobile fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                    <span id="msg2" style="color: red"></span>
                      <input type="tel" id="form3Example4cd" class="form-control" name="mobileno" required style="border-bottom: 2px solid ;"/>
                      <label class="form-label" for="form3Example4cd">Mobile Number</label>
                    </div>
                  </div>
    
                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                    <button type="submit" class="btn btn-primary btn-lg">Register</button>
                  </div>

                </form>

              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="images\BookSignup.jpg"
                  class="img-fluid" alt="Sample image">

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
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