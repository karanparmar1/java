<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<c:set var="currentUser" value="${pageContext.request.userPrincipal.name}"></c:set>
<html class="no-js">
<head>
<meta charset="UTF-8">
<title>Dashboard |  <tiles:getAsString name="title" ignore="true"/></title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="shortcut icon" href="${path}/resources/admin/img/logob.png" />

<!--global styles-->
<link type="text/css" rel="stylesheet" href="${path}/resources/admin/css/components.css" />
<link type="text/css" rel="stylesheet" href="${path}/resources/admin/css/custom.css" />
<!-- end of global styles-->

<!-- plugin styles-->
<link type="text/css" rel="stylesheet" href="${path}/resources/admin/vendors/wow/css/animate.css" />
<link type="text/css" rel="stylesheet" href="${path}/resources/admin/vendors/animate/css/animate.min.css" />
<link type="text/css" rel="stylesheet" href="${path}/resources/admin/css/pages/animations.css" />
<link type="text/css" rel="stylesheet" href="${path}/resources/admin/css/pages/transitions.css" />
<link type="text/css" rel="stylesheet"
	href="${path}/resources/admin/vendors/jasny-bootstrap/css/jasny-bootstrap.min.css" />
<link type="text/css" rel="stylesheet"
	href="${path}/resources/admin/vendors/bootstrapvalidator/css/bootstrapValidator.min.css" />
<link type="text/css" rel="stylesheet" href="${path}/resources/admin/vendors/c3/css/c3.min.css" />
<link type="text/css" rel="stylesheet" href="${path}/resources/admin/vendors/toastr/css/toastr.min.css" />
<link type="text/css" rel="stylesheet" href="${path}/resources/admin/vendors/switchery/css/switchery.min.css" />

<link type="text/css" rel="stylesheet" href="${path}/resources/admin/vendors/select2/css/select2.min.css" />
<link type="text/css" rel="stylesheet" href="${path}/resources/admin/css/pages/dataTables.bootstrap.css" />
<!--End of plugin styles-->
<link type="text/css" rel="stylesheet" href="${path}/resources/admin/css/pages/tables.css" />

<link type="text/css" rel="stylesheet" href="${path}/resources/admin/css/pages/new_dashboard.css" />


<style type="text/css">
.icon_padd_right {
	padding: 10px;
}
</style>

</head>

