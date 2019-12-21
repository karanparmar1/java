<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>


<div id="content" class="bg-container">
	<header class="head">
		<div class="main-bar row">
			<div class="col-lg-6">
				<h4 class="nav_top_align skin_txt">
					<i class="fa fa-user"></i> Manage Account
				</h4>
			</div>
			<div class="col-lg-6">
				<ol class="breadcrumb float-xs-right nav_breadcrumb_top_align">
					<li class="breadcrumb-item"><a href="${path}/admin/dashboard">
							<i class="fa fa-home" data-pack="default" data-tags=""></i> Dashboard
						</a></li>
					<li class="breadcrumb-item"><a href="${path}/admin/account/">Account</a></li>
					<li class="breadcrumb-item active">Profile</li>
				</ol>
			</div>
		</div>
	</header>
	<div class="outer">
		<div class="inner bg-container">
			<div class="card">

				<div class="card-block m-t-15">s
					<div>
						<h4>Personal Information</h4>
					</div>
					<s:form cssClass="form-horizontal login_validator" id="tryitForm" action="${path}/admin/account/profile"
						modelAttribute="account">
						<div class="row">
							<div class="col-xs-12">
								<div class="form-group row m-t-25">
									<div class="col-lg-3 text-xs-center text-lg-right">
										<label class="form-control-label">Profile Pic</label>
									</div>
									<div class="col-lg-6 text-xs-center text-lg-left">
										<div class="fileinput fileinput-new" data-provides="fileinput">
											<div class="fileinput-new img-thumbnail text-xs-center">
												<img src="#" data-src="holder.js/100%x100%" alt="not found">
											</div>
											<div class="fileinput-preview fileinput-exists img-thumbnail"></div>
											<div class="m-t-5  text-xs-center">
												<span class="btn btn-primary btn-file">
													<span class="fileinput-new">Select image</span>
													<span class="fileinput-exists">Change</span>
													<input type="file" name="..." />
												</span>
												<a href="#" class="btn btn-warning fileinput-exists" data-dismiss="fileinput">Remove</a>
											</div>
										</div>
									</div>
								</div>

								<s:hidden path="id" />

								<div class="form-group row m-t-35">
									<div class="col-lg-3 text-lg-right">
										<label for="u-name" class="form-control-label">Full Name *</label>
									</div>
									<div class="col-xl-6 col-lg-8">
										<div class="input-group">
											<span class="input-group-addon">
												<i class="fa fa-user text-primary"></i>
											</span>
											<s:input path="fullname" id="u-name" cssClass="form-control" />
										</div>

									</div>
								</div>
								<div class="form-group row">
									<div class="col-lg-3 text-lg-right">
										<label for="email" class="form-control-label">Email *</label>
									</div>
									<div class="col-xl-6 col-lg-8">
										<div class="input-group">
											<span class="input-group-addon">
												<i class="fa fa-envelope text-primary"></i>
											</span>
											<s:input placeholder=" " id="email" path="username" cssClass="form-control" />
										</div>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-lg-3 text-lg-right">
										<label for="pwd" class="form-control-label">Password *</label>
									</div>
									<div class="col-xl-6 col-lg-8">
										<div class="input-group">
											<span class="input-group-addon">
												<i class="fa fa-lock text-primary"></i>
											</span>
											<s:password path="password" id="pwd" cssClass="form-control" />
										</div>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-lg-3 text-lg-right">
										<label for="cpwd" class="form-control-label">Confirm Password *</label>
									</div>
									<div class="col-xl-6 col-lg-8">
										<div class="input-group">
											<span class="input-group-addon">
												<i class="fa fa-lock text-primary"></i>
											</span>
											<input type="password" name="confirmpassword" placeholder=" " id="cpwd" class="form-control" />
										</div>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-lg-3 text-lg-right">
										<label for="phone" class="form-control-label">Phone *</label>
									</div>
									<div class="col-xl-6 col-lg-8">
										<div class="input-group">
											<span class="input-group-addon p-l-0 text-primary"> &nbsp; +91 </span>
											<s:input placeholder="" id="phone" path="phone" cssClass="form-control" maxlength="10" />
										</div>
									</div>
								</div>

								<div class="form-group  row">
									<div class="col-lg-3 text-lg-right">
										<label class="form-control-label">Role *</label>
									</div>
									<div class="form-group">
										<div class="col-lg-3 text-lg-right">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="fa fa-users text-primary"></i>
												</span>
												<s:select path="role.id" cssClass="form-control">
													<c:forEach items="${roles}" var="role">
														<s:option value="${role.id}">${role.name}</s:option>
													</c:forEach>
												</s:select>
											</div>
										</div>
									</div>
									<!--</div>-->
								</div>


								<div class="form-group row">
									<div class="col-lg-3 text-lg-right">
										<label for="address" class="form-control-label">Address *</label>
									</div>
									<div class="col-xl-6 col-lg-8">
										<div class="input-group">
											<span class="input-group-addon">
												<i class="fa fa-home text-primary"></i>
											</span>
											<s:textarea id="autosize address" path="address" cssClass="form-control" cols="50" rows="5"
												cssStyle="overflow: hidden; overflow-wrap: break-word; resize: none; height: 100px;"></s:textarea>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-lg-3 text-lg-right">
										<label for="city" class="form-control-label">City *</label>
									</div>
									<div class="col-xl-6 col-lg-8">
										<div class="input-group">
											<span class="input-group-addon">
												<i class="fa fa-plus text-primary"></i>
											</span>
											<input placeholder=" " name="city" id="city" class="form-control" />
										</div>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-lg-3 text-lg-right">
										<label for="pincode" class="form-control-label">Pincode *</label>
									</div>
									<div class="col-xl-6 col-lg-8">
										<div class="input-group">
											<span class="input-group-addon">
												<i class="fa fa-plus text-primary"></i>
											</span>
											<input type="text" placeholder=" " name="pincode" id="pincode" maxlength="6" pattern="[0-9]"
												class="form-control" />
										</div>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-xl-6 col-lg-8 add_user_checkbox_error push-lg-3">
										<div>
											<label class="custom-control custom-checkbox">
												<s:checkbox id="checkbox1" path="status" cssClass="custom-control-input" />
												<span class="custom-control-indicator"></span>
												<span class="custom-control-description">Activate your account</span>
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