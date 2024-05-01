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
                                        
                    <h1>Add Your Cards</h1>
                    
                </div>
                <div class="scontainer">

                    <h2 class="mac">Add Visa Card</h2>
                    
                <form action="process_card.php" method="POST">
                    <label for="card_type">Card Type:</label><br>
                    <input type="radio" id="visa" name="card_type" value="visa" required>
                    <label for="visa"><img src="public/images/visa2.png" alt="Visa Logo"></label>
                    <input type="radio" id="mastercard" name="card_type" value="mastercard" required>
                    <label for="mastercard"><img src="public/images/master.png" alt="Mastercard Logo"></label><br><br>

                    <label for="card_number">Card number:</label><br>
                    <input type="text" id="card_number" name="card_number" required><br><br>

                    <label for="card_holder">Name on card:</label><br>
                    <input type="text" id="card_holder" name="card_holder" required><br><br>

                    <label for="expiry_date">Expiry Date MM/YY:</label><br>
                    <input type="text" id="expiry_date" name="expiry_date" placeholder="MM/YY" required><br><br>

                    <label for="cvv">CVV:</label><br>
                    <input type="text" id="cvv" name="cvv" required><br><br>

                    <center><input type="submit" class="btn btn-danger" value="Save"></center>
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
