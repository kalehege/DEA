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
            <li><a href="index">Home<i class="ti-arrow-right"></i></a></li>
            <li class="active"><a href="all-products">Man category</a></li>
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
                   
                <c:if test="${product != null}">
              <div class="col-md-6 custom-height">
                <!-- Product details -->
                <h1 class="brand-color mac"><c:out value='${product.name}' /></h1>
                <p class="mt-3 mac"><c:out value='${product.description}' /></p>
                
                <p id="totalPrice" class="price">
                    price:LKR <c:out value='${product.price}' />
                </p>
                <p class="mt-4 mac">
                                   <center>
                        <form action="cart" method="post">
                               
                            <input type="hidden" value="<c:out value="${product.name}" />" name="p_name">
                            <input type="hidden" value="<c:out value="${product.description}" />" name="p_description">
                            <input type="hidden" value="<c:out value="${product.price}" />" name="p_price">  
                            <input type="hidden" value="<c:out value="${product.size}" />" name="p_size">
                            <input type="hidden" value="<c:out value="${product.category}" />" name="p_category">
                            <input type="hidden" value="<%= session.getAttribute("email") %>" name="customer_email">                 

                            <input type="submit" class="btn btn-primary mr-3"" value="Add to cart">

                        </form>
                    </center>
                 
                </p>
                <p class="mt-2 mac">Availability: <span id="availability" class="font-weight-bold">In Stock</span></p>
                <p>Customer Rating: <span id="rating">4.5</span></p>
              </div>
                  </c:if>
            </div>
          </div>
<!-- comment -->

    <div class="container mac2">
     <h1 class ="mh1" style="text-align: center;"> Similar Products </h1>
    <!-- First Row -->
    <div class="row justify-content-center">
                                                
        <c:forEach var="product" items="${listProduct}" varStatus="loop">
                                            
            <c:if test="${loop.index < 3}">
            <div class="col-md-4">
                <div class="mcard" style="text-align: center;">
                    
                        <img src="public/images/Men/vs1.jpg" alt="Example Image">
                    </a>
                    <h3><c:out value='${product.name}' /></h3>
                    <p><c:out value='${product.description}' /></p>
                    <h6 class="mac"><c:out value='${product.size}' /></h6>
                    <p class="price">Rs <c:out value='${product.price}' /></p>
                    <center>
                        <form action="cart" method="post">
                               
                            <input type="hidden" value="<c:out value="${product.name}" />" name="p_name">
                            <input type="hidden" value="<c:out value="${product.description}" />" name="p_description">
                            <input type="hidden" value="<c:out value="${product.price}" />" name="p_price">  
                            <input type="hidden" value="<c:out value="${product.size}" />" name="p_size">
                            <input type="hidden" value="<c:out value="${product.category}" />" name="p_category">
                            <input type="hidden" value="<%= session.getAttribute("email") %>" name="customer_email">                 

                            <input type="submit" class="btn btn-primary madd-to-cart" value="Add to cart">

                        </form>
                    </center>
                </div>
            </div>                                  
            </c:if>                   
        </c:forEach>
    </div>

  
</div>
	<!-- Start Footer Area -->
	<%@include file="footer.jsp" %>
	<!-- /End Footer Area -->


</body>
</html>
