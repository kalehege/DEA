<!DOCTYPE html>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>
 

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Fashion Fusion |Product View</title>
<!-- Meta Tag -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name='copyright' content=''>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Title Tag  -->
<title>Fashion Fusion |Product View</title>
<!-- Favicon -->
<link rel="icon" type="image/png" href="images/favicon.png">
<!-- Web Font -->
<link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

<!-- StyleSheet -->
<%@include file="allcss.jsp" %>

</head>
<body>
    
        <c:if test="${product != null}">
        <h1>ID: <c:out value='${product.id}' /></h1>
        <h1>Name: <c:out value='${product.name}' /></h1>
        <h1>Description: <c:out value='${product.description}' /></h1>
        <h1>Size: <c:out value='${product.size}' /></h1>
        <h1>Price: <c:out value='${product.price}' /></h1>
    </c:if>

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
            <li class="active"><a href="mens.jsp">Man category</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- End Breadcrumbs -->


<h1 class='mh1'>View Product</h1>
<!-- comment -->
<div class="container mt-5" >
            <div class="row">
              <div class="col-md-6">
                <!-- Carousel to display product images -->
                <div id="productCarousel" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img src="public/images/Men/vs1.jpg" class="d-block w-100" alt="Product Image 1">
                    </div>
                    
                    <!-- Add more carousel items for additional images -->
                  </div>
                  <a class="carousel-control-prev" href="#productCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="carousel-control-next" href="#productCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
                </div>
              </div>
              <div class="col-md-6 custom-height">
                <!-- Product details -->
                <h1 class="brand-color mac">Viscose Shirt</h1>
                <p class="mt-3 mac">Introducing our Polo T-Shirt: crafted from premium cotton blend fabric for comfort and durability.</p>
                <p calss="mac">Available Colors:
                  <select id="colorSelect" class="ml-2">
                    <option value="red">Red</option>
                    <option value="blue">Blue</option>
                    <option value="green">Green</option>
                    <!-- Add more color options as needed -->
                  </select>
                </p>
                <p class="mac">Available Sizes:
                  <select id="sizeSelect" class="ml-2">
                    <option value="small">Small</option>
                    <option value="medium">Medium</option>
                    <option value="large">Large</option>
                    <!-- Add more size options as needed -->
                  </select>
                </p>
                
                <p class="mac">Quantity:
                  <input type="number" id="quantityInput" value="1" min="1" onchange="calculateTotalPrice()">
                </p>
                <p id="totalPrice" class="price">
                    price: 2500
                </p>
                <p class="mt-4 mac">
                  <button class="btn btn-primary mr-3">Add to Cart</button>
                 
                </p>
                <p class="mt-2 mac">Availability: <span id="availability" class="font-weight-bold">In Stock</span></p>
                <p>Customer Rating: <span id="rating">4.5</span></p>
              </div>
            </div>
          </div>
<!-- comment -->

    <div class="container mac2">
     <h1 class ="mh1" style="text-align: center;"> Similar Products </h1>
    <!-- First Row -->
    <div class="row justify-content-center">
        
            <div class="col-md-4">
                <div class="mcard" style="text-align: center;">
                    
                        <img src="public/images/Men/vs1.jpg" alt="Example Image">
                    </a>
                    <h3>Polo T-shirt</h3>
                    <p>Introducing our Polo T-Shirt: crafted from premium cotton blend fabric for comfort and durability. Features classic polo collar, button placket, and a tailored fit</p>
                    <h6 class="mac">Available Sizes M L XL</h6>
                    <p class="price">Rs1500</p>
                    <center>
                        <input type="button" class="btn btn-primary madd-to-cart" value="View Product">
                    </center>
                </div>
            </div>
            <div class="col-md-4">
                <div class="mcard" style="text-align: center;">
                    
                        <img src="public/images/Men/vs1.jpg" alt="Example Image" >
                    </a>
                    <h3>Polo T-shirt</h3>
                    <p>Introducing our Polo T-Shirt: crafted from premium cotton blend fabric for comfort and durability. Features classic polo collar, button placket, and a tailored fit</p>
                    <h6 class="mac">Available Sizes M L XL</h6>
                    <p class="price">Rs1500</p>
                    <center>
                        <input type="button" class="btn btn-primary madd-to-cart" value="View Product">
                    </center>
                </div>
            </div>
            <div class="col-md-4">
                <div class="mcard" style="text-align: center;">
                    
                        <img src="public/images/Men/vs1.jpg" alt="Example Image">
                    </a>
                    <h3>Polo T-shirt</h3>
                    <p>Introducing our Polo T-Shirt: crafted from premium cotton blend fabric for comfort and durability. Features classic polo collar, button placket, and a tailored fit</p>
                    <h6 class="mac">Available Sizes M L XL</h6>
                    <p class="price">Rs1500</p>
                    <center>
                        <input type="button" class="btn btn-primary madd-to-cart" value="View Product">
                    </center>
                </div>
            </div>
            
            
        
    </div>

  
</div>
<script>
function calculateTotalPrice() {
    // Get the quantity input value
    var quantity = parseInt(document.getElementById("quantityInput").value);
    
    // Define the price per unit
    var pricePerUnit = 2500;
    
    // Calculate the total price
    var totalPrice = quantity * pricePerUnit;
    
    // Update the total price display
    document.getElementById("totalPrice").textContent = "Price: " + totalPrice;
}</script>
	<!-- Start Footer Area -->
	<%@include file="footer.jsp" %>
	<!-- /End Footer Area -->


</body>
</html>
