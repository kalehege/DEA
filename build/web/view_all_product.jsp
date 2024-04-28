<!DOCTYPE html>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>
 

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Fashion Fusion |Man category</title>
<!-- Meta Tag -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name='copyright' content=''>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Title Tag  -->
<title>Fashion Fusion | Men</title>
<!-- Favicon -->
<link rel="icon" type="image/png" href="images/favicon.png">
<!-- Web Font -->
<link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

<!-- StyleSheet -->
<%@include file="allcss.jsp" %>

</head>
<body>

<!-- Header -->
 <%@include file="header2.jsp" %>
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


<h1 class='mh1'>Men's Wear</h1>
    <div class="container">
    <!-- First Row -->
    <div class="row">
        <c:forEach var="product" items="${listProduct}">
        <div class="col-md-4">
            <div class="mcard" style="text-align: center;">
                <img src="public/images/Men/vs1.jpg" alt="Example Image" >
                <h3><c:out value="${product.name}" /></h3>
                <p><c:out value="${product.description}" /></p>
                <p><c:out value="${product.size}" /></p>
                <p class="price">Rs <c:out value="${product.price}" /></p>
                <center>
                    <input type="button" class="btn btn-primary madd-to-cart" value="Add to cart">
                </center>
            </div>
        </div> 
        </c:forEach>
    </div>
  
</div>


	<!-- Start Footer Area -->
	<%@include file="footer.jsp" %>
	<!-- /End Footer Area -->


</body>
</html>

