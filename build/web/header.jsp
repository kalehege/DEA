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
                                                                <li><i class="ti-user"></i> <a href="#">My account</a></li>
								<% } else { %>
                                                                <li><i class="ti-power-off"></i><a href="login.jsp">Login</a></li>                                                              
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
                                                    <a href="index.jsp"><img src = "public/images/logo.png"></a>
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
								<a href="#" class="single-icon">My Cart <i class="ti-bag"></i> <span class="total-count">2</span></a>
								<!-- Shopping Item -->
								<div class="shopping-item">
									<div class="dropdown-cart-header">
										<span>2 Items</span>
										<a href="#">View Cart</a>
									</div>
									<ul class="shopping-list">
										<li>
											<a href="#" class="remove" title="Remove this item"><i class="fa fa-remove"></i></a>
											<a class="cart-img" href="#"><img src="https://via.placeholder.com/70x70" alt="#"></a>
											<h4><a href="#">Woman Ring</a></h4>
											<p class="quantity">1x - <span class="amount">LKR1000.00</span></p>
										</li>
										<li>
											<a href="#" class="remove" title="Remove this item"><i class="fa fa-remove"></i></a>
											<a class="cart-img" href="#"><img src="https://via.placeholder.com/70x70" alt="#"></a>
											<h4><a href="#">Woman Necklace</a></h4>
											<p class="quantity">1x - <span class="amount">LKR2750.00</span></p>
										</li>
									</ul>
									<div class="bottom">
										<div class="total">
											<span>Total</span>
											<span class="total-amount">LKR3750.00</span>
										</div>
										<a href="checkout.jsp" class="btn animate">Checkout</a>
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
						<div class="col-lg-3">
							<div class="all-category">
								<h3 class="cat-heading"><i class="fa fa-bars" aria-hidden="true"></i>CATEGORIES</h3>
								<ul class="main-category">
									
									<li>
									
											<li class="single-menu">
												<a href="mens.jsp" class="title-link"><B>Shop Men's</B></a>
											</li>
											<li class="single-menu">
												<a href="women.jsp" class="title-link"><b>Shop Women's</b></a>
											</li>
                                                                                        <li class="single-menu">
												<a href="accessories.jsp" class="title-link"><B>Shop Accessories</B></a>
											</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
						<div class="col-lg-9 col-12">
							<div class="menu-area">
								<!-- Main Menu -->
								<nav class="navbar navbar-expand-lg">
									<div class="navbar-collapse">	
										<div class="nav-inner">	
											<ul class="nav main-menu menu navbar-nav">
												<li class="active"><a href="index.jsp">Home</a></li>
												<!--<li><a href="#">Product</a></li>-->												
												<!--<li><a href="#">Service</a></li>-->
												<li><a href="#">Shop<i class="ti-angle-down"></i><span class="new">New</span></a>
													<ul class="dropdown">
                                                                                                            <li><a href = "view_all_product.jsp">T-Shirt</a></li>
														<li><a href="view_all_product">Shirt</a></li>
														<li><a href="view_all_product.jsp">Trousers</a></li>
                                                                                                                <li><a href="view_all_product">Shorts</a></li>
                                                                                                                
													</ul>
												</li>
												<!--<li><a href="#">Pages</a></li>-->								
												<!--<li><a href="#">Blog<i class="ti-angle-down"></i></a>
													<ul class="dropdown">
														<li><a href="blog-single-sidebar.html">Blog Single Sidebar</a></li>
													</ul>
												</li>-->
												<li><a href="about.jsp">About Us</a></li>
												<li><a href="contact.jsp">Contact Us</a></li>
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