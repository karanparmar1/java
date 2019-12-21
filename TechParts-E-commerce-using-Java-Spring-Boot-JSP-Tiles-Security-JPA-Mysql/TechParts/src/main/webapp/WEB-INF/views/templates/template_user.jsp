<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="mt" uri="http://techparts.com"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<c:set var="currentUser" value="${pageContext.request.userPrincipal.name}"></c:set>

<html>
<head>
<meta charset="UTF-8">
<title>TechParts | <tiles:getAsString name="title" ignore="true"/></title>
<meta name="author" content="Karan">
<!-- Mobile Specific Meta Tag-->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<link rel="shortcut icon" href="${path}/resources/common/img/logob.png" />
<!-- Vendor Styles including: Bootstrap, Font Icons, Plugins, etc.-->
<link rel="stylesheet" media="screen" href="${path}/resources/user/css/vendor.min.css">
<!-- Main Template Styles-->
<link id="mainStyles" rel="stylesheet" media="screen" href="${path}/resources/user/css/styles.min.css">

<!-- Modernizr-->
<script src="${path}/resources/user/js/modernizr.min.js"></script>
</head>
<!-- Body-->
<body>

	<!-- Header-->
	<!-- NAVBAR STARTS HERE -->
	<tiles:insertAttribute name="navbar"></tiles:insertAttribute>

	<!-- Page Content-->

	<!-- Main Slider-->
	<tiles:insertAttribute name="pageSlider" ignore="true" defaultValue=""> </tiles:insertAttribute>

	<!-- CurrentPage Content-->
	<tiles:insertAttribute name="content"></tiles:insertAttribute>
	
	<!-- Site Footer-->
	<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	
	<!-- Back To Top Button-->
	<a class="scroll-to-top-btn" href="#"><i class="icon-chevron-up"></i>
	</a>
	<!-- Backdrop-->
	<div class="site-backdrop"></div>

	<!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
	<script src="${path}/resources/user/js/vendor.min.js"></script>
	<script src="${path}/resources/user/js/scripts.min.js"></script>

</body>

</html>