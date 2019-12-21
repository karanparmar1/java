<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="mt" uri="http://techparts.com"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<c:set var="currentUser" value="${pageContext.request.userPrincipal.name}"></c:set>

<!-- Remove "navbar-sticky" class to make navigation bar scrollable with the page.-->
<header class="site-header navbar-sticky">
	<!-- Topbar-->
	<div class="topbar d-flex justify-content-between">
		<!-- Logo-->
		<div class="site-branding d-flex">
			<a class="site-logo align-self-center" href="${path}/home">
				<img src="${path}/resources/common/img/logo_t.png" alt="TPLogo">
			</a>
		</div>
		<!-- Search / Categories-->
		<div class="search-box-wrap d-flex">
			<div class="search-box-inner align-self-center">
				<div class="search-box d-flex">
					<div class="btn-group categories-btn">
						<button class="btn btn-secondary dropdown-toggle" data-toggle="dropdown">
							<i class="icon-menu text-lg"></i>&nbsp;Categories
						</button>
						<div class="dropdown-menu mega-dropdown">
							<div class="row">
								<%-- <div class="col-sm-4">
									<a class="d-block navi-link text-center mb-30" href="${path}/shop">
										<span class="text-gray-dark">${cat.name}</span>
									</a>
								</div> --%>
								<mt:parentCategoriesOnly displayType="inNavbar" />

								<%-- <c:forEach var="cat" items="${categories}">
									<c:if test=" ${cat.name ne 'other'}">
										<div class="col-sm-4">
											<a class="d-block navi-link text-center mb-30" href="${path}/shop">
												<span class="text-gray-dark"> ${cat.name} </span>
											</a>
										</div>
									</c:if>
								</c:forEach> --%>

								<c:forEach var="cat" items="${categories}">
									<c:if test=" ${cat.name eq 'other'}">
										<div class="col-sm-4">
											<a class="d-block navi-link text-center mb-30" href="${path}/shop">
												<span class="text-gray-dark"> ${cat.name} </span>
											</a>
										</div>
									</c:if>
								</c:forEach>
							</div>

						</div>
					</div>
					<form class="input-group" method="get">
						<span class="input-group-btn">
							<button type="submit">
								<i class="icon-search"></i>
							</button>
						</span>
						<input class="form-control" type="search" placeholder="Search for anything">
					</form>
				</div>
			</div>
		</div>
		<!-- Toolbar-->
		<div class="toolbar d-flex">
			<div class="toolbar-item visible-on-mobile mobile-menu-toggle">
				<a href="#">
					<div>
						<i class="icon-menu"></i>
						<span class="text-label">Menu</span>
					</div>
				</a>
			</div>

			<c:choose>
				<c:when test="${currentUser!=null}">
					<div class="toolbar-item hidden-on-mobile">
						<a href="profile.html">
							<div>
								<i class="icon-user"></i>
								<span class="text-label">
									<strong> ${currentUser}</strong>
								</span>
							</div>
						</a>

						<div class="toolbar-dropdown text-center px-3">
							<p class="text-xs mb-3 pt-2">Account Details</p>
							<a class="btn btn-primary btn-sm btn-block" href="profile.html">Your Profile</a>
							<form method="post" id="logoutForm" action="${path}/logout">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							</form>
							<p class="text-xs text-muted mb-2">
								<a href="javascript:void(0);" onclick="document.forms['logoutForm'].submit()"> LogOut </a>
							</p>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="toolbar-item hidden-on-mobile">
						<a href="${path}/account/login">
							<div>
								<i class="icon-user"></i>
								<span class="text-label">Sign In / Up</span>
							</div>
						</a>

						<div class="toolbar-dropdown text-center px-3">
							<p class="text-xs mb-3 pt-2">Sign in to your account or register new one to have full control over your
								orders, receive bonuses and more.</p>
							<a class="btn btn-primary btn-sm btn-block" href="${path}/account/login">Sign In</a>
							<p class="text-xs text-muted mb-2">
								New customer?&nbsp;
								<a href="${path}/account/register">Register</a>
							</p>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
			<div class="toolbar-item">
				<a href="cart.html">
					<div>
						<span class="cart-icon">
							<i class="icon-shopping-cart"></i>
							<span class="count-label">3 </span>
						</span>
						<span class="text-label">Cart</span>
					</div>
				</a>
				<div class="toolbar-dropdown cart-dropdown widget-cart hidden-on-mobile">
					<!-- Entry-->
					<div class="entry">
						<div class="entry-thumb">
							<a href="shop-single.html">
								<img src="${path}/resources/user/img/shop/widget/04.jpg" alt="Product">
							</a>
						</div>
						<div class="entry-content">
							<h4 class="entry-title">
								<a href="shop-single.html">Canon EOS M50 Mirrorless Camera</a>
							</h4>
							<span class="entry-meta">1 x $910.00</span>
						</div>
						<div class="entry-delete">
							<i class="icon-x"></i>
						</div>
					</div>
					<!-- Entry-->
					<div class="entry">
						<div class="entry-thumb">
							<a  href="${path}/shop/product">
								<img src="${path}/resources/user/img/shop/widget/05.jpg" alt="Product">
							</a>
						</div>
						<div class="entry-content">
							<h4 class="entry-title">
								<a href="shop-single.html">Apple iPhone X 256 GB Space Gray</a>
							</h4>
							<span class="entry-meta">1 x $1,450.00</span>
						</div>
						<div class="entry-delete">
							<i class="icon-x"></i>
						</div>
					</div>
					<!-- Entry-->
					<div class="entry">
						<div class="entry-thumb">
							<a href="shop-single.html">
								<img src="${path}/resources/user/img/shop/widget/06.jpg" alt="Product">
							</a>
						</div>
						<div class="entry-content">
							<h4 class="entry-title">
								<a href="shop-single.html">HP LaserJet Pro Laser Printer</a>
							</h4>
							<span class="entry-meta">1 x $188.50</span>
						</div>
						<div class="entry-delete">
							<i class="icon-x"></i>
						</div>
					</div>
					<div class="text-right">
						<p class="text-gray-dark py-2 mb-0">
							<span class='text-muted'>Subtotal:</span>
							&nbsp;$2,548.50
						</p>
					</div>
					<div class="d-flex">
						<div class="pr-2 w-50">
							<a class="btn btn-secondary btn-sm btn-block mb-0" href="cart.html">Expand Cart</a>
						</div>
						<div class="pl-2 w-50">
							<a class="btn btn-primary btn-sm btn-block mb-0" href="checkout.html">Checkout</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Mobile Menu-->
		<div class="mobile-menu">
			<!-- Search Box-->
			<div class="mobile-search">
				<form class="input-group" method="get">
					<span class="input-group-btn">
						<button type="submit">
							<i class="icon-search"></i>
						</button>
					</span>
					<input class="form-control" type="search" placeholder="Search site">
				</form>
			</div>
			<!-- Toolbar-->
			<div class="toolbar">
				<div class="toolbar-item">
					<a href="#">
						<div>
							<i class="flag-icon"><img src="${path}/resources/user/img/flags/EN.png" alt="English"></i>
							<span class="text-label">Eng / Usd</span>
						</div>
					</a>
					<ul class="toolbar-dropdown lang-dropdown w-100">
						<li class="px-3 pt-1 pb-2"><select class="form-control form-control-sm">
								<option value="usd">USD</option>
								<option value="usd">EUR</option>
								<option value="usd">UKP</option>
								<option value="usd">JPY</option>
						</select></li>
						<li><a href="#">
								<i class="flag-icon"><img src="${path}/resources/user/img/flags/FR.png" alt="Français"></i>&nbsp;Français
							</a></li>
						<li><a href="#">
								<i class="flag-icon"><img src="${path}/resources/user/img/flags/DE.png" alt="Deutsch"></i>&nbsp;Deutsch
							</a></li>
						<li><a href="#">
								<i class="flag-icon"><img src="${path}/resources/user/img/flags/IT.png" alt="Italiano"></i>&nbsp;Italiano
							</a></li>
					</ul>
				</div>
				<div class="toolbar-item">
					<a href="product-comparison.html">
						<div>
							<span class="compare-icon">
								<i class="icon-repeat"></i>
								<span class="count-label">3</span>
							</span>
							<span class="text-label">Compare</span>
						</div>
					</a>
				</div>
				<c:choose>
					<c:when test="${currentUser!=null}">
						<div class="toolbar-item">
							<a href="profile.html">
								<div>
									<i class="icon-user"></i>
									<span class="text-label">My Account </span>
								</div>
							</a>
						</div>
					</c:when>
					<c:otherwise>
						<div class="toolbar-item">
							<a href="${path}/account/login">
								<div>
									<i class="icon-user"></i>
									<span class="text-label">Sign In / Up</span>
								</div>
							</a>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
			<!-- Slideable (Mobile) Menu-->
			<nav class="slideable-menu">
				<ul class="menu" data-initial-height="385">

					<li class="has-children active"><span>
							<a href="${path}/home">Home</a>
							<span class="sub-menu-toggle"></span>
						</span>
						<ul class="slideable-submenu">
							<li class="active"><a href="${path}/home">Hero Slider</a></li>
							<li><a href="home-featured-categories.html">Categories Grid</a></li>
						</ul></li>
					<li class="has-children"><span>
							<a href="${path}/shop">Shop</a>
							<span class="sub-menu-toggle"></span>
						</span>
						<ul class="slideable-submenu">
							<li><a href="shop-categories.html">Shop Categories</a></li>
							<li class="has-children"><span>
									<a href="${path}/shop">Shop Grid</a>
									<span class="sub-menu-toggle"></span>
								</span>
								<ul class="slideable-submenu">
									<li><a href="${path}/shop">Grid Left Sidebar</a></li>
									<li><a href="shop-grid-rs.html">Grid Right Sidebar</a></li>
									<li><a href="shop-grid-ns.html">Grid No Sidebar</a></li>
								</ul></li>
							<li class="has-children"><span>
									<a href="shop-list-ls.html">Shop List</a>
									<span class="sub-menu-toggle"></span>
								</span>
								<ul class="slideable-submenu">
									<li><a href="shop-list-ls.html">List Left Sidebar</a></li>
									<li><a href="shop-list-rs.html">List Right Sidebar</a></li>
									<li><a href="shop-list-ns.html">List No Sidebar</a></li>
								</ul></li>
							<li><a href="shop-single.html">Single Product</a></li>
							<li><a href="cart.html">Cart</a></li>
							<li class="has-children"><span>
									<a href="checkout-address.html">Checkout</a>
									<span class="sub-menu-toggle"></span>
								</span>
								<ul class="slideable-submenu">
									<li><a href="checkout-address.html">Address</a></li>
									<li><a href="checkout-shipping.html">Shipping</a></li>
									<li><a href="checkout-payment.html">Payment</a></li>
									<li><a href="checkout-review.html">Review</a></li>
									<li><a href="checkout-complete.html">Complete</a></li>
								</ul></li>
						</ul></li>
					<li class="has-children"><span>
							<a href="account-orders.html">Account</a>
							<span class="sub-menu-toggle"></span>
						</span>
						<ul class="slideable-submenu">
							<li><a href="javascript:void(0);" onclick="document.forms['logoutForm'].submit()"> LogOut </a></li>
							<li><a href="${path}/account/login">Login / Register</a></li>
							<li><a href="account-password-recovery.html">Password Recovery</a></li>
							<li><a href="account-orders.html">Orders List</a></li>
							<li><a href="account-wishlist.html">Wishlist</a></li>
							<li><a href="account-profile.html">Profile Page</a></li>
							<li><a href="account-address.html">Contact / Shipping Address</a></li>
							<li><a href="account-open-ticket.html">Open Ticket</a></li>
							<li><a href="account-tickets.html">My Tickets</a></li>
							<li><a href="account-single-ticket.html">Single Ticket</a></li>
						</ul></li>
					<li class="has-children"><span>
							<a href="#">Categories</a>
							<span class="sub-menu-toggle"></span>
						</span>
						<ul class="slideable-submenu">
							<mt:parentCategoriesOnly displayType="inOnlyLiTag" />
						</ul></li>


					<li class="has-children"><span>
							<a href="#">Contact Us</a>
							<span class="sub-menu-toggle"></span>
						</span>
						<ul class="slideable-submenu">
							<li><a href="about.html">About Us</a></li>
							<li><a href="contacts.html">Contacts</a></li>
							<li><a href="faq.html">Help / FAQ</a></li>
							<li><a href="product-comparison.html">Product Comparison</a></li>
							<li><a href="order-tracking.html">Order Tracking</a></li>
							<li><a href="search-results.html">Search Results</a></li>
							<li><a href="404.html">404 Not Found</a></li>
							<li><a href="coming-soon.html">Coming Soon</a></li>
							<li><a class="text-danger" href="${path}/resources/user/docs/dev-setup.html">Documentation</a></li>
						</ul></li>
					<li class="has-children"><span>
							<a href="${path}/resources/user/components/accordion.html">Components</a>
							<span class="sub-menu-toggle"></span>
						</span>
						<ul class="slideable-submenu">
							<li><a href="${path}/resources/user/components/accordion.html">Accordion</a></li>
							<li><a href="${path}/resources/user/components/alerts.html">Alerts</a></li>
							<li><a href="${path}/resources/user/components/buttons.html">Buttons</a></li>
							<li><a href="${path}/resources/user/components/cards.html">Cards</a></li>
							<li><a href="${path}/resources/user/components/carousel.html">Carousel</a></li>
							<li><a href="${path}/resources/user/components/countdown.html">Countdown</a></li>
							<li><a href="${path}/resources/user/components/forms.html">Forms</a></li>
							<li><a href="${path}/resources/user/components/gallery.html">Gallery</a></li>
							<li><a href="${path}/resources/user/components/google-maps.html">Google Maps</a></li>
							<li><a href="${path}/resources/user/components/images.html">Images &amp; Figures</a></li>
							<li><a href="${path}/resources/user/components/list-group.html">List Group</a></li>
							<li><a href="${path}/resources/user/components/market-social-buttons.html">Market &amp; Social Buttons</a></li>
							<li><a href="${path}/resources/user/components/media.html">Media Object</a></li>
							<li><a href="${path}/resources/user/components/modal.html">Modal</a></li>
							<li><a href="${path}/resources/user/components/pagination.html">Pagination</a></li>
							<li><a href="${path}/resources/user/components/pills.html">Pills</a></li>
							<li><a href="${path}/resources/user/components/progress-bars.html">Progress Bars</a></li>
							<li><a href="${path}/resources/user/components/shop-items.html">Shop Items</a></li>
							<li><a href="${path}/resources/user/components/steps.html">Steps</a></li>
							<li><a href="${path}/resources/user/components/tables.html">Tables</a></li>
							<li><a href="${path}/resources/user/components/tabs.html">Tabs</a></li>
							<li><a href="${path}/resources/user/components/team.html">Team</a></li>
							<li><a href="${path}/resources/user/components/toasts.html">Toast Notifications</a></li>
							<li><a href="${path}/resources/user/components/tooltips-popovers.html">Tooltips &amp; Popovers</a></li>
							<li><a href="${path}/resources/user/components/typography.html">Typography</a></li>
							<li><a href="${path}/resources/user/components/video-player.html">Video Player</a></li>
							<li><a href="${path}/resources/user/components/widgets.html">Widgets</a></li>
						</ul></li>
				</ul>
			</nav>
		</div>
	</div>
	<!-- Navbar-->
	<div class="navbar">
		<div class="btn-group categories-btn">
			<button class="btn btn-secondary dropdown-toggle" data-toggle="dropdown">
				<i class="icon-menu text-lg"></i>&nbsp;Categories
			</button>
			<div class="dropdown-menu mega-dropdown">
				<div class="row">
					<mt:parentCategoriesOnly displayType="inNavbar" />
				</div>
			</div>
		</div>
		<!-- Main Navigation-->
		<nav class="site-menu">
			<ul>
				<li class="has-submenu active"><a href="${path}/home">Home</a>
					<ul class="sub-menu">
						<li class="active has-children"><a href="${path}/home">Hero Slider</a>
							<ul class="sub-menu w-400 p-0 overflow-hidden">
								<li><a class="p-0" href="${path}/home">
										<img src="${path}/resources/user/img/banners/home01.jpg" alt="Hero Slider Home">
									</a></li>
							</ul></li>
						<li class="has-children"><a href="home-featured-categories.html">Categories Grid</a>
							<ul class="sub-menu w-400 p-0 overflow-hidden">
								<li><a class="p-0" href="home-featured-categories.html">
										<img src="${path}/resources/user/img/banners/home02.jpg" alt="Categories Grid Home">
									</a></li>
							</ul></li>
					</ul></li>
				<li class="has-submenu"><a href="${path}/shop">Shop</a>
					<ul class="sub-menu">
						<li><a href="shop-categories.html">Shop Categories</a></li>
						<li class="has-children"><a href="${path}/shop">Shop Grid</a>
							<ul class="sub-menu">
								<li><a href="${path}/shop">Grid Left Sidebar</a></li>
								<li><a href="shop-grid-rs.html">Grid Right Sidebar</a></li>
								<li><a href="shop-grid-ns.html">Grid No Sidebar</a></li>
							</ul></li>
						<li class="has-children"><a href="shop-list-ls.html">Shop List</a>
							<ul class="sub-menu">
								<li><a href="shop-list-ls.html">List Left Sidebar</a></li>
								<li><a href="shop-list-rs.html">List Right Sidebar</a></li>
								<li><a href="shop-list-ns.html">List No Sidebar</a></li>
							</ul></li>
						<li><a href="shop-single.html">Single Product</a></li>
						<li><a href="cart.html">Cart</a></li>
						<li class="has-children"><a href="checkout-address.html">Checkout</a>
							<ul class="sub-menu">
								<li><a href="checkout-address.html">Address</a></li>
								<li><a href="checkout-shipping.html">Shipping</a></li>
								<li><a href="checkout-payment.html">Payment</a></li>
								<li><a href="checkout-review.html">Review</a></li>
								<li><a href="checkout-complete.html">Complete</a></li>
							</ul></li>
					</ul></li>
				<li class="has-megamenu"><a href="#">Services</a></li>
				<li class="has-submenu"><a href="account-orders.html">Account</a>
					<ul class="sub-menu">
						<li><a href="${path}/account/login">Login / Register</a></li>
						<li><a href="account-password-recovery.html">Password Recovery</a></li>
						<li><a href="account-orders.html">Orders List</a></li>
						<li><a href="account-wishlist.html">Wishlist</a></li>
						<li><a href="account-profile.html">Profile Page</a></li>
						<li><a href="account-address.html">Contact / Shipping Address</a></li>
						<li><a href="account-tickets.html">My Tickets</a></li>
						<li><a href="account-single-ticket.html">Single Ticket</a></li>
					</ul></li>
				<li class="has-submenu"><a href="#">Contact Us</a></li>
				<li class="has-megamenu"><a href="${path}/about">About Us</a></li>
			</ul>
		</nav>
		<!-- Toolbar ( Put toolbar here only if you enable sticky navbar )-->
		<div class="toolbar">
			<div class="toolbar-inner">
				<!-- <div class="toolbar-item">
					<a href="product-comparison.html">
						<div>
							<span class="compare-icon">
								<i class="icon-repeat"></i>
								<span class="count-label">3</span>
							</span>
							<span class="text-label">Compare</span>
						</div>
					</a>
				</div> -->
				<div class="toolbar-item">
					<a href="cart.html">
						<div>
							<span class="cart-icon">
								<i class="icon-shopping-cart"></i>
								<span class="count-label">3 </span>
							</span>
							<span class="text-label">Cart</span>
						</div>
					</a>
					<div class="toolbar-dropdown cart-dropdown widget-cart">
						<!-- Entry-->
						<div class="entry">
							<div class="entry-thumb">
								<a href="shop-single.html">
									<img src="${path}/resources/user/img/shop/widget/04.jpg" alt="Product">
								</a>
							</div>
							<div class="entry-content">
								<h4 class="entry-title">
									<a href="shop-single.html">Canon EOS M50 Mirrorless Camera</a>
								</h4>
								<span class="entry-meta">1 x $910.00</span>
							</div>
							<div class="entry-delete">
								<i class="icon-x"></i>
							</div>
						</div>
						<!-- Entry-->
						<div class="entry">
							<div class="entry-thumb">
								<a href="shop-single.html">
									<img src="${path}/resources/user/img/shop/widget/05.jpg" alt="Product">
								</a>
							</div>
							<div class="entry-content">
								<h4 class="entry-title">
									<a href="shop-single.html">Apple iPhone X 256 GB Space Gray</a>
								</h4>
								<span class="entry-meta">1 x $1,450.00</span>
							</div>
							<div class="entry-delete">
								<i class="icon-x"></i>
							</div>
						</div>
						<!-- Entry-->
						<div class="entry">
							<div class="entry-thumb">
								<a href="shop-single.html">
									<img src="${path}/resources/user/img/shop/widget/06.jpg" alt="Product">
								</a>
							</div>
							<div class="entry-content">
								<h4 class="entry-title">
									<a href="shop-single.html">HP LaserJet Pro Laser Printer</a>
								</h4>
								<span class="entry-meta">1 x $188.50</span>
							</div>
							<div class="entry-delete">
								<i class="icon-x"></i>
							</div>
						</div>
						<div class="text-right">
							<p class="text-gray-dark py-2 mb-0">
								<span class='text-muted'>Subtotal:</span>
								&nbsp;$2,548.50
							</p>
						</div>
						<div class="d-flex">
							<div class="pr-2 w-50">
								<a class="btn btn-secondary btn-sm btn-block mb-0" href="cart.html">Expand Cart</a>
							</div>
							<div class="pl-2 w-50">
								<a class="btn btn-primary btn-sm btn-block mb-0" href="checkout.html">Checkout</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
