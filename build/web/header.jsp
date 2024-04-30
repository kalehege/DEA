
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header class="header shop">
		<!-- Topbar -->
		<div class="topbar">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-12 col-12">
						<!-- Top Left -->
						<div class="top-left">
							<ul class="list-main">
								<li><i class="ti-headphone-alt"></i> 077 200 2000</li>
								<li><i class="ti-email"></i> fashionfusion@gmail.com</li>
                                                    
							</ul>
						</div>
						<!--/ End Top Left -->
					</div>
					<div class="col-lg-8 col-md-12 col-12">
						<!-- Top Right -->
						<div class="right-content">
							<ul class="list-main">
                                                            <li><i class="ti-location-pin"></i> No 45 , Pitipana Road , Homagama</li>

                                                            <% if (session.getAttribute("email") != null) { %>
                                                            <li><i class="ti-user"></i> <a href="my-account">My account</a></li>
                                                            <% } else { %>
                                                            <li><i class="ti-power-off"></i><a href="sign-in">Login</a></li>                                                              
                                                            <% } %>
							</ul>
						</div>
						<!-- End Top Right -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Topbar -->
		<div class="middle-inner">
			<div class="container">
				<div class="row">
					<div class="col-lg-2 col-md-2 col-12">
						<!-- Logo -->
						<div class="logo">
                                                    <a href="home"><img src = "public/images/logo.png"></a>
						</div>
						<!--/ End Logo -->
						<!-- Search Form -->
						<div class="search-top">
							<div class="top-search"><a href="#0"><i class="ti-search"></i></a></div>
							<!-- Search Form -->
							<div class="search-top">
								<form class="search-form">
									<input type="text" placeholder="Search here..." name="search">
									<button value="search" type="submit"><i class="ti-search"></i></button>
								</form>
							</div>
							<!--/ End Search Form -->
						</div>
						<!--/ End Search Form -->
						<div class="mobile-nav"></div>
					</div>
					<div class="col-lg-8 col-md-7 col-12">
						<div class="search-bar-top">
							<div class="search-bar">
															
								<form>
									<input name="search" placeholder="Search Products Here....." type="search">
									<button class="btnn"><i class="ti-search"></i></button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-12">
						<div class="right-bar">
							<!-- Search Form -->
							<div class="sinlge-bar shopping">
                                                                <a href="view-cart" class="single-icon">My Cart <i class="ti-bag"></i> 
                                                                    <span class="total-count">
                                                                        <c:set var="cartCount" value="0" />
                                                                        <c:forEach var="cart" items="${listCart}">
                                                                            <c:set var="cartCount" value="${cartCount + 1}" />
                                                                        </c:forEach>
                                                                        <c:out value="${cartCount}" />
                                                                    </span>

                                                                </a>
								<!-- Shopping Item -->
								<div class="shopping-item">
									<div class="dropdown-cart-header">
                                                                            <c:set var="cartCount" value="0" />
                                                                            <c:forEach var="cart" items="${listCart}">
                                                                                <c:set var="cartCount" value="${cartCount + 1}" />
                                                                            </c:forEach>
										<span>Items</span>
                                                                                
										<a href="view-cart"><c:out value="${cartCount}" /> View Cart</a>
									</div>
									<ul class="shopping-list">
                                                                            <c:forEach var="cart" items="${listCart}">
                                                                                    <li>
<!--                                                                                        <a href="#" class="remove" title="Remove this item"><i class="fa fa-remove"></i></a>-->
                                                                                        <a class="cart-img" href="#"><img src="https://via.placeholder.com/70x70" alt="#"></a>
                                                                                        <h4><a href="#"><c:out value="${cart.p_name}" /></a></h4>
                                                                                        <p class="quantity">1x - <span class="amount">LKR <c:out value="${cart.p_price}" /></span></p>
                                                                                    </li>
                                                                            </c:forEach>	
									</ul>
									<div class="bottom">
										<div class="total">
											<span>Total</span>
                                                                                        <span class="total-amount">
                                                                                                <c:set var="totalPrice" value="0" />
                                                                                                <c:forEach var="cart" items="${listCart}">
                                                                                                    <c:set var="totalPrice" value="${totalPrice + cart.p_price}" />
                                                                                                </c:forEach>
                                                                                                LKR <c:out value="${totalPrice}" />
                                                                                            </span>

										</div>
                                                                            <% if (session.getAttribute("email") != null) { %>
                                                                                <a href="checkout" class="btn animate">Checkout</a>
                                                                                <% } else { %>
                                                                                <li>You need to sign-in</li>                                                              
                                                                                <% } %>
									</div>
								</div>
								<!--/ End Shopping Item -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Header Inner -->
		<div class="header-inner">
			<div class="container">
				<div class="cat-nav-head">
					<div class="row">
						
						<div class="col-lg-9 col-12">
							<div class="menu-area">
								<!-- Main Menu -->
								<nav class="navbar navbar-expand-lg">
									<div class="navbar-collapse">	
										<div class="nav-inner">	
											<ul class="nav main-menu menu navbar-nav">
												<li class="active"><a href="home">Home</a></li>
												<li><a href="all-products?category=all">Shop<i class="ti-angle-down"></i><span class="new">New</span></a>
													<ul class="dropdown">
                                                                                                            <li><a href = "all-products?category=t_shirt">T-Shirt</a></li>
														<li><a href="all-products?category=shirt">Shirt</a></li>
														<li><a href="all-products?category=trousers">Trousers</a></li>
                                                                                                                <li><a href="all-products?category=shorts">Shorts</a></li>
                                                                                                                
													</ul>
												</li>
												<li><a href="about">About Us</a></li>
												<li><a href="contact">Contact Us</a></li>
												</ul>
										</div>
									</div>
								</nav>
								<!--/ End Main Menu -->	
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/ End Header Inner -->
	</header>