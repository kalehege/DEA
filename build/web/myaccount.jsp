<!DOCTYPE html>
<html lang="zxx">
<head>
    <!-- Meta Tag -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title Tag -->
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
    <!--/ End Slider Area -->
    <!-- Profile Information Section -->
    <section class="vh-100 py-3 gradient-custom">
        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="container col-12 align-content-center text-center">
                                        
                    <h1>User Profile</h1>
                    <a class="btn btn-danger" href="logout">Logout</a>
                    
                <c:if test="${customer.u_type == 'admin'}">
                    <a class="btn btn-danger" href="admin">Admin</a>
                </c:if>


                </div>
                <div class="scontainer">
                                       
                    <form action="register" method="post">
                        <div class="form-group">
                          <label for="f_name">First Name:</label>
                        <input type="text" id="f_name" name="f_name" value="${customer.f_name}" required>
                        </div>

                        <div class="form-group">     
                          <label for="l_name">Last Name:</label>
                          <input type="text" id="l_name" name="l_name" value="${customer.l_name}" required>
                        </div>
                        <div class="form-group">
                          <label for="email">Email</label>
                          <input type="text" id="email" name="email" value="${customer.email}" required>
                        </div>
                        <div class="form-group">
                          <label for="dob">Birthday:</label>
                          <input type="date" id="dob" name="dob" value="${customer.dob}" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="text" id="password" name="password" required>
                        </div>
                      <button type="submit">Edit Profile Data</button>
                    </form>
      </div>
            </div>
        </div>
    </section>
    <!-- End Profile Information Section -->
    <!-- Footer -->
    <%@include file="footer.jsp" %>
    <%@include file="js.jsp" %>
</body>
</html>



