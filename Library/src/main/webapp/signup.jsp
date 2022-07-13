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
  rel="stylesheet"/>
<!--   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script> -->
<!-- Google Fonts -->
<!-- <link -->
<!--   href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" -->
<!--   rel="stylesheet" -->
<!-- /> -->
<style>
form .error {
  color: #ff0000;
}
</style>
<!-- MDB -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.css"
  rel="stylesheet"
/>
<!-- MDB -->
<!-- <script -->
<!--   type="text/javascript" -->
<!--   src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.js" -->
<!-- ></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
<script >
$(function() {
	  $("form[name='registration']").validate({
	    rules: {
	      firstname: "required",
	      lastname: "required",
	      mobileno: "required",
	      email: {
	        required: true,
	        email: true
	      },
	      password: {
	        required: true,
	        minlength: 5
	      }
	      userpassrep: {
		        required: true,
		        minlength: 5
		      }
	    },
	    messages: {
	      firstname: "Please enter your firstname",
	      lastname: "Please enter your lastname",
	      userpassrep:{
		        required: "Please confirm your password",
		        minlength: "Your password must be at least 5 characters long"
		      },
	      password: {
	        required: "Please provide a password",
	        minlength: "Your password must be at least 5 characters long"
	      },
	      mobileno:"Please enter your Mobile Number",
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

<section class="vh-100" style="background-color: #eee;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>
                <form class="mx-1 mx-md-4" action="SignUpUser" method="post" name="registration">
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="firstname" name="firstname" class="form-control" style="border-bottom: 2px solid ;"/>
                      <label class="form-label" for="firstname">First Name</label>
                    </div>
                  </div>
                  
                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" id="lastname" name="lastname" class="form-control" style="border-bottom: 2px solid ;"/>
                      <label class="form-label" for="lastname">Last Name</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <span id="msg" style="color: red">
                      <input type="email" id="email" class="form-control" name="email"  style="border-bottom: 2px solid ;"  />
                      <label class="form-label" for="email">Your Email</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                    	<span id="msg1" style="color: red"></span>
                      <input type="password" id="password" class="form-control" name="password"  style="border-bottom: 2px solid ;"/>
                      <label class="form-label" for="password">Password</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="password" id="userpassrep" class="form-control" name="userpassrep"  style="border-bottom: 2px solid ;"/>
                      <label class="form-label" for="userpassrep">Repeat your password</label>
                    </div>
                  </div>
					
				  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fa fa-mobile fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                    <span id="msg2" style="color: red"></span>
                      <input type="tel" id="mobileno" class="form-control" name="mobileno"  style="border-bottom: 2px solid ;"/>
                      <label class="form-label" for="mobileno">Mobile Number</label>
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