<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<c:set var="currentUser" value="${pageContext.request.userPrincipal.name}"></c:set>
<div id="left">
	<div class="media user-media bg-dark dker">
		<div class="user-media-toggleHover">
			<span class="fa fa-user"></span>
		</div>
		<div class="user-wrapper bg-dark">
			<a class="user-link" href="#">
				<img class="media-object img-thumbnail user-img rounded-circle admin_img3" alt="User Picture"
					src="${path}/resources/admin/img/admin.jpg">
			</a>
			<p class="text-white user-info">Welcome ${currentUser}</p>
			<div class="search_bar col-lg-12">
				<div class="input-group">
					<input type="search" class="form-control" placeholder="search">
					<span class="input-group-btn">
						<button class="btn without_border" style="padding-top: 8.5px; padding-bottom: 9px;" type="button">
							<span class="fa fa-search"> </span>
						</button>
					</span>
				</div>
			</div>
		</div>
	</div>
	<!-- #menu -->
	<ul id="menu" class="bg-blue dker">
		<li class="active"><a href="${path}/admin/">
				<i class="fa fa-home"></i>
				<span class="link-title">&nbsp;Dashboard</span>
			</a></li>
		<li><a href="${path}/user/list">
				<i class="fa fa-user"></i>
				<span class="link-title">&nbsp; Users</span>
				<span class="fa arrow"></span>
			</a>
			<ul>
				<li><a href="${path}/admin/user/list">
						<i class="fa fa-angle-right"></i> &nbsp; All Users
					</a></li>
				<li><a href="${path}/admin/user/userForm">
						<i class="fa fa-angle-right"></i> &nbsp; Add User
					</a></li>
				<li><a href="view_user.html">
						<i class="fa fa-angle-right"></i> &nbsp; User Profile
					</a></li>
				<li><a href="delete_user.html">
						<i class="fa fa-angle-right"></i> &nbsp; Delete User
					</a></li>
			</ul></li>
			
			<li><a href="${path}/admin/category/">
				<i class="fa fa-indent"></i>
				<span class="link-title">&nbsp; Categories</span>
				<span class="fa arrow"></span>
			</a>
			<ul>
				<li><a href="${path}/admin/category/">
						<i class="fa fa-angle-right"></i> &nbsp; List
					</a></li>
				<li><a href="${path}/admin/category/add">
						<i class="fa fa-angle-right"></i> &nbsp; Add
					</a></li>
			</ul></li>

		<li><a href="${path}/admin/address/list">
				<i class="fa fa-location-arrow"></i>
				<span class="link-title">&nbsp; Address</span>
				<span class="fa arrow"></span>
			</a>
			<ul>
				<li><a href="${path}/admin/address/list">
						<i class="fa fa-angle-right"></i> &nbsp; AddressList
					</a></li>
				<li><a href="${path}/admin/address/addressForm">
						<i class="fa fa-angle-right"></i> &nbsp; Add Address
					</a></li>
			</ul></li>
		<li><a href="${path}/admin/onePageDashboard.jsp">
				<i class="fa fa-picture-o"> </i> &nbsp; OnePageDashborad
			</a></li>
		<li><a href="javascript:;">
				<i class="fa fa-anchor"></i>
				<span class="link-title">&nbsp; Components</span>
				<span class="fa arrow"></span>
			</a>
			<ul>
				<li><a href="general_components.html">
						<i class="fa fa-angle-right"></i> &nbsp; General Components
					</a></li>
				<li><a href="transitions.html">
						<i class="fa fa-angle-right"></i> &nbsp; Transitions
					</a></li>
				<li><a href="buttons.html">
						<i class="fa fa-angle-right"></i> &nbsp; Buttons
					</a></li>
				<li><a href="icons.html">
						<i class="fa fa-angle-right"></i> &nbsp; Icons
					</a></li>
				<li><a href="animations.html">
						<i class="fa fa-angle-right"></i> &nbsp; Animations
					</a></li>
				<li><a href="sliders.html">
						<i class="fa fa-angle-right"></i> &nbsp; Sliders
					</a></li>
				<li><a href="notifications.html">
						<i class="fa fa-angle-right"></i> &nbsp; Notifications
					</a></li>
				<li><a href="p_notify.html">
						<i class="fa fa-angle-right"></i> &nbsp; P-Notify
					</a></li>
				<li><a href="cropper.html">
						<i class="fa fa-angle-right"></i> &nbsp; Cropper
					</a></li>
				<li><a href="modal.html">
						<i class="fa fa-angle-right"></i> &nbsp; Modals
					</a></li>
				<li><a href="sortable.html">
						<i class="fa fa-angle-right"></i> &nbsp; Sortable
					</a></li>
				<li><a href="sweet_alert.html">
						<i class="fa fa-angle-right"></i> &nbsp; Sweet alerts
					</a></li>
				<li><a href="grids_layout.html">
						<i class="fa fa-angle-right"></i> &nbsp; Grid View
					</a></li>
			</ul></li>
		<li><a href="javascript:;">
				<i class="fa fa-th-large"></i>
				<span class="link-title">&nbsp; Widgets</span>
				<span class="fa arrow"></span>
			</a>
			<ul>
				<li><a href="widgets.html">
						<i class="fa fa-angle-right"></i> &nbsp; Widgets1
					</a></li>
				<li><a href="widgets2.html">
						<i class="fa fa-angle-right"></i> &nbsp; Widgets2
					</a></li>
			</ul></li>
		<li><a href="javascript:;">
				<i class="fa fa-pencil"></i>
				<span class="link-title">&nbsp; Forms</span>
				<span class="fa arrow"></span>
			</a>
			<ul>
				<li><a href="form_elements.html">
						<i class="fa fa-angle-right"></i> &nbsp; Form Elements
					</a></li>
				<li><a href="form_layouts.html">
						<i class="fa fa-angle-right"></i> &nbsp; Form Layouts
					</a></li>
				<li><a href="form_validations.html">
						<i class="fa fa-angle-right"></i> &nbsp; Form Validations
					</a></li>
				<li><a href="form_editors.html">
						<i class="fa fa-angle-right"></i> &nbsp; Form Editors
					</a></li>
				<li><a href="radio_checkbox.html">
						<i class="fa fa-angle-right"></i> &nbsp; Radio and Checkbox
					</a></li>
				<li><a href="form_wizards.html">
						<i class="fa fa-angle-right"></i> &nbsp; Wizards
					</a></li>
				<li><a href="datetime_picker.html">
						<i class="fa fa-angle-right"></i> &nbsp; Date Time Picker
					</a></li>
				<li><a href="ratings.html">
						<i class="fa fa-angle-right"></i> &nbsp; Ratings
					</a></li>
			</ul></li>
		<li><a href="#">
				<i class="fa fa-th"></i>
				<span class="link-title">&nbsp; Tables</span>
				<span class="fa arrow"></span>
			</a>
			<ul>
				<li><a href="simple_tables.html">
						<i class="fa fa-angle-right"></i> &nbsp; Simple Tables
					</a></li>
				<li><a href="datatables.html">
						<i class="fa fa-angle-right"></i> &nbsp; Data Tables
					</a></li>
				<li><a href="advanced_tables.html">
						<i class="fa fa-angle-right"></i> &nbsp; Advanced Tables
					</a></li>
			</ul></li>

		<li><a href="gallery.html">
				<i class="fa fa-picture-o"> </i> &nbsp; Gallery
			</a></li>


		<li><a href="javascript:;">
				<i class="fa fa-file"></i>
				<span class="link-title">&nbsp; Pages</span>
				<span class="fa arrow"></span>
			</a>
			<ul>
				<li><a href="404.html">
						<i class="fa fa-angle-right"></i> &nbsp; 404
					</a></li>
				<li><a href="500.html">
						<i class="fa fa-angle-right"></i> &nbsp; 500
					</a></li>
				<li><a href="login.html">
						<i class="fa fa-angle-right"></i> &nbsp; Login
					</a></li>
				<li><a href="register.html">
						<i class="fa fa-angle-right"></i> &nbsp; Register
					</a></li>
				<li><a href="lockscreen.html">
						<i class="fa fa-angle-right"></i> &nbsp; Lock Screen
					</a></li>
				<li><a href="invoice.html">
						<i class="fa fa-angle-right"></i> &nbsp; Invoice
					</a></li>
				<li><a href="blank.html">
						<i class="fa fa-angle-right"></i> &nbsp; Blank Page
					</a></li>
			</ul></li>

		<li><a href="javascript:;">
				<i class="fa fa-sitemap"></i>
				<span class="link-title">&nbsp; Multi Level Menu</span>
				<span class="fa arrow"></span>
			</a>
			<ul class="sub-menu">
				<li><a href="javascript:;">
						<i class="fa fa-angle-right"></i> &nbsp;Level 1
						<span class="fa arrow"></span>
					</a>
					<ul class="sub-menu sub-submenu">
						<li><a href="javascript:;">
								<i class="fa fa-angle-right"></i> &nbsp;Level 2
							</a></li>
						<li><a href="javascript:;">
								<i class="fa fa-angle-right"></i> &nbsp;Level 2
							</a></li>
						<li><a href="javascript:;">
								<i class="fa fa-angle-right"></i> &nbsp;Level 2
								<span class="fa arrow"></span>
							</a>
							<ul class="sub-menu sub-submenu">
								<li><a href="javascript:;">
										<i class="fa fa-angle-right"></i> &nbsp;Level 3
									</a></li>
								<li><a href="javascript:;">
										<i class="fa fa-angle-right"></i> &nbsp;Level 3
									</a></li>
								<li><a href="javascript:;">
										<i class="fa fa-angle-right"></i> &nbsp;Level 3
										<span class="fa arrow"></span>
									</a>
									<ul class="sub-menu sub-submenu">
										<li><a href="javascript:;">
												<i class="fa fa-angle-right"></i> &nbsp;Level 4
											</a></li>
										<li><a href="javascript:;">
												<i class="fa fa-angle-right"></i> &nbsp;Level 4
											</a></li>
										<li><a href="javascript:;">
												<i class="fa fa-angle-right"></i> &nbsp;Level 4
												<span class="fa arrow"></span>
											</a>
											<ul class="sub-menu sub-submenu">
												<li><a href="javascript:;">
														<i class="fa fa-angle-right"></i> &nbsp;Level 5
													</a></li>
												<li><a href="javascript:;">
														<i class="fa fa-angle-right"></i> &nbsp;Level 5
													</a></li>
												<li><a href="javascript:;">
														<i class="fa fa-angle-right"></i> &nbsp;Level 5
													</a></li>
											</ul></li>
									</ul></li>
								<li><a href="javascript:;">
										<i class="fa fa-angle-right"></i> &nbsp;Level 4
									</a></li>
							</ul></li>
						<li><a href="javascript:;">
								<i class="fa fa-angle-right"></i> &nbsp;Level 2
							</a></li>
					</ul></li>
				<li><a href="javascript:;">
						<i class="fa fa-angle-right"></i> &nbsp;Level 1
					</a></li>
				<li><a href="javascript:;">
						<i class="fa fa-angle-right"></i> &nbsp;Level 1
						<span class="fa arrow"></span>
					</a>
					<ul class="sub-menu sub-submenu">
						<li><a href="javascript:;">
								<i class="fa fa-angle-right"></i> &nbsp;Level 2
							</a></li>
						<li><a href="javascript:;">
								<i class="fa fa-angle-right"></i> &nbsp;Level 2
							</a></li>
						<li><a href="javascript:;">
								<i class="fa fa-angle-right"></i> &nbsp;Level 2
							</a></li>
					</ul></li>
			</ul></li>
	</ul>
	<!-- /#menu -->
	<!-- OLD PAGE -->
	<h2>
		<a href="${path}/user/form"> | Register</a>
		<br>
		<a href="${path}/user/login"> | Login </a>
		<br>
		<a href="${path}/user/list"> | All Users </a>
		<br>
		<a href="${path}/address/"> | Address </a>
	</h2>
	<!-- /OLD PAGE ENDS -->
</div>

