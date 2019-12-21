<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="mt" uri="http://techparts.com"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>

<footer class="site-footer" style="background-image: url(${path}/resources/user/img/footer-bg.png);">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<!-- Categories-->
				<section class="widget widget-links widget-light-skin">
					<h3 class="widget-title">Shop Departments</h3>
					<div class="row">

						<c:forEach var="cat" items="${categories}">
							<div class="col-md-6">
								<ul>
									<li><a href="#">${cat.name}</a></li>
								</ul>
							</div>
						</c:forEach>
						<%-- <mt:parentCategoriesOnly displayType="inFooter"/> --%>

					</div>
				</section>
			</div>
			<div class="col-lg-3 col-md-6">
				<!-- About Us-->
				<section class="widget widget-links widget-light-skin">
					<h3 class="widget-title">About Us</h3>
					<ul>
						<li><a href="#">Careers</a></li>
						<li><a href="#">About Unishop</a></li>
						<li><a href="#">Our Story</a></li>
						<li><a href="#">Services</a></li>
						<li><a href="#">Our Blog</a></li>
						<li><a href="#">Contacts</a></li>
					</ul>
				</section>
			</div>
			<div class="col-lg-3 col-md-6">
				<!-- Account / Shipping Info-->
				<section class="widget widget-links widget-light-skin">
					<h3 class="widget-title">Account &amp; Shipping Info</h3>
					<ul>
						<li><a href="#">My Account</a></li>
						<li><a href="#">Shipping Rates & Policies</a></li>
						<li><a href="#">Refunds & Replacements</a></li>
						<li><a href="#">Taxes</a></li>
						<li><a href="#">Delivery Info</a></li>
						<li><a href="#">Affiliate Program</a></li>
					</ul>
				</section>
			</div>
		</div>
		<hr class="hr-light mt-2 margin-bottom-2x hidden-md-down">
		<div class="row">
			<div class="col-lg-3 col-md-6">
				<!-- Contact Info-->
				<section class="widget widget-light-skin">
					<h3 class="widget-title">Get In Touch With Us</h3>
					<p class="text-white">Phone: +1 (900) 33 169 7720</p>
					<ul class="list-unstyled text-sm text-white">
						<li><span class="opacity-50">Monday-Friday:&nbsp;</span>9.00 am - 8.00 pm</li>
						<li><span class="opacity-50">Saturday:&nbsp;</span>10.00 am - 6.00 pm</li>
					</ul>
					<p>
						<a class="navi-link-light" href="#">support@unishop.com</a>
					</p>
					<a class="social-button shape-circle sb-facebook sb-light-skin" href="#">
						<i class="socicon-facebook"></i>
					</a>
					<a class="social-button shape-circle sb-twitter sb-light-skin" href="#">
						<i class="socicon-twitter"></i>
					</a>
					<a class="social-button shape-circle sb-instagram sb-light-skin" href="#">
						<i class="socicon-instagram"></i>
					</a>
					<a class="social-button shape-circle sb-google-plus sb-light-skin" href="#">
						<i class="socicon-googleplus"></i>
					</a>
				</section>
			</div>

			<div class="col-lg-6">

				<c:choose>
					<c:when test="${currentUser!=null}">
						<div class="col-sm-3">
							<a href="javascript:void(0);" onclick="document.forms['logoutForm'].submit()"
								class="btn btn-primary btn-block mt-0"> LogOut </a>
						</div>
					</c:when>
					<c:otherwise>
						<div class="col-sm-3">
							<a href="${path}/account/login" class="btn btn-primary btn-block mt-0"> LogIn </a>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<!-- Copyright-->
		<p class="footer-copyright">© All rights reserved.</p>
	</div>
</footer>
