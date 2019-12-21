
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="mt" uri="http://techparts.com"%>

<c:set var="path" value="${pageContext.request.contextPath}"></c:set>

<!-- Page Title-->
<div class="page-title py-3">
	<div class="container">
		<div class="column">
			<h1>All Products</h1>
		</div>
		<div class="column">
			<ul class="breadcrumbs">
				<li><a  href="${path}/home">Home</a></li>
				<li class="separator">&nbsp;</li>
				<li>All Products</li>
			</ul>
		</div>
	</div>
</div>

<!-- Page Content-->
<div id="shopContent">
	<div class="container padding-bottom-3x mb-1">
		<div class="row">
			<!-- Products-->
			<div class="col-lg-9 order-lg-2">
				<!-- Shop Toolbar-->
				<div class="shop-toolbar padding-bottom-1x mb-2">
					<div class="column">
						<div class="shop-sorting">
							<label for="sorting">Sort by:</label>
							<select class="form-control" id="sorting">
								<option>Popularity</option>
								<option>Low - High Price</option>
								<option>High - Low Price</option>
								<option>Average Rating</option>
								<option>A - Z Order</option>
								<option>Z - A Order</option>
								
								<%-- <c:forEach var="cat" items="${categories}">
									<option>${cat.name }</option>
								</c:forEach> --%>
							</select>
							<span class="text-muted">Showing:&nbsp;</span>
							<span>1 - 12 items</span>
						</div>
					</div>
					<div class="column">
						<div class="shop-view">
							<a class="grid-view active" href="${path}/shop">
								<span></span>
								<span></span>
								<span></span>
							</a>
							<a class="list-view gridToList" href="javascript:void(0)" onclick="gridToList()">
								<span></span>
								<span></span>
								<span></span>
							</a>
						</div>
					</div>
				</div>
				<!-- Products Grid-->
				<div class="row productList">
					<div class="col-md-4 col-sm-6">
						<div class="product-card mb-30">
							<div class="product-badge bg-danger">Sale</div>
							<a class="product-thumb" href="shop-single.html">
								<img src="${path}/resources/user/img/shop/products/01.jpg" alt="Product">
							</a>
							<div class="product-card-body">
								<div class="product-category">
									<a href="#">Smart home</a>
								</div>
								<h3 class="product-title">
									<a href="shop-single.html">Echo Dot (2nd Generation)</a>
								</h3>
								<h4 class="product-price">
									<del>$62.00</del>
									$49.99
								</h4>
							</div>
							<div class="product-button-group">
								<a class="product-button btn-wishlist" href="#">
									<i class="icon-heart"></i>
									<span>Wishlist</span>
								</a>
								<a class="product-button btn-compare" href="#">
									<i class="icon-repeat"></i>
									<span>Compare</span>
								</a>
								<a class="product-button" href="#" data-toast data-toast-type="success" data-toast-position="topRight"
									data-toast-icon="icon-check-circle" data-toast-title="Product" data-toast-message="successfuly added to cart!">
									<i class="icon-shopping-cart"></i>
									<span>To Cart</span>
								</a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="product-card mb-30">
							<div class="rating-stars">
								<i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i><i
									class="icon-star filled"></i><i class="icon-star"></i>
							</div>
							<a class="product-thumb" href="shop-single.html">
								<img src="${path}/resources/user/img/shop/products/02.jpg" alt="Product">
							</a>
							<div class="product-card-body">
								<div class="product-category">
									<a href="#">Photo cameras</a>
								</div>
								<h3 class="product-title">
									<a href="shop-single.html">Aberg Best 21 Mega Pixels</a>
								</h3>
								<h4 class="product-price">$35.00</h4>
							</div>
							<div class="product-button-group">
								<a class="product-button btn-wishlist" href="#">
									<i class="icon-heart"></i>
									<span>Wishlist</span>
								</a>
								<a class="product-button btn-compare" href="#">
									<i class="icon-repeat"></i>
									<span>Compare</span>
								</a>
								<a class="product-button" href="#" data-toast data-toast-type="success" data-toast-position="topRight"
									data-toast-icon="icon-check-circle" data-toast-title="Product" data-toast-message="successfuly added to cart!">
									<i class="icon-shopping-cart"></i>
									<span>To Cart</span>
								</a>
							</div>
						</div>
					</div>

				</div>
				<!-- Pagination-->
				<nav class="pagination">
					<div class="column">
						<ul class="pages">
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li>...</li>
							<li><a href="#">12</a></li>
						</ul>
					</div>
					<div class="column text-right hidden-xs-down">
						<a class="btn btn-outline-secondary btn-sm" href="#">
							Next&nbsp;<i class="icon-chevron-right"></i>
						</a>
					</div>
				</nav>
			</div>
			<!-- Sidebar          -->
			<div class="col-lg-3 order-lg-1">
				<div class="sidebar-toggle position-left">
					<i class="icon-filter"></i>
				</div>
				<aside class="sidebar sidebar-offcanvas position-left">
					<span class="sidebar-close">
						<i class="icon-x"></i>
					</span>
					<!-- Widget Categories-->
					<section class="widget widget-categories">
						<h3 class="widget-title">Shop Categories</h3>
					
					<mt:categoriesAndSubcategoriesList/>
					
					</section>
					<!-- Widget Price Range-->
					<section class="widget widget-categories">
						<h3 class="widget-title">Price Range</h3>
						<form class="price-range-slider" method="post" data-start-min="250" data-start-max="650" data-min="0"
							data-max="1000" data-step="1">
							<div class="ui-range-slider"></div>
							<footer class="ui-range-slider-footer">
								<div class="column">
									<button class="btn btn-outline-primary btn-sm" type="submit">Filter</button>
								</div>
								<div class="column">
									<div class="ui-range-values">
										<div class="ui-range-value-min">
											$
											<span></span>
											<input type="hidden">
										</div>
										&nbsp;-&nbsp;
										<div class="ui-range-value-max">
											$
											<span></span>
											<input type="hidden">
										</div>
									</div>
								</div>
							</footer>
						</form>
					</section>
					<!-- Widget Size Filter-->
					<section class="widget">
						<h3 class="widget-title">Filter by Price</h3>
						<div class="custom-control custom-checkbox">
							<input class="custom-control-input" type="checkbox" id="low">
							<label class="custom-control-label" for="low">
								$50 - $100L&nbsp;
								<span class="text-muted">(208)</span>
							</label>
						</div>
						<div class="custom-control custom-checkbox">
							<input class="custom-control-input" type="checkbox" id="middle">
							<label class="custom-control-label" for="middle">
								$100L - $500&nbsp;
								<span class="text-muted">(311)</span>
							</label>
						</div>
						<div class="custom-control custom-checkbox">
							<input class="custom-control-input" type="checkbox" id="high">
							<label class="custom-control-label" for="high">
								$500 - $1,000&nbsp;
								<span class="text-muted">(485)</span>
							</label>
						</div>
						<div class="custom-control custom-checkbox">
							<input class="custom-control-input" type="checkbox" id="top">
							<label class="custom-control-label" for="top">
								$1,000 - $5,000&nbsp;
								<span class="text-muted">(213)</span>
							</label>
						</div>
					</section>
					<!-- Widget Brand Filter-->
					<section class="widget">
						<h3 class="widget-title">Filter by Brand</h3>
						<div class="custom-control custom-checkbox">
							<input class="custom-control-input" type="checkbox" id="apple">
							<label class="custom-control-label" for="apple">
								Apple&nbsp;
								<span class="text-muted">(254)</span>
							</label>
						</div>
						<div class="custom-control custom-checkbox">
							<input class="custom-control-input" type="checkbox" id="bosh">
							<label class="custom-control-label" for="bosh">
								Bosh&nbsp;
								<span class="text-muted">(39)</span>
							</label>
						</div>
						<div class="custom-control custom-checkbox">
							<input class="custom-control-input" type="checkbox" id="canon">
							<label class="custom-control-label" for="canon">
								Canon Inc.&nbsp;
								<span class="text-muted">(128)</span>
							</label>
						</div>
						<div class="custom-control custom-checkbox">
							<input class="custom-control-input" type="checkbox" id="dell">
							<label class="custom-control-label" for="dell">
								Dell&nbsp;
								<span class="text-muted">(310)</span>
							</label>
						</div>
						<div class="custom-control custom-checkbox">
							<input class="custom-control-input" type="checkbox" id="hewlet">
							<label class="custom-control-label" for="hewlet">
								Hewlett-Packard&nbsp;
								<span class="text-muted">(42)</span>
							</label>
						</div>
						<div class="custom-control custom-checkbox">
							<input class="custom-control-input" type="checkbox" id="hitachi">
							<label class="custom-control-label" for="hitachi">
								Hitachi&nbsp;
								<span class="text-muted">(217)</span>
							</label>
						</div>
						<div class="custom-control custom-checkbox">
							<input class="custom-control-input" type="checkbox" id="lg">
							<label class="custom-control-label" for="lg">
								LG Electronics&nbsp;
								<span class="text-muted">(310)</span>
							</label>
						</div>
						<div class="custom-control custom-checkbox">
							<input class="custom-control-input" type="checkbox" id="panasonic">
							<label class="custom-control-label" for="panasonic">
								Panasonic&nbsp;
								<span class="text-muted">(74)</span>
							</label>
						</div>
						<div class="custom-control custom-checkbox">
							<input class="custom-control-input" type="checkbox" id="siemens">
							<label class="custom-control-label" for="siemens">
								Siemens&nbsp;
								<span class="text-muted">(86)</span>
							</label>
						</div>
					</section>
				</aside>
			</div>
		</div>
	</div>
