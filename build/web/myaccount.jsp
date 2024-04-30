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
                    <a class="btn btn-danger" href="logout.php">Logout</a>
                </div>
                <div class="scontainer">
                                       
                    <h1>Add cards</h1>
                    <a class="btn btn-danger" href="logout.php">Select</a>
                </div>
                <div class="scontainer">

    <h2>Add Visa Card</h2>
    <form action="process_card.php" method="POST">
        <label for="card_number">Card Number:</label><br>
        <input type="text" id="card_number" name="card_number" required><br><br>
        
        <label for="expiry_date">Expiry Date:</label><br>
        <input type="text" id="expiry_date" name="expiry_date" placeholder="MM/YY" required><br><br>
        
        <label for="cvv">CVV:</label><br>
        <input type="text" id="cvv" name="cvv" required><br><br>
        
        <input type="submit" value="Add Card">
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



