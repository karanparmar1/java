<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>

<div class="dataContent">
	<div id="content" class="bg-container">
		<header class="head">
			<div class="main-bar row">
				<div class="col-lg-6 col-sm-4">
					<h4 class="nav_top_align">
						<i class="fa fa-list-ul"></i> Products
					</h4>
				</div>
				<div class="col-lg-6 col-sm-8 col-xs-12">
					<ol class="breadcrumb float-xs-right  nav_breadcrumb_top_align">
						<li class="breadcrumb-item"><a href="${path}/admin/dashboard">
								<i class="fa fa-home" data-pack="default" data-tags=""></i> Dashboard
							</a></li>
						<li class="active breadcrumb-item">Products</li>
					</ol>
				</div>
			</div>
		</header>
		<div class="outer">

			<div class="inner bg-container">
				<div class="card">
					<c:if test="${message!=null}">
						<div class="row">
							<div class="col-xs-1"></div>

							<div class="col-xs-10  my-1 text-sm-center alert ${fn:containsIgnoreCase(message,'ERROR') ?'alert-danger':'alert-info' }  alert-dismissable">

								<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&#10006;</button>
								<span class="text-white">
									<strong>${message}</strong>
								</span>

							</div>
							<div class="col-xs-1"></div>
						</div>
					</c:if>
					<div class="card-header bg-white">
						All Products
						<a href="${path}/admin/product/list">
							<i class="fa fa-refresh"></i>
						</a>
					</div>
					<div class="card-block m-t-0" id="user_body">
						<div class="table-toolbar">
							<div class="btn-group">
								<a href="${path}/admin/product/add" id="editable_table_new" class=" btn btn-default">
									Add Product <i class="fa fa-plus"></i>
								</a>
							</div>
							<div class="btn-group float-xs-right users_grid_tools">
								<div class="tools"></div>
							</div>
						</div>

						<div>
							<div>
								<table class="table table-striped table-bordered  table-hover dataTable no-footer text-sm-center myTableData"
									id="editable_table" role="grid">
									<thead>
										<tr role="row" class="bg-primary">
											<th class="sorting_asc wid-20 text-xs-center" tabindex="0" rowspan="1" colspan="1">ID</th>
											<th class="sorting wid-25 text-xs-center" tabindex="0" rowspan="1" colspan="1">Name</th>
											<th class="sorting wid-15 text-xs-center" tabindex="0" rowspan="1" colspan="1">Price</th>
											<th class="sorting wid-15 text-xs-center" tabindex="0" rowspan="1" colspan="1">Category</th>
											<th class="sorting wid-10 text-xs-center" tabindex="0" rowspan="1" colspan="1">Featured</th>
											<th class="sorting wid-15 text-xs-center" tabindex="0" rowspan="1" colspan="1">Status</th>
											<th class="sorting wid-10 text-xs-center" tabindex="0" rowspan="1" colspan="1">Actions</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="product" items="${products}">
											<tr id="row${product.id}" role="row" class="even">
												<td class="sorting_1">${product.id}</td>
												<td>${product.name}</td>
												<td>${product.price}</td>
												<td>${product.category.name}</td>
												<td>${product.featured?'Featured':'No'}</td>
												<td class="center">${product.status?'Active':'Disabled'}</td>
												<td><a class="edit" data-toggle="tooltip" data-placement="top" title="Edit"
														href="${path}/admin/product/edit/${product.id}">
														<i class="fa fa-pencil text-warning"></i>
													</a>&nbsp;&nbsp; &nbsp; &nbsp; <a class="delete hidden-xs hidden-sm" data-toggle="tooltip" data-placement="top"
														title="Delete" href="<%-- ${path}/admin/product/delete/${product.id} --%>javascript:void(0)"
														onClick="deleteRow('product',${product.id})">
														<i class="fa fa-trash text-danger"></i>
													</a></td>
											</tr>
										</c:forEach>

									</tbody>
								</table>
							</div>
						</div>
						<!-- END EXAMPLE TABLE PORTLET-->
					</div>
				</div>
			</div>
			<!-- /.inner -->
		</div>
		<!-- /.outer -->
	</div>
</div>