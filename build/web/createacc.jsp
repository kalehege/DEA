<!DOCTYPE html>
<html lang="zxx">
<head>
	<!-- Meta Tag -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name='copyright' content=''>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Title Tag  -->
    <title>Fashion Fusion</title>
	<!-- Favicon -->
	<link rel="icon" type="image/png" href="images/favicon.png">
	<!-- Web Font -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
	
	<!-- StyleSheet -->
	
	<%@include file="allcss.jsp" %>
	
</head>
<body class="js">
	
	<!-- Preloader -->
	<div class="preloader">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span>
				<span></span>
			</div>
		</div>
	</div>
	<!-- End Preloader -->
	
	
	<!-- Header -->
	<%@include file="header.jsp" %>
		<!--/ End Header -->
	
	<!-- Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="bread-inner">
						<ul class="bread-list">
							<li><a href="index.jsp">Home<i class="ti-arrow-right"></i></a></li>
							<li class="active"><a href="sign-up">Sign Up</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

    <!--Form-->
    <div class="scontainer">
        <h2>SIGN UP</h2>
        <form action="register" method="post">
            <div class="form-group">
              <label for="f_name">First Name:</label>
              <input type="text" id="f_name" name="f_name" required>
            </div>
                        
            <div class="form-group">     
              <label for="l_name">Last Name:</label>
              <input type="text" id="l_name" name="l_name" required>
            </div>
            <div class="form-group">
              <label for="email">Email</label>
              <input type="text" id="email" name="email" required>
            </div>
            <div class="form-group">
              <label for="dob">Birthday:</label>
              <input type="date" id="dob" name="dob" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="text" id="password" name="password" required>
            </div>
          <button type="submit">Sign Up</button>
        </form>
      </div>

<!-- Start Footer Area -->
<%@include file="footer.jsp" %>
<!-- /End Footer Area -->



<!-- Jquery -->
<%@include file="js.jsp" %>
</body>
</html>