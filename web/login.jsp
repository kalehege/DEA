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
	<%@include file="header2.jsp" %>
	
	<!-- Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="bread-inner">
						<ul class="bread-list">
							<li><a href="index1.html">Home<i class="ti-arrow-right"></i></a></li>
							<li class="active"><a href="login.html">Login</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
    <div class="lcontainer">
        <div class="login-container">
            <h2>LOGIN</h2>
            <br>

            <form id="login-form" action="login.php" method="POST">
                <div class="input-group">
                    <table>
                    <tr>
                        <td><label for="username">Username &nbsp;</label></td>
                        <td><input type="text" id="username" name="username" required></td>
                    </tr>

                    <tr>
                        <td><label for="password">Password</label></td>
                        <td><input type="password" id="password" name="password" required></td>
                    </tr>
                
                </table>
                </div>
                <button type="submit">Login</button>
            </form>
            <p>Don't have an account? <a href="signup2.jsp">Create one</a></p>
        </div>
    </div>

    <!-- Start Footer Area -->
	        <%@include file="footer.jsp" %>

		
	
 
	<!-- Jquery -->
   <%@include file="js.jsp" %>
</body>
</html>