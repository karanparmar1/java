<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<c:set var="currentUser" value="${pageContext.request.userPrincipal.name}"></c:set>
<nav class="navbar navbar-static-top">
	<div class="container-fluid">
		<a class="navbar-brand text-xs-center" href="${path}/admin/">
			<h4 class="text-white">
				<img src="${path}/resources/admin/img/logow.png" class="admin_img" alt="logo">
				TECHPARTS ADMIN
			</h4>
		</a>
		<div class="menu">
			<span class="toggle-left" id="menu-toggle">
				<i class="fa fa-bars text-white"></i>
			</span>
		</div>

		<!-- Toggle Button -->
		<div class="text-xs-right xs_menu">
			<button class="navbar-toggler hidden-xs-up" type="button" data-toggle="collapse" data-target="#nav-content">
				☰</button>
		</div>
		<!-- Nav Content -->
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="topnav dropdown-menu-right float-xs-right">
			<div class="btn-group">
				<div class="notifications no-bg">
					<a class="btn btn-default btn-sm messages message_tour" data-toggle="dropdown">
						<i class="fa fa-envelope fa-1x text-white"></i>
						<!--<span class="bg-warning message_tags">4</span>-->
						<span class="tag tag-warning">8</span>
					</a>
					<div class="dropdown-menu drop_box_align" role="menu">
						<div class="popover-title">You have 8 Messages</div>
						<div id="messages">
							<div class="data">
								<div class="col-xs-2">
									<img src="${path}/resources/admin/img/mailbox_imgs/5.jpg" class="message-img avatar" alt="avatar1">
								</div>
								<div class="col-xs-10 message-data">
									<strong>hally</strong> sent you an image. <br> <small>add to timeline</small>
								</div>
							</div>
							<div class="data">
								<div class="col-xs-2">
									<img src="${path}/resources/admin/img/mailbox_imgs/8.jpg" class="message-img avatar" alt="avatar1">
								</div>
								<div class="col-xs-10 message-data">
									<strong>Meri</strong> invitation for party. <br> <small>add to timeline</small>
								</div>
							</div>
							<div class="data">
								<div class="col-xs-2">
									<img src="${path}/resources/admin/img/mailbox_imgs/7.jpg" class="message-img avatar" alt="avatar1">
								</div>
								<div class="col-xs-10 message-data">
									<strong>Remo</strong> meeting details . <br> <small>add to timeline</small>
								</div>
							</div>
							<div class="data">
								<div class="col-xs-2">
									<img src="${path}/resources/admin/img/mailbox_imgs/6.jpg" class="message-img avatar" alt="avatar1">
								</div>
								<div class="col-xs-10 message-data">
									<strong>David</strong> upcoming events list. <br> <small>add to timeline</small>
								</div>
							</div>
							<div class="data">
								<div class="col-xs-2">
									<img src="${path}/resources/admin/img/mailbox_imgs/5.jpg" class="message-img avatar" alt="avatar1">
								</div>
								<div class="col-xs-10 message-data">
									<strong>hally</strong> sent you an image. <br> <small>add to timeline</small>
								</div>
							</div>
							<div class="data">
								<div class="col-xs-2">
									<img src="${path}/resources/admin/img/mailbox_imgs/8.jpg" class="message-img avatar" alt="avatar1">
								</div>
								<div class="col-xs-10 message-data">
									<strong>Meri</strong> invitation for party. <br> <small>add to timeline</small>
								</div>
							</div>
							<div class="data">
								<div class="col-xs-2">
									<img src="${path}/resources/admin/img/mailbox_imgs/7.jpg" class="message-img avatar" alt="avatar1">
								</div>
								<div class="col-xs-10 message-data">
									<strong>Remo</strong> meeting details . <br> <small>add to timeline</small>
								</div>
							</div>
							<div class="data">
								<div class="col-xs-2">
									<img src="${path}/resources/admin/img/mailbox_imgs/6.jpg" class="message-img avatar" alt="avatar1">
								</div>
								<div class="col-xs-10 message-data">
									<strong>David</strong> upcoming events list. <br> <small>add to timeline</small>
								</div>
							</div>
						</div>
						<div class="popover-footer">
							<a href="mail_inbox.html">Inbox</a>
						</div>
					</div>
				</div>
			</div>
			<div class="btn-group">
				<div class="notifications messages no-bg notification_tour">
					<a class="btn btn-default btn-sm" data-toggle="dropdown">
						<i class="fa fa-bell text-white"></i>
						<!--<span class="bg-danger notification_tags">4</span>-->
						<span class="tag tag-danger">9</span>
					</a>
					<div class="dropdown-menu drop_box_align" role="menu">
						<div class="popover-title">You have 9 Notifications</div>
						<div id="notifications">
							<div class="data">
								<div class="col-xs-2">
									<img src="${path}/resources/admin/img/mailbox_imgs/1.jpg" class="message-img avatar" alt="avatar1">
								</div>
								<div class="col-xs-10 message-data">
									<i class="fa fa-clock-o"></i> <strong>Remo</strong> sent you an image <br> <small class="primary_txt">just
										now.</small> <br>
								</div>
							</div>
							<div class="data">
								<div class="col-xs-2">
									<img src="${path}/resources/admin/img/mailbox_imgs/2.jpg" class="message-img avatar" alt="avatar1">
								</div>
								<div class="col-xs-10 message-data">
									<i class="fa fa-clock-o"></i> <strong>clay</strong> business propasals <br> <small class="primary_txt">20min
										Back.</small> <br>
								</div>
							</div>
							<div class="data">
								<div class="col-xs-2">
									<img src="${path}/resources/admin/img/mailbox_imgs/3.jpg" class="message-img avatar" alt="avatar1">
								</div>
								<div class="col-xs-10 message-data">
									<i class="fa fa-clock-o"></i> <strong>John</strong> meeting at Ritz <br> <small class="primary_txt">2hrs
										Back.</small> <br>
								</div>
							</div>
							<div class="data">
								<div class="col-xs-2">
									<img src="${path}/resources/admin/img/mailbox_imgs/6.jpg" class="message-img avatar" alt="avatar1">
								</div>
								<div class="col-xs-10 message-data">
									<i class="fa fa-clock-o"></i> <strong>Luicy</strong> Request Invitation <br> <small class="primary_txt">Yesterday.</small>
									<br>
								</div>
							</div>
							<div class="data">
								<div class="col-xs-2">
									<img src="${path}/resources/admin/img/mailbox_imgs/1.jpg" class="message-img avatar" alt="avatar1">
								</div>
								<div class="col-xs-10 message-data">
									<i class="fa fa-clock-o"></i> <strong>Remo</strong> sent you an image <br> <small class="primary_txt">just
										now.</small> <br>
								</div>
							</div>
							<div class="data">
								<div class="col-xs-2">
									<img src="${path}/resources/admin/img/mailbox_imgs/2.jpg" class="message-img avatar" alt="avatar1">
								</div>
								<div class="col-xs-10 message-data">
									<i class="fa fa-clock-o"></i> <strong>clay</strong> business propasals <br> <small class="primary_txt">20min
										Back.</small> <br>
								</div>
							</div>
							<div class="data">
								<div class="col-xs-2">
									<img src="${path}/resources/admin/img/mailbox_imgs/3.jpg" class="message-img avatar" alt="avatar1">
								</div>
								<div class="col-xs-10 message-data">
									<i class="fa fa-clock-o"></i> <strong>John</strong> meeting at Ritz <br> <small class="primary_txt">2hrs
										Back.</small> <br>
								</div>
							</div>
							<div class="data">
								<div class="col-xs-2">
									<img src="${path}/resources/admin/img/mailbox_imgs/6.jpg" class="message-img avatar" alt="avatar1">
								</div>
								<div class="col-xs-10 message-data">
									<i class="fa fa-clock-o"></i> <strong>Luicy</strong> Request Invitation <br> <small class="primary_txt">Yesterday.</small>
									<br>
								</div>
							</div>
							<div class="data">
								<div class="col-xs-2">
									<img src="${path}/resources/admin/img/mailbox_imgs/1.jpg" class="message-img avatar" alt="avatar1">
								</div>
								<div class="col-xs-10 message-data">
									<i class="fa fa-clock-o"></i> <strong>Remo</strong> sent you an image <br> <small class="primary_txt">just
										now.</small> <br>
								</div>
							</div>
						</div>

						<div class="popover-footer">
							<a href="#">View All</a>
						</div>
					</div>
				</div>
			</div>
			<div class="btn-group">
				<div class="user-settings no-bg">
					<button type="button" class="btn btn-default no-bg micheal_btn" data-toggle="dropdown">
						<img src="${path}/resources/admin/img/admin.jpg" class="admin_img2 rounded-circle avatar-img" alt="avatar">
						<strong>&nbsp;${currentUser} &nbsp;</strong>
						<span class="fa fa-sort-down white_bg"></span>
					</button>
					<div class="dropdown-menu admire_admin">
						<a class="dropdown-item title" href="#"> TechParts Admin</a>
						<a class="dropdown-item" href="${path}/admin/account/profile">
							<i class="fa fa-cogs"></i> Account Settings
						</a>
						<a class="dropdown-item" href="#">
							<i class="fa fa-user"></i> User Status
						</a>
						<a class="dropdown-item" href="mail_inbox.html">
							<i class="fa fa-envelope"></i> Inbox
						</a>

						<a class="dropdown-item" href="lockscreen.html">
							<i class="fa fa-lock"></i> Lock Screen
						</a>
						<form method="post" id="logoutForm" action="${path}/logout" style="display:none;">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
						</form>
						<a class="dropdown-item" href="javascript:void(0);" onclick="document.forms['logoutForm'].submit()">
							<i class="fa fa-sign-out"> </i> Log Out
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="collapse navbar-toggleable-sm col-xl-6 col-lg-6 hidden-md-down float-xl-right  top_menu" id="nav-content">
			<ul class="nav navbar-nav top_menubar">
				<li class="nav-item"><a class="nav-link text-white" href="mail_inbox.html">
						<i class="fa fa-inbox"></i>
						<span class="quick_text">Inbox</span>
					</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="${path}/admin/orders">
						<i class="fa fa fa-edit"></i>
						<span class="quick_text">Orders</span>
					</a></li>

			</ul>
		</div>
	</div>

	<!-- /.container-fluid -->
</nav>
