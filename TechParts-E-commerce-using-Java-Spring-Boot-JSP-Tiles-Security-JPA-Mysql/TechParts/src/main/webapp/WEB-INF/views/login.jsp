<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<c:set var="currentUser" value="${pageContext.request.userPrincipal.name}"></c:set>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Login | TechParts</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon" href="${path}/resources/common/img/logo.png" />
<!--Global styles -->

<link type="text/css" rel="stylesheet" href="${path}/resources/common/css/components.css" />
<link type="text/css" rel="stylesheet" href="${path}/resources/common/css/adminCustom.css" />
<!--End of Global styles -->
<!--Plugin styles-->
<link type="text/css" rel="stylesheet" href="${path}/resources/common/css/bootstrapValidator.min.css" />
<link type="text/css" rel="stylesheet" href='<c:url value="/resources/common/css/animate.css" />' />
<!--End of Plugin styles-->
<link type="text/css" rel="stylesheet" href='<c:url value="/resources/common/css/login.css" />' />
</head>

<body>
	<div id="top">
		<!-- .navbar -->
		<nav class="navbar navbar-static-top">
			<div class="container-fluid">
				<a class="navbar-brand text-xs-center" href="${path}/">
					<h4 class="text-white">
						<img src="${path}/resources/common/img/logow.png" class="admin_img mx-1" style="margin-top: 1px;" alt="logo">
						TECHPARTS
					</h4>
				</a>


				<!-- Nav Content -->
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="topnav btn dropdown-menu-right float-xs-right">
					<div class="btn-group">
						<div class="user-settings no-bg m-t-5">
							<button type="button" class="btn btn-default no-bg micheal_btn" data-toggle="dropdown">
								<span class="toggle-right" id="menu-toggle">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<i class="fa fa-bars text-white"></i>
								</span>
							</button>

							<div class="dropdown-menu admire_admin">
								<a class="dropdown-item" href="${path}/home">
									<i class="fa fa-home"></i> HOME
								</a>
								<a class="dropdown-item" href="${path}/shop">
									<i class="fa fa-shopping-bag"></i> SHOP

								</a>
								<a class="dropdown-item" href="${path}/signup">
									<i class="fa fa-envelope"></i> Create New Account
								</a>
								<a class="dropdown-item" href="${path}/login">
									<i class="fa fa-sign-out"></i> LOG IN
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="collapse navbar-toggleable-sm col-xl-6 col-lg-6 hidden-md-down float-xl-right  top_menu"
					id="nav-content">
					<ul class="nav navbar-nav top_menubar">
						<li class="nav-item"><a class="nav-link text-white" href="${path}/home">
								<i class="fa fa-inbox"></i>
								<span class="quick_text">Home</span>
							</a></li>
						<li class="nav-item"><a class="nav-link text-white" href="${path}/shop">
								<i class="fa fa fa-shopping-bag"></i>
								<span class="quick_text">Shop</span>
							</a></li>
						<li class="nav-item"><a class="nav-link text-white" href="${path}/signup">
								<i class="fa fa-edit"></i>
								<span class="quick_text">Sign UP</span>
							</a></li>

					</ul>
				</div>
			</div>

			<!-- /.container-fluid -->
		</nav>
		<!-- /.navbar -->
		<!-- /.head -->
	</div>

	<div class="container wow fadeInDown" data-wow-delay="0.1s" data-wow-duration="2s">
		<div class="row">
			<div class="col-lg-8 push-lg-2 col-md-10 push-md-1 col-sm-10 push-sm-1 login_top_bottom mt-2 mb-2">
				<div class="row">
					<div class="col-lg-8 push-lg-2 col-md-10 push-md-1 col-sm-12">

						<div class="card login_logo login_border_radius1 mt-2 mb-2">
							<h3 class="text-xs-center pt-2">
								<img src="${path}/resources/common/img/logow.png" alt="TP logo" class="admire_logo mr-1">
								<span class="text-white"> USER &nbsp; LOG IN </span>
							</h3>
						</div>

						<div class="card bg-white login_content login_border_radius">

							<form action="${path}/account/login" method="post" id="_login_validator" class="form-signin">

								<c:if test="${message!=null}">
									<div class="alert alert-success alert-dismissable">
										<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&#10006;</button>
										<strong> ${message}</strong>

									</div>
								</c:if>
								<c:if test="${error!=null}">
									<div class="alert alert-danger alert-dismissable">
										<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&#10006;</button>
										<h4 class="text-white my-0">
											<strong>${error}</strong>
										</h4>

									</div>
								</c:if>

								<div class="form-group">
									<label for="email" class="form-control-label">Email</label>
									<div class="input-group">
										<span class="input-group-addon input_email">
											<i class="fa fa-envelope text-primary"></i>
										</span>
										<input type="text" class="card form-control form-control-lg" id="email" name="username"
											placeholder="ENTER Email" autofocus="autofocus">
									</div>
								</div>
								<!--</h3>-->
								<div class="form-group">
									<label for="password" class="form-control-label">Password</label>
									<div class="input-group">
										<span class="input-group-addon addon_password">
											<i class="fa fa-lock text-primary"></i>
										</span>
										<input type="password" class="card form-control form-control-lg" id="password" name="password"
											placeholder="Enter Password">
									</div>
								</div>
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
								<div class="form-group">
									<div class="row">
										<div class="col-lg-12 m-t-20">
											<button type="submit" class=" card bg-primary btn btn-primary btn-block btn-lg login_button">
												<i class="fa fa-sign-in" aria-hidden="true"></i> <Strong>&nbsp; LOG IN</Strong>
											</button>
										</div>
									</div>
								</div>

								<div class="form-group">
									<div class="row">
										<div class="col-xs-6">
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input form-control" name="remember-me" id="remember-me">
												<span class="custom-control-indicator"></span>
												<a class="custom-control-description">Remember me?</a>
											</label>
										</div>
										<div class="col-xs-6 text-xs-right forgot_pwd">
											<a href="edit/id" class="custom-control-description forgottxt_clr">Forgot password?</a>
										</div>
									</div>
								</div>
							</form>
							<div class="row">
								<div class="form-group">
									<div class="col-lg-6 col-sm-6 pull-lg-right m-t-10">
										<a href="${path}/account/login">
											<button class="btn icon-white btn-info btn-block">
												<i class="fa  fa-google" aria-hidden="true"></i>
												<span class="text-white icon_padding question_mark"> Log In With Google </span>
											</button>
										</a>
									</div>
								</div>
								<div class="form-group">
									<div class="col-lg-6 col-sm-6 pull-lg-right m-t-10">
										<a href="${path}/account/signup">
											<button class="btn btn-outline-info btn-block">
												Not Registered ? <b>Sign Up</b>
											</button>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- global js -->
	<script type="text/javascript" src="${path}/resources/common/js/jquery.min.js"></script>
	<script type="text/javascript" src="${path}/resources/common/js/tether.min.js"></script>
	<script type="text/javascript" src="${path}/resources/common/js/bootstrap.min.js"></script>
	<!-- end of global js-->
	<!--Plugin js-->
	<script type="text/javascript" src="${path}/resources/common/js/bootstrapValidator.min.js"></script>
	<script type="text/javascript" src="${path}/resources/common/js/wow.min.js"></script>
	<!--End of plugin js-->
	<script type="text/javascript" src="${path}/resources/common/js/login.js"></script>

</body>

</html>