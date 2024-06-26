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
	
	<!-- Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="bread-inner">
						<ul class="bread-list">
							<li><a href="home">Home<i class="ti-arrow-right"></i></a></li>
							<li class="active"><a href="sign-in">Login</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
    <div class="scontainer">
        <h2>SIGN IN</h2>
        <form action="login" method="post">
          <div class="form-group">
            <label for="email">Email</label>
            <input type="text" id="email" name="email" required>
          </div>
          <div class="form-group">
              <label for="password">Password</label><br>
            <input type="password" id="password" name="password" required>
          </div>
            <% 
    
                String error = request.getParameter("error");
                     if (error != null && error.equals("1")) { 
            %>
            <div class="alert alert-danger" role="alert">
                Invalid email or password. Please try again.
            </div>
            <% } %>
          <button type="submit">SIGN IN</button>
        </form>          
        <p>Don't have an account? <a href="sign-up">Create one</a></p>
                    
        <form action="login?error=1" method="post">

            
      </div>


    <%@include file="footer.jsp" %>

    <%@include file = "js.jsp" %>
</body>
</html>
