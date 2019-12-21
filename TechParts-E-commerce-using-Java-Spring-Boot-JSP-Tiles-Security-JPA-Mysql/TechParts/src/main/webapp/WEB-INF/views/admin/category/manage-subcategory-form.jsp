<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>


<div id="content" class="bg-container">
	<header class="head">
		<div class="main-bar row">
			<div class="col-lg-6">
				<h4 class="nav_top_align skin_txt">
					<i class="fa fa-user"></i> ${reqType} Sub Category to ${category.name }
				</h4>
			</div>
			<div class="col-lg-6">
				<ol class="breadcrumb float-xs-right nav_breadcrumb_top_align">
					<li class="breadcrumb-item"><a href="${path }/admin/dashboard">
							<i class="fa fa-home" data-pack="default" data-tags=""></i> Dashboard
						</a></li>
					<li class="breadcrumb-item"><a href="${path}/admin/category/">${category.name }</a></li>
					<li class="breadcrumb-item active">Add Sub Category</li>
				</ol>
			</div>
		</div>
	</header>
	<div class="outer">
		<div class="inner bg-container">
			<div class="card">

				<div class="card-block m-t-15">
					<div>
						<h4> ${reqType } Sub Category</h4>
					</div>
					<s:form cssClass="form-horizontal login_validator" method="post" modelAttribute="category" id="tryitForm" action="${path}/admin/category/addsubcategory">
						<div class="row">
							<div class="col-xs-12">
								<s:hidden path="id" />
								<s:hidden path="category.id" />
								<div class="form-group row">
									<div class="col-lg-3 text-lg-right">
										<label for="city" class="form-control-label">Category Name *</label>
									</div>
									<div class="col-xl-6 col-lg-8">
										<div class="input-group">
											<span class="input-group-addon">
												<i class="fa fa-plus text-primary"></i>
											</span>
											<s:input placeholder=" " path="name" id="name" cssClass="form-control" required="required" />
										</div>
									</div>
								</div>

								<div class="form-group row">
									<div class="col-xl-6 col-lg-8 add_user_checkbox_error push-lg-3">
										<div>
											<label class="custom-control custom-checkbox">
												<s:checkbox id="checkbox1" path="status" cssClass="custom-control-input" />
												<span class="custom-control-indicator"></span>
												<span class="custom-control-description">Activate this Category</span>
											</label>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-lg-9 push-lg-3">
										<button class="btn btn-primary" type="submit">
											<i class="fa fa-user"> </i> Save Details
										</button>
										<button class="btn btn-warning" type="reset" id="clear">
											<i class="fa fa-refresh"> </i> Reset
										</button>
									</div>
								</div>
							</div>
						</div>
					</s:form>
				</div>
			</div>
		</div>

		<!-- /.inner -->
	</div>
	<!-- /.outer -->
	<!-- # right side -->
</div>