<body class="body">

	<div class="preloader"
		style="position: fixed; width: 100%; height: 100%; top: 0; left: 0; z-index: 100000; backface-visibility: hidden; background: #ffffff;">
		<div class="preloader_img"
			style="width: 200px; height: 200px; position: absolute; left: 48%; top: 48%; background-position: center; z-index: 999999">
			<img src="${path}/resources/admin/img/loader.gif" style="width: 40px;" alt="loading...">
		</div>
	</div>


	<div class="bg-dark" id="wrap">
		<div id="top">
			<!-- .navbar -->
			<tiles:insertAttribute name="navbar"></tiles:insertAttribute>
			<!-- /.navbar -->
			<!-- /.head -->
		</div>
		<!-- /#top -->
		<div class="wrapper">
			<!-- #LEFT SideBar -->
			<tiles:insertAttribute name="sidebar"></tiles:insertAttribute>
			<!-- /#left -->

			<!-- #Content Starts here -->
			<div class="dataContent">
				<tiles:insertAttribute name="content"></tiles:insertAttribute>
			</div>
			<!-- /#Content -->
		</div>
		<!--wrapper-->

	</div>
	<!-- /#wrap -->
	<!-- global scripts-->
	<script type="text/javascript" src="${path}/resources/admin/js/components.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/js/custom.js"></script>
	<!-- global scripts end-->



	<!-- plugin scripts-->
	<script type="text/javascript" src="${path}/resources/admin/vendors/raphael/js/raphael-min.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/d3/js/d3.min.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/c3/js/c3.min.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/toastr/js/toastr.min.js"></script>


	<script type="text/javascript" src="${path}/resources/admin/vendors/switchery/js/switchery.min.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/flotchart/js/jquery.flot.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/flotchart/js/jquery.flot.resize.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/flotchart/js/jquery.flot.stack.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/flotchart/js/jquery.flot.time.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/flotspline/js/jquery.flot.spline.min.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/flotchart/js/jquery.flot.categories.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/flotchart/js/jquery.flot.pie.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
	<%----%>


	<script type="text/javascript" src="${path}/resources/admin/vendors/jquery_newsTicker/js/newsTicker.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/countUp.js/js/countUp.min.js"></script>

	<!-- For Form Page -->
	<script type="text/javascript" src="${path}/resources/admin/js/pluginjs/jasny-bootstrap.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/holderjs/js/holder.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/bootstrapvalidator/js/bootstrapValidator.min.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/js/pages/validation.js"></script>

	<!-- For DataTable Pages -->
	<script type="text/javascript" src="${path}/resources/admin/vendors/select2/js/select2.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/datatables/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/datatables/js/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/datatables/js/dataTables.responsive.min.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/datatables/js/dataTables.buttons.min.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/datatables/js/buttons.colVis.min.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/datatables/js/buttons.html5.min.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/datatables/js/buttons.bootstrap.min.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/datatables/js/buttons.print.min.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/js/pages/users.js"></script>


	<script type="text/javascript" src="${path}/resources/admin/vendors/wow/js/wow.min.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/vendors/Knob/js/jquery.knob.js"></script>
	<script type="text/javascript" src="${path}/resources/admin/js/pages/transitions-sliders.js"></script>

	<!--end of plugin scripts-->

	<script type="text/javascript" src="${path}/resources/admin/js/pages/new_dashboard.js"></script>


	<script>
		htt = $("html").height("100%");
		function resize() {
			if ($(window).width() > 514) {
				$(".navbar").addClass("navbar-fixed-top");
				$("html").height(htt + "px");
			} else {
				$(".navbar").removeClass("navbar-fixed-top");
			}
		}

		$(document).ready(function() {
			$(window).resize(resize);
			resize();
		});

		function addForm(type) {
			$
					.ajax({
						type : "GET",
						url : "${path}/admin/" + type + "/" + type + "-form",
						success : function(data) {
							$(".dataContent")
									.html(
											'<div class="wow filpInx animated" data-wow-duration="1s" style="visibility: visible; animation-duration: 1s;  animation-name: flipInX;">'
													+ data + '</div>');

						}
					});
		}

		function editForm(type, id) {
			$
					.ajax({
						type : "GET",
						url : "${path}/admin/" + type + "/edit/" + id,
						success : function(data) {
							$(".dataContent")
									.html(
											'<div class="wow filpInx animated" data-wow-duration="1s" style="visibility: visible; animation-duration: 1s;  animation-name: flipInY;">'
													+ data + '</div>')
						}
					});
		}

		function fetchList(type) {
			$
					.ajax({
						type : "GET",
						url : "${path}/admin/" + type + "/list",
						success : function(data) {
							$(".myTableData")
									.html(
											'<div class="wow filpInx animated" data-wow-duration="1s" style="visibility: visible; animation-duration: 1s;  animation-name: flipInY;">'
													+ data + '</div>');

						}
					});
		}

		function deleteRow(type, id) {
			var rowid = "#row" + id;
			var popid = "pop" + id
			console.log(rowid + " Datatype is :" + type);
			oldData = $(rowid).html();

			$(
					'<td></td><td></td><td><button type="button" id="yesDelete" class="btn btn-labeled btn-success"><span class="btn-label"> <i class="fa fa-check"> </i> </span> YES DELETE</button>  <button type="button" id="noDelete" class="btn btn-labeled btn-danger"  ><span class="btn-label"><i class="fa fa-close"></i></span> Cancel</button></td>')
					.css({
						position : "absolute",
						width : "100%",
						height : this.height,
						zIndex : "99",
						top : this.top,
						left : 0,
						marginTop : "4px",
						padding : 0,
						background : "rgba(200,192,192,0.8)"
					}).appendTo($(rowid).css("position", "relative")).addClass(
							'animated fadeIn confirmOverlay').addClass(popid);

			// Replace above code with below line to remove overlay
			// $(rowid).html('<td></td> <td></td><td><button type="button"
			// id="yesDelete" class="btn btn-labeled btn-success"><span
			// class="btn-label"> <i class="fa fa-check"> </i> </span> YES
			// DELETE</button> &nbsp;&nbsp;&nbsp;&nbsp; <button type="button"
			// class="btn btn-labeled btn-danger"
			// onclick=fetchList('+'"'+type+'"'+');><span class="btn-label"><i
			// class="fa fa-close"></i></span> Cancel</button></td>');onclick=fetchList('+'"'+type+'"'+');s

			$("#yesDelete").click(
					function() {
						$.ajax({
							type : "GET",
							url : "${path}/admin/" + type + "/delete/" + id,
							success : function(data) {
								$(rowid).html(oldData).addClass(
										'animated zoomOutRight').fadeOut(
										'slow', function() {
											$(this).remove();
										});
								// $(rowid).html(oldData).fadeOut(1000,
								// function() {$(this).remove();});
								console.log(type + " with id " + id
										+ " Deleted.")
							}

						});

					});

			$("#noDelete").click(function() {
				$(rowid).html(oldData);
			});
		}
	</script>
</body>
</html>
