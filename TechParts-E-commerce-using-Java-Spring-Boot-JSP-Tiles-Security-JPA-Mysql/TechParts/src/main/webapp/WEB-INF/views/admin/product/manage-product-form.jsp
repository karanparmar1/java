<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="mt" uri="http://techparts.com"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>


<div id="content" class="bg-container">
	<header class="head">
		<div class="main-bar row">
			<div class="col-lg-6">
				<h4 class="nav_top_align skin_txt">
					<i class="fa fa-user"></i> ${reqType} Product
				</h4>
			</div>
			<div class="col-lg-6">
				<ol class="breadcrumb float-xs-right nav_breadcrumb_top_align">
					<li class="breadcrumb-item"><a href="${path }/admin/dashboard">
							<i class="fa fa-home" data-pack="default" data-tags=""></i> Dashboard
						</a></li>
					<li class="breadcrumb-item"><a href="${path}/admin/product/">Product</a></li>
					<li class="breadcrumb-item active">Product Name</li>
				</ol>
			</div>
		</div>
	</header>
	<div class="outer">
		<div class="inner bg-container">
			<div class="card">

				<div class="card-block m-t-15">
					<div>
						<h4>${reqType} Product</h4>
					</div>
					<s:form cssClass="form-horizontal login_validator" method="post" modelAttribute="product" id="tryitForm"
						action="${path}/admin/product/add">
						<div class="row">
							<div class="col-xs-12">
								<s:hidden path="id" />
								<div class="form-group row">
									<div class="col-lg-3 text-lg-right">
										<label for="city" class="form-control-label">Product Name *</label>
									</div>
									<div class="col-xl-6 col-lg-8">
										<div class="input-group">
											<span class="input-group-addon">
												<i class="fa  fa-pencil text-primary"></i>
											</span>
											<s:input placeholder=" " path="name" id="name" cssClass="form-control" required="required" />
										</div>
									</div>
								</div>


								<div class="form-group row">
									<div class="col-lg-3 text-lg-right">
										<label for="price" class="form-control-label"> Price *</label>
									</div>
									<div class="col-xl-6 col-lg-8">
										<div class="input-group">
											<span class="input-group-addon">
												<i class="fa fa-inr text-primary"></i>
											</span>
											<s:input placeholder=" " type="number" step="any" max="9999999.99" path="price" id="price"
												cssClass="form-control" required="required" />
										</div>
									</div>
								</div>

								<div class="form-group row">
									<div class="col-lg-3 text-lg-right">
										<label for="city" class="form-control-label"> Quantity *</label>
									</div>
									<div class="col-xl-6 col-lg-8">
										<div class="input-group">
											<span class="input-group-addon">
												<i class="fa fa-plus text-primary"></i>
											</span>
											<s:input placeholder=" " type="number" min="1" step="1" path="quantity" id="quantity" cssClass="form-control"
												required="required" />
										</div>
									</div>
								</div>


								<div class="form-group row">
									<div class="col-lg-3 text-lg-right">
										<label for="description" class="form-control-label"> Description </label>
									</div>
									<div class="col-xl-6 col-lg-8">
										<div class="input-group">
											<span class="input-group-addon">
												<i class="fa  fa-info-circle text-primary"></i>
											</span>
											<s:textarea placeholder="Set Description" rows="5" path="description" id="description"
												cssStyle="overflow-wrap: break-word;" cssClass="form-control" />
										</div>
									</div>
								</div>

								<div class="form-group row">
									<div class="col-lg-3 text-lg-right">
										<label for="details" class="form-control-label"> Details </label>
									</div>
									<div class="col-xl-6 col-lg-8">
										<div class="input-group">
											<span class="input-group-addon">
												<i class="fa fa-info-circle text-primary"></i>
											</span>
											<s:textarea placeholder="Set Details" path="details" rows="5" id="details"
												cssStyle="overflow-wrap: break-word;" cssClass="form-control" />
										</div>
									</div>
								</div>

								<div class="form-group row">
									<div class="col-lg-3 text-lg-right">
										<label for="categories" class="form-control-label"> Category * </label>
									</div>
									<div class="col-xl-6 col-lg-8">

										<s:select class="form-control chzn-select" tabindex="2" path="category.id" id="categories" required="required">
											<c:forEach var="category" items="${categories}">
											<optgroup label="--------------------------------------"></optgroup>
												<c:choose>
													<c:when test="${!category.categories.isEmpty()}">
														<optgroup label="&nbsp;${category.name}">
															<c:forEach var="subCategory" items="${category.categories}">
																<c:choose>
																	<c:when test="${!subCategory.categories.isEmpty()}">
																		<optgroup label="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${subCategory.name}">
																			<c:forEach var="subsubCategory" items="${subCategory.categories}">
																				<option value="${subsubCategory.id}" ${product.category.id==subsubCategory.id?'selected':''} }>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${subsubCategory.name }</option>
																			</c:forEach>
																		</optgroup>
																	</c:when>
																	<c:otherwise>
																		<option value="${subCategory.id}"  ${product.category.id==subCategory.id?'selected':''}>&nbsp;&nbsp;&nbsp;&nbsp;${subCategory.name}</option>
																	</c:otherwise>
																</c:choose>
															</c:forEach>
														</optgroup>
													</c:when>

													<c:otherwise>
														<option value="${category.id}"  ${product.category.id==subCategory.id?'selected':''}>&nbsp;${category.name}</option>
													</c:otherwise>
												</c:choose>
												
											</c:forEach>
										</s:select>
									</div>
								</div>


								<div class="form-group row">
									<div class="col-xl-6 col-lg-8 add_user_checkbox_error push-lg-3">
										<div>
											<label class="custom-control custom-checkbox">
												<s:checkbox id="checkbox1" path="featured" cssClass="custom-control-input" />
												<span class="custom-control-indicator"></span>
												<span class="custom-control-description">Featured Product</span>
											</label>
										</div>
									</div>
								</div>

								<div class="form-group row">
									<div class="col-xl-6 col-lg-8 add_user_checkbox_error push-lg-3">
										<div>
											<label class="custom-control custom-checkbox">
												<s:checkbox id="checkbox1" path="status" cssClass="custom-control-input" />
												<span class="custom-control-indicator"></span>
												<span class="custom-control-description">Activate this Product</span>
											</label>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-lg-9 push-lg-3">
										<button class="btn btn-primary" type="submit">
											<i class="fa  fa-edit (alias)"> </i> Save Details
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