</div>


<script>
	function gridToList() {
		document.getElementById("shopContent").innerHTML = '<div class="container padding-bottom-3x mb-1"><div class="row"><div class="col-lg-9 order-lg-2"><div class="shop-toolbar padding-bottom-1x mb-2"><div class="column"><div class="shop-sorting"> <label for="sorting">Sort by:</label> <select class="form-control" id="sorting"><option>Popularity</option><option>Low - High Price</option><option>High - Low Price</option><option>Average Rating</option><option>A - Z Order</option><option>Z - A Order</option> </select><span class="text-muted">Showing:&nbsp;</span><span>1 - 12 items</span></div></div><div class="column"><div class="shop-view"><a class="grid-view" href="${path}/shop"><span></span><span></span><span></span></a><a class="list-view active" href="shop-list-ls.html"><span></span><span></span><span></span></a></div></div></div><div class="product-card product-list mb-30"><a class="product-thumb" href="shop-single.html"><div class="product-badge bg-danger">Sale</div><img src="${path}/resources/user/img/shop/products/01.jpg" alt="Product"></a><div class="product-card-inner"><div class="product-card-body"><div class="product-category"><a href="#">Smart home</a></div><h3 class="product-title"><a href="shop-single.html">Echo Dot (2nd Generation)</a></h3><h4 class="product-price"> <del>$62.00</del>$49.99</h4><p class="text-sm text-muted hidden-xs-down my-1">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore odit officiis illo perferendis deserunt, ipsam dolor ad dolorem eaque veritatis.</p></div><div class="product-button-group"><a class="product-button btn-wishlist" href="#"><i class="icon-heart"></i><span>Wishlist</span></a><a class="product-button btn-compare" href="#"><i class="icon-repeat"></i><span>Compare</span></a><a class="product-button" href="#" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-check-circle" data-toast-title="Product" data-toast-message="successfuly added to cart!"><i class="icon-shopping-cart"></i><span>To Cart</span></a></div></div></div><div class="product-card product-list mb-30"><a class="product-thumb" href="shop-single.html"><img src="${path}/resources/user/img/shop/products/05.jpg" alt="Product"></a><div class="product-card-inner"><div class="product-card-body"><div class="rating-stars"><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star"></i></div><div class="product-category"><a href="#">Headphones</a></div><h3 class="product-title"><a href="shop-single.html">Zeus Bluetooth Headphones</a></h3><h4 class="product-price">$28.99</h4><p class="text-sm text-muted hidden-xs-down my-1">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore odit officiis illo perferendis deserunt, ipsam dolor ad dolorem eaque veritatis.</p></div><div class="product-button-group"><a class="product-button btn-wishlist" href="#"><i class="icon-heart"></i><span>Wishlist</span></a><a class="product-button btn-compare" href="#"><i class="icon-repeat"></i><span>Compare</span></a><a class="product-button" href="#" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-check-circle" data-toast-title="Product" data-toast-message="successfuly added to cart!"><i class="icon-shopping-cart"></i><span>To Cart</span></a></div></div></div><div class="product-card product-list mb-30"><a class="product-thumb" href="shop-single.html"><img src="${path}/resources/user/img/shop/products/06.jpg" alt="Product"></a><div class="product-card-inner"><div class="product-card-body"><div class="product-category"><a href="#">Video games</a></div><h3 class="product-title"><a href="shop-single.html">Xbox One S White</a></h3><h4 class="product-price">$298.99</h4><p class="text-sm text-muted hidden-xs-down my-1">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore odit officiis illo perferendis deserunt, ipsam dolor ad dolorem eaque veritatis.</p></div><div class="product-button-group"><a class="product-button btn-wishlist" href="#"><i class="icon-heart"></i><span>Wishlist</span></a><a class="product-button btn-compare" href="#"><i class="icon-repeat"></i><span>Compare</span></a><a class="product-button" href="#" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-check-circle" data-toast-title="Product" data-toast-message="successfuly added to cart!"><i class="icon-shopping-cart"></i><span>To Cart</span></a></div></div></div><div class="product-card product-list mb-30"><a class="product-thumb" href="shop-single.html"><img src="${path}/resources/user/img/shop/products/07.jpg" alt="Product"></a><div class="product-card-inner"><div class="product-card-body"><div class="rating-stars"><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i></div><div class="product-category"><a href="#">Smartphones</a></div><h3 class="product-title"><a href="shop-single.html">Samsung Galaxy S9+</a></h3><h4 class="product-price">$839.99</h4><p class="text-sm text-muted hidden-xs-down my-1">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore odit officiis illo perferendis deserunt, ipsam dolor ad dolorem eaque veritatis.</p></div><div class="product-button-group"><a class="product-button btn-wishlist" href="#"><i class="icon-heart"></i><span>Wishlist</span></a><a class="product-button btn-compare" href="#"><i class="icon-repeat"></i><span>Compare</span></a><a class="product-button" href="#" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-check-circle" data-toast-title="Product" data-toast-message="successfuly added to cart!"><i class="icon-shopping-cart"></i><span>To Cart</span></a></div></div></div><div class="product-card product-list mb-30"><a class="product-thumb" href="shop-single.html"><div class="product-badge bg-secondary border-default text-body">Out of stock</div><img src="${path}/resources/user/img/shop/products/12.jpg" alt="Product"></a><div class="product-card-inner"><div class="product-card-body"><div class="product-category"><a href="#">Wearable electornics</a></div><h3 class="product-title"><a href="shop-single.html">Apple Watch Series 3</a></h3><h4 class="product-price">$329.10</h4><p class="text-sm text-muted hidden-xs-down my-1">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore odit officiis illo perferendis deserunt, ipsam dolor ad dolorem eaque veritatis.</p></div><div class="product-button-group"><a class="product-button btn-wishlist" href="#"><i class="icon-heart"></i><span>Wishlist</span></a><a class="product-button btn-compare" href="#"><i class="icon-repeat"></i><span>Compare</span></a><a class="product-button" href="shop-single.html"><i class="icon-arrow-right"></i><span>Details</span></a></div></div></div><div class="product-card product-list mb-30"><a class="product-thumb" href="shop-single.html"><img src="${path}/resources/user/img/shop/products/08.jpg" alt="Product"></a><div class="product-card-inner"><div class="product-card-body"><div class="product-category"><a href="#">TV, Video &amp; Audio</a></div><h3 class="product-title"><a href="shop-single.html">Sony 55-Inch 4K Smart TV</a></h3><h4 class="product-price">$1,195.00</h4><p class="text-sm text-muted hidden-xs-down my-1">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore odit officiis illo perferendis deserunt, ipsam dolor ad dolorem eaque veritatis.</p></div><div class="product-button-group"><a class="product-button btn-wishlist" href="#"><i class="icon-heart"></i><span>Wishlist</span></a><a class="product-button btn-compare" href="#"><i class="icon-repeat"></i><span>Compare</span></a><a class="product-button" href="#" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-check-circle" data-toast-title="Product" data-toast-message="successfuly added to cart!"><i class="icon-shopping-cart"></i><span>To Cart</span></a></div></div></div><div class="product-card product-list mb-30"><a class="product-thumb" href="shop-single.html"><div class="product-badge bg-danger">Sale</div><img src="${path}/resources/user/img/shop/products/09.jpg" alt="Product"></a><div class="product-card-inner"><div class="product-card-body"><div class="product-category"><a href="#">Action cameras</a></div><h3 class="product-title"><a href="shop-single.html">Samsung Gear 360 Camera</a></h3><h4 class="product-price"> <del>$74.00</del>$68.00</h4><p class="text-sm text-muted hidden-xs-down my-1">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore odit officiis illo perferendis deserunt, ipsam dolor ad dolorem eaque veritatis.</p></div><div class="product-button-group"><a class="product-button btn-wishlist" href="#"><i class="icon-heart"></i><span>Wishlist</span></a><a class="product-button btn-compare" href="#"><i class="icon-repeat"></i><span>Compare</span></a><a class="product-button" href="#" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-check-circle" data-toast-title="Product" data-toast-message="successfuly added to cart!"><i class="icon-shopping-cart"></i><span>To Cart</span></a></div></div></div><div class="product-card product-list mb-30"><a class="product-thumb" href="shop-single.html"><img src="${path}/resources/user/img/shop/products/10.jpg" alt="Product"></a><div class="product-card-inner"><div class="product-card-body"><div class="rating-stars"><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star"></i></div><div class="product-category"><a href="#">Printers &amp; Ink</a></div><h3 class="product-title"><a href="shop-single.html">HP LaserJet Pro Printer</a></h3><h4 class="product-price">$249.50</h4><p class="text-sm text-muted hidden-xs-down my-1">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore odit officiis illo perferendis deserunt, ipsam dolor ad dolorem eaque veritatis.</p></div><div class="product-button-group"><a class="product-button btn-wishlist" href="#"><i class="icon-heart"></i><span>Wishlist</span></a><a class="product-button btn-compare" href="#"><i class="icon-repeat"></i><span>Compare</span></a><a class="product-button" href="#" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-check-circle" data-toast-title="Product" data-toast-message="successfuly added to cart!"><i class="icon-shopping-cart"></i><span>To Cart</span></a></div></div></div><div class="product-card product-list mb-30"><a class="product-thumb" href="shop-single.html"><img src="${path}/resources/user/img/shop/products/11.jpg" alt="Product"></a><div class="product-card-inner"><div class="product-card-body"><div class="rating-stars"><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star filled"></i><i class="icon-star"></i><i class="icon-star"></i></div><div class="product-category"><a href="#">Headphones</a></div><h3 class="product-title"><a href="shop-single.html">Edifier W855BT Bluetooth</a></h3><h4 class="product-price">$99.75</h4><p class="text-sm text-muted hidden-xs-down my-1">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore odit officiis illo perferendis deserunt, ipsam dolor ad dolorem eaque veritatis.</p></div><div class="product-button-group"><a class="product-button btn-wishlist" href="#"><i class="icon-heart"></i><span>Wishlist</span></a><a class="product-button btn-compare" href="#"><i class="icon-repeat"></i><span>Compare</span></a><a class="product-button" href="#" data-toast data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-check-circle" data-toast-title="Product" data-toast-message="successfuly added to cart!"><i class="icon-shopping-cart"></i><span>To Cart</span></a></div></div></div> <nav class="pagination"><div class="column"><ul class="pages"><li class="active"><a href="#">1</a></li><li><a href="#">2</a></li><li><a href="#">3</a></li><li><a href="#">4</a></li><li>...</li><li><a href="#">12</a></li></ul></div><div class="column text-right hidden-xs-down"><a class="btn btn-outline-secondary btn-sm" href="#">Next&nbsp;<i class="icon-chevron-right"></i></a></div> </nav></div><div class="col-lg-3 order-lg-1"><div class="sidebar-toggle position-left"><i class="icon-filter"></i></div> <aside class="sidebar sidebar-offcanvas position-left"><span class="sidebar-close"><i class="icon-x"></i></span> <section class="widget widget-categories"><h3 class="widget-title">Shop Categories</h3><ul><li class="has-children expanded"><a href="#">Computers &amp; Accessories</a><span>(1138)</span><ul><li><a href="#">Desktop PCs</a><span>(508)</span><ul><li><a href="#">Office PC</a></li><li><a href="#">Gaming PC</a></li><li><a href="#">PC for Learning</a></li></ul></li><li><a href="#">Laptops</a><span>(423)</span><ul><li><a href="#">15 Screens </a></li><li><a href="#">13 Screens</a></li><li><a href="#">Touch Screens</a></li></ul></li><li><a href="#">Nettops</a><span>(97)</span></li><li><a href="#">PC Accessories</a><span>(110)</span></li></ul></li><li class="has-children"><a href="#">Smartphones &amp; Tablets</a><span>(2356)</span><ul><li><a href="#">Smartphones</a><span>(1032)</span><ul><li><a href="#">Android</a></li><li><a href="#">iOS</a></li><li><a href="#">QHD Screen</a></li><li><a href="#">WQHD Screen</a></li><li><a href="#">Full HD Screen</a></li><li><a href="#">Super Amoled</a></li></ul></li><li><a href="#">Tablets</a><span>(937)</span><ul><li><a href="#">Wifi only</a></li><li><a href="#">Wifi + 3G</a></li><li><a href="#">Android</a></li><li><a href="#">iOS</a></li></ul></li><li><a href="#">Phablets</a><span>(386)</span></li></ul></li><li class="has-children"><a href="#">TV, Video &amp; Audio</a><span>(420)</span><ul><li><a href="#">Smart TV Sets</a><span>(180)</span></li><li><a href="#">Blue-Ray Players</a><span>(132)</span></li><li><a href="#">Sound Systems</a><span>(47)</span></li><li><a href="#">Home Theaters</a><span>(61)</span></li></ul></li><li class="has-children"><a href="#">Cameras, Photo &amp; Video</a><span>(874)</span><ul><li><a href="#">Photo Cameras</a><span>(211)</span></li><li><a href="#">Video Cameras</a><span>(195)</span></li><li><a href="#">Action Cameras</a><span>(159)</span></li><li><a href="#">Tripods &amp; Stands</a><span>(203)</span></li><li><a href="#">Lenses</a><span>(106)</span></li></ul></li><li class="has-children"><a href="#">Headphones</a><span>(1239)</span><ul><li><a href="#">Earbud Headphones</a><span>(752)</span></li><li><a href="#">Over-Ear Headphones</a><span>(487)</span></li><li><a href="#">Bluetooth Headphones</a><span>(205)</span></li><li><a href="#">Sports &amp; Fitness Headphones</a><span>(96)</span></li><li><a href="#">Noise-Cancelling Headphones</a><span>(113)</span></li></ul></li><li class="has-children"><a href="#">Wearable Electronics</a><span>(340)</span><ul><li><a href="#">Smart Watches</a><span>(175)</span></li><li><a href="#">Fitness Trackers</a><span>(123)</span></li><li><a href="#">Smart Glasses</a><span>(42)</span></li></ul></li><li class="has-children"><a href="#">Printers &amp; Ink</a><span>(512)</span><ul><li><a href="#">All-In-One</a><span>(304)</span></li><li><a href="#">Copying</a><span>(115)</span></li><li><a href="#">Faxing</a><span>(211)</span></li><li><a href="#">Photo Printing</a><span>(68)</span></li><li><a href="#">Printing Only</a><span>(143)</span></li><li><a href="#">Scanning</a><span>(122)</span></li></ul></li><li class="has-children"><a href="#">Video Games</a><span>(656)</span><ul><li><a href="#">PlayStation 4</a><span>(100)</span></li><li><a href="#">Xbox One</a><span>(92)</span></li><li><a href="#">Nintendo Switch</a><span>(19)</span></li><li><a href="#">Games</a><span>(397)</span></li><li><a href="#">Accessories</a><span>(48)</span></li></ul></li></ul> </section> <section class="widget widget-categories"><h3 class="widget-title">Price Range</h3><form class="price-range-slider" method="post" data-start-min="250" data-start-max="650" data-min="0" data-max="1000" data-step="1"><div class="ui-range-slider"></div> <footer class="ui-range-slider-footer"><div class="column"> <button class="btn btn-outline-primary btn-sm" type="submit">Filter</button></div><div class="column"><div class="ui-range-values"><div class="ui-range-value-min">$<span></span> <input type="hidden"></div>&nbsp;-&nbsp;<div class="ui-range-value-max">$<span></span> <input type="hidden"></div></div></div> </footer></form> </section> <section class="widget"><h3 class="widget-title">Filter by Price</h3><div class="custom-control custom-checkbox"> <input class="custom-control-input" type="checkbox" id="low"> <label class="custom-control-label" for="low">$50 - $100L&nbsp;<span class="text-muted">(208)</span></label></div><div class="custom-control custom-checkbox"> <input class="custom-control-input" type="checkbox" id="middle"> <label class="custom-control-label" for="middle">$100L - $500&nbsp;<span class="text-muted">(311)</span></label></div><div class="custom-control custom-checkbox"> <input class="custom-control-input" type="checkbox" id="high"> <label class="custom-control-label" for="high">$500 - $1,000&nbsp;<span class="text-muted">(485)</span></label></div><div class="custom-control custom-checkbox"> <input class="custom-control-input" type="checkbox" id="top"> <label class="custom-control-label" for="top">$1,000 - $5,000&nbsp;<span class="text-muted">(213)</span></label></div> </section> <section class="widget"><h3 class="widget-title">Filter by Brand</h3><div class="custom-control custom-checkbox"> <input class="custom-control-input" type="checkbox" id="apple"> <label class="custom-control-label" for="apple">Apple&nbsp;<span class="text-muted">(254)</span></label></div><div class="custom-control custom-checkbox"> <input class="custom-control-input" type="checkbox" id="bosh"> <label class="custom-control-label" for="bosh">Bosh&nbsp;<span class="text-muted">(39)</span></label></div><div class="custom-control custom-checkbox"> <input class="custom-control-input" type="checkbox" id="canon"> <label class="custom-control-label" for="canon">Canon Inc.&nbsp;<span class="text-muted">(128)</span></label></div><div class="custom-control custom-checkbox"> <input class="custom-control-input" type="checkbox" id="dell"> <label class="custom-control-label" for="dell">Dell&nbsp;<span class="text-muted">(310)</span></label></div><div class="custom-control custom-checkbox"> <input class="custom-control-input" type="checkbox" id="hewlet"> <label class="custom-control-label" for="hewlet">Hewlett-Packard&nbsp;<span class="text-muted">(42)</span></label></div><div class="custom-control custom-checkbox"> <input class="custom-control-input" type="checkbox" id="hitachi"> <label class="custom-control-label" for="hitachi">Hitachi&nbsp;<span class="text-muted">(217)</span></label></div><div class="custom-control custom-checkbox"> <input class="custom-control-input" type="checkbox" id="lg"> <label class="custom-control-label" for="lg">LG Electronics&nbsp;<span class="text-muted">(310)</span></label></div><div class="custom-control custom-checkbox"> <input class="custom-control-input" type="checkbox" id="panasonic"> <label class="custom-control-label" for="panasonic">Panasonic&nbsp;<span class="text-muted">(74)</span></label></div><div class="custom-control custom-checkbox"> <input class="custom-control-input" type="checkbox" id="siemens"> <label class="custom-control-label" for="siemens">Siemens&nbsp;<span class="text-muted">(86)</span></label></div> </section> </aside></div></div></div>';
	}
</script>
