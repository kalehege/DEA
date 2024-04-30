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
	<!-- Slider Area -->
	<section class="hero-slider">
		<!-- Single Slider -->
		<div class="single-slider">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-lg-9 offset-lg-3 col-12">
						<div class="text-inner">
							<div class="row">
								<div class="col-lg-7 col-12">
                                                                    
									<div class="hero-text">
                                                                            
										<h1><span><h3>Elegent</h3> </span>Shirts For Man</h1>
										
										<div class="button">
                                                                                    <a href="mens.jsp" class="btn">Shop Now!</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/ End Single Slider -->
	</section>
	<!--/ End Slider Area -->
<body>


<div class="gradient-custom">
    <div class="col-12">
        <section class="vh-100  py-3 gradient-custom">
            <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">

                    <div class="container col-12 align-content-center text-center">
                        <h1>User Profile</h1>
                      
                        <a class="btn btn-danger" href="logout.php">Logout</a>
                        <br><br>
                    </div>

                  
                    <div class="col-12 ">
                        <div class="card bg-dark text-white" style="border-radius: 1rem;">
                            <div class="card-body  text-center">
                                <form method="post" action="edit_profile.php" class="needs-validation" enctype="multipart/form-data">
                                    <div class="mb-md-5 mt-md-4">

                                        <h2 class="fw-bold mb-2 text-uppercase">Profile Information</h2>

                                        <div class="col-12 form-white mb-4 mt-md-4">
                                            <div class="row py-3 text-center">
                                                <div class="col-12">
                                                    <img class="rounded-circle shadow-1-strong" src="user-image/<?php echo $user_image; ?>" alt="avatar" width="200" height="200" />
                                                </div>
                                                <div class="col-4 text-center offset-4 py-3">
                                                    <input type="file" id="typeEmailX" class="form-control form-control-lg" name="u_image" value="im"/>
                                                    <label class="col-12 form-label" for="typeEmailX">Image</label>
                                                </div>
                                            </div>
                                            <div class="row py-3">
                                                <div class="col-6">
                                                    <input type="text" id="typeEmailX" class="form-control form-control-lg" name="name" value="na"/>
                                                    <label class="col-12 form-label" for="typeEmailX">Name</label>

                                                </div>
                                                <div class="col-6">
                                                    <input type="email" id="typeEmailX" class="form-control form-control-lg" name="email" value="em"/>
                                                    <label class="col-6 form-label" for="typeEmailX">Email</label>
                                                </div>
                                                <div class="col-12">
                                                    <input type="text" id="typeEmailX" class="form-control form-control-lg" name="address" value="ad"/>
                                                    <label class="col-6 form-label" for="typeEmailX">Address</label>
                                                </div>
                                            </div>
                                        </div>

                                        <button class="btn btn-outline-light btn-lg px-5" type="submit">Save Information</button>

                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                    <br><br>

                </div>

            </div>
        </section>
    </div>
</div>

</body>
<?php include 'under.php'; ?>
    <%@include file="footer.jsp" %>

    <%@include file="js.jsp" %>
</body>
</html>