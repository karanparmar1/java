<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>

<div id="content" class="bg-container">
	<header class="head">
		<div class="main-bar row">
			<div class="col-xs-6">
				<h4 class="m-t-5">
					<i class="fa fa-home"></i> Dashboard
				</h4>
			</div>
		</div>
	</header>
	<div class="outer">
		<div class="inner bg-container">
			<div class="row">
				<div class="col-xl-6 col-lg-7 col-xs-12">
					<div class="row">
						<div class="col-sm-6 col-xs-12">
							<div class="bg-primary top_cards">
								<div class="row icon_margin_left">

									<div class="col-lg-5 icon_padd_left">
										<div class="float-xs-left">
											<span class="fa-stack fa-sm">
												<i class="fa fa-circle fa-stack-2x"></i> <i
													class="fa fa-shopping-cart fa-stack-1x fa-inverse text-primary sales_hover"></i>
											</span>
										</div>
									</div>
									<div class="col-lg-7 icon_padd_right">
										<div class="float-xs-right cards_content">
											<span class="number_val" id="sales_count"></span>
											<i class="fa fa-long-arrow-up fa-2x"></i> <br />
											<span class="card_description">Sales</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-xs-12">
							<div class="bg-success top_cards">
								<div class="row icon_margin_left">
									<div class="col-lg-5 icon_padd_left">
										<div class="float-xs-left">
											<span class="fa-stack fa-sm">
												<i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-eye fa-stack-1x fa-inverse text-success visit_icon"></i>
											</span>
										</div>
									</div>
									<div class="col-lg-7 icon_padd_right">
										<div class="float-xs-right cards_content">
											<span class="number_val" id="visitors_count"></span>
											<i class="fa fa-long-arrow-up fa-2x"></i> <br />
											<span class="card_description">Visitors</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-xs-12">
							<div class="bg-warning top_cards">
								<div class="row icon_margin_left">
									<div class="col-lg-5 icon_padd_left">
										<div class="float-xs-left">
											<span class="fa-stack fa-sm">
												<i class="fa fa-circle fa-stack-2x"></i> <i
													class="fa fa-usd fa-stack-1x fa-inverse text-warning revenue_icon"></i>
											</span>
										</div>
									</div>
									<div class="col-lg-7 icon_padd_right">
										<div class="float-xs-right cards_content">
											<span class="number_val" id="revenue_count"></span>
											<i class="fa fa-long-arrow-up fa-2x"></i> <br />
											<span class="card_description">Revenue</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-6 col-xs-12">
							<div class="bg-mint top_cards">
								<div class="row icon_margin_left">
									<div class="col-lg-5 icon_padd_left">
										<div class="float-xs-left">
											<span class="fa-stack fa-sm">
												<i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-users  fa-stack-1x fa-inverse text-mint sub"></i>
											</span>
										</div>
									</div>
									<div class="col-lg-7 icon_padd_right">
										<div class="float-xs-right cards_content">
											<span class="number_val" id="subscribers_count"></span>
											<i class="fa fa-long-arrow-down fa-2x"></i> <br />
											<span class="card_description">Subscribers</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-6 col-lg-5 col-xs-12 stat_align">
					<div class="card weather_section md_align_section">
						<div class="card-block">
							<div class="row margin_align">
								<div class="col-xs-12">
									<div class="row">
										<div class="col-xs-6">
											<div class="icon sun-shower">
												<div class="cloud"></div>
												<div class="sun">
													<div class="rays"></div>
												</div>
												<div class="rain"></div>
											</div>
										</div>
										<div class="col-xs-6">
											<div class="weather-value">
												<span class=" text-white">
													<span class="degree">25&deg;</span>
												</span>
											</div>
											<div class="weather_location">
												<span class="text-white">
													<i class="fa fa-map-marker"></i> London
												</span>
											</div>
										</div>
									</div>
									<div class="row weekly_report">
										<div class="col-xs-3">
											<span>Mon</span>
											<br />
											<img src="${path}/resources/admin/img/w1.png" alt="weather">
											<p>27&deg;</p>
										</div>
										<div class="col-xs-3">
											<span>Tue</span>
											<br />
											<img src="${path}/resources/admin/img/w2.png" alt="weather">
											<p>23&deg;</p>
										</div>
										<div class="col-xs-3">
											<span>Wed</span>
											<br />
											<img src="${path}/resources/admin/img/w3.png" alt="weather">
											<p>19&deg;</p>
										</div>
										<div class="col-xs-3">
											<span>Thu</span>
											<br />
											<img src="${path}/resources/admin/img/w4.png" alt="weather">
											<p>38&deg;</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-9 col-xs-12 m-t-25">
					<div class="card">

						<ul id="clothing-nav" class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active" href="#home" id="home-tab" role="tab" data-toggle="tab"
									aria-controls="home" aria-expanded="true">Statistics</a></li>
							<li class="nav-item"><a class="nav-link" href="#hats" role="tab" id="hats-tab" data-toggle="tab"
									aria-controls="hats">Stock Exchange</a></li>
						</ul>
						<div class="card-block">
							<div id="clothing-nav-content" class="tab-content">

								<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
									<div id="area-chart" class="flotChart3"></div>
								</div>

								<div role="tabpanel" class="tab-pane fade" id="hats" aria-labelledby="hats-tab">
									<div class="form-group float-xs-right">
										<span class="live_switch">Live</span>
										<input type="checkbox" id="toggle_real" name="my-checkbox" data-size="large" checked>
									</div>
									<div id="realtime" class="flotChart4 float-xs-right"></div>
								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="col-lg-3 col-xs-12 m-t-25 md_align_section">
					<div class="card">
						<div class="card-header bg-white">This Month</div>
						<div class="card-body">
							<div class="task-item">

								Sales
								<span class="float-xs-right text-muted progress-info">52%</span>
								<div id="progress-bar">
									<progress class="progress progress-danger" value="52" max="100"></progress>
								</div>
							</div>
							<div class="task-item">
								Projects
								<span class="float-xs-right text-muted progress-primary">80%</span>
								<div id="progress-bar1">
									<progress class="progress progress-warning" value="80" max="100"></progress>
								</div>
							</div>
							<div class="task-item">
								Visitors
								<span class="float-xs-right text-muted progress-warning">25%</span>
								<div id="progress-bar2">
									<progress class="progress progress-success" value="25" max="100"></progress>
								</div>
							</div>
							<div class="task-item">
								New Users
								<span class="float-xs-right text-muted progress-primary">93%</span>
								<div id="progress-bar5">
									<progress class="progress progress-primary" value="93" max="100"></progress>
								</div>
							</div>
							<div class="task-item">
								Revenue
								<span class="float-xs-right text-muted progress-danger">50%</span>
								<div id="progress-bar3">
									<progress class="progress progress-danger" value="50" max="100"></progress>
								</div>
							</div>
							<div class="task-item">
								Total sold
								<span class="float-xs-right text-muted">40%</span>
								<div id="progress-bar4">
									<progress class="progress progress-mint" value="40" max="100"></progress>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-xs-12 m-t-35">
					<div class="card">
						<div class="card-header bg-white">Today Analytics</div>
						<div class="card-block">
							<div id="donut" class="centered"></div>
						</div>
					</div>

				</div>
				<div class="col-lg-4 col-xs-12 m-t-35">
					<div class="card">
						<div class="card-header bg-white">Server Load</div>
						<div class="card-block">
							<div class="row">
								<div class="col-xs-4">
									<div class="server_item text-danger">
										<span>Total Usage</span>
										<p>72GB</p>
									</div>
								</div>
								<div class="col-xs-4">
									<div class="server_item text-success">
										<span>Total Space</span>
										<p>600GB</p>
									</div>
								</div>
								<div class="col-xs-4">
									<div class="server_item text-info">
										<span>CPU</span>
										<p>57%</p>
									</div>
								</div>
							</div>
							<div id="flotchart2"></div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-xs-12 m-t-35">
					<div class="card">
						<div class="card-header bg-white">Browsers Stats</div>
						<div class="card-block">
							<ul class="Browser_stats_ul">
								<li><span>
										<img alt="google" src="${path}/resources/admin/img/chrome.png" />
										Google Crome
									</span> <span class="float-xs-right text-mint">
										32%<i class="fa fa-level-up"></i>
									</span>
									<hr /></li>
								<li><span>
										<img alt="firebox" src="${path}/resources/admin/img/firefox.png">
										Firefox
									</span> <span class="float-xs-right text-danger">
										5%<i class="fa fa-level-down"></i>
									</span>
									<hr /></li>
								<li><span>
										<img alt="safari" src="${path}/resources/admin/img/safari2.png">
										Safari
									</span> <span class="float-xs-right text-mint">
										10%<i class="fa fa-level-up"></i>
									</span>
									<hr /></li>
								<li><span>
										<img alt="opera" src="${path}/resources/admin/img/opera.png">
										Opera
									</span> <span class="float-xs-right text-mint">
										32%<i class="fa fa-level-up"></i>
									</span>
									<hr /></li>
								<li><span>
										<img alt="ie" src="${path}/resources/admin/img/Ie.png">
										IE
									</span> <span class="float-xs-right text-danger">
										15%<i class="fa fa-level-down"></i>
									</span>
									<hr /></li>
								<li><span>
										<img alt="mobile" src="${path}/resources/admin/img/mobile1.png">
										Mobile
									</span> <span class="float-xs-right text-mint">
										32%<i class="fa fa-level-up"></i>
									</span>
									<hr /></li>
								<li><span>
										<img alt="others" src="${path}/resources/admin/img/others.png">
										Others
									</span> <span class="float-xs-right text-mint">
										32%<i class="fa fa-level-up"></i>
									</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-xs-12 m-t-35">
					<div class="card">
						<div class="card-header bg-white">
							<div class=" twitter_section_head">Team Activities</div>
						</div>
						<div class="card-block twitter_section">
							<ul id="nt-example1">
								<li>
									<div class="row">
										<div class="col-xs-2 col-lg-3 col-xl-2">
											<img src="${path}/resources/admin/img/images.jpg" class="rounded-circle" alt="image not found">
										</div>
										<div class="col-xs-10 col-lg-9 col-xl-10">
											<span class="name">Robert Rivera</span>
											<span class="time">2m ago</span>
											<br>
											<span class="msg"> Lorem Ipsum is simply dummy text of the printing.</span>
										</div>
									</div>
									<hr>
								</li>
								<li>
									<div class="row">
										<div class="col-xs-2 col-lg-3 col-xl-2">
											<img src="${path}/resources/admin/img/images3.jpg" class="rounded-circle" alt="image not found">
										</div>
										<div class="col-xs-10 col-lg-9 col-xl-10">
											<span class="name">Mildred Yanez</span>
											<span class="time">2m ago</span>
											<br>
											<span class="msg"> Lorem Ipsum is simply dummy text of the printing.</span>
										</div>
									</div>
									<hr>
								</li>
								<li>
									<div class="row">
										<div class="col-xs-2 col-lg-3 col-xl-2">
											<img src="${path}/resources/admin/img/images2.jpg" class="rounded-circle" alt="image not found">
										</div>
										<div class="col-xs-10 col-lg-9 col-xl-10">
											<span class="name">Thomas Rogers</span>
											<span class="time">3m ago</span>
											<br>
											<span class="msg"> Lorem Ipsum is simply dummy text of the printing.</span>
										</div>
									</div>
									<hr>
								</li>
								<li>
									<div class="row">
										<div class="col-xs-2 col-lg-3 col-xl-2">
											<img src="${path}/resources/admin/img/images4.jpg" class="rounded-circle" alt="image not found">
										</div>
										<div class="col-xs-10 col-lg-9 col-xl-10">
											<span class="name">Celeste Foxx</span>
											<span class="time">1m ago</span>
											<br>
											<span class="msg"> Lorem Ipsum is simply dummy text of the printing.</span>
										</div>
									</div>
									<hr>
								</li>
								<li>
									<div class="row">
										<div class="col-xs-2 col-lg-3 col-xl-2">
											<img src="${path}/resources/admin/img/images3.jpg" class="rounded-circle" alt="image not found">
										</div>
										<div class="col-xs-10 col-lg-9 col-xl-10">
											<span class="name">Mildred Yanez</span>
											<span class="time">2m ago</span>
											<br>
											<span class="msg"> Lorem Ipsum is simply dummy text of the printing.</span>
										</div>
									</div>
									<hr>
								</li>
								<li>
									<div class="row">
										<div class="col-xs-2 col-lg-3 col-xl-2">
											<img src="${path}/resources/admin/img/images2.jpg" class="rounded-circle" alt="image not found">
										</div>
										<div class="col-xs-10 col-lg-9 col-xl-10">
											<span class="name">Thomas Rogers</span>
											<span class="time">3m ago</span>
											<br>
											<span class="msg"> Lorem Ipsum is simply dummy text of the printing.</span>
										</div>
									</div>
									<hr>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-8 col-xs-12">
					<div class="row">
						<div class="col-lg-7 col-xs-12 m-t-35">
							<div class="card to_do">
								<div class="card-header bg-white">To Do List</div>
								<div class="card-block no-padding to_do_section">
									<div class="row">
										<div class="todo_section">
											<form class="list_of_items">
												<div class="todolist_list showactions">
													<div class="col-xs-9 nopad custom_textbox1">
														<div class="todo_primarybadge"></div>
														<div class="todoitemcheck checkbox-custom">
															<input type="checkbox" class="striked large" />
														</div>
														<div class="todotext todoitem todo_width">Meeting with CEO</div>
													</div>
													<div class="col-xs-3  showbtns todoitembtns">
														<a href="#" class="todoedit">
															<span class="fa fa-pencil"></span>
														</a>
														<span class='dividor'>|</span>
														<a href="#" class="tododelete redcolor">
															<span class="fa fa-trash"></span>
														</a>
													</div>
													<span class="seperator"></span>
												</div>
												<div class="todolist_list showactions">
													<div class="col-xs-9 nopad custom_textbox1">
														<div class="todo_dangerbadge bg-danger"></div>
														<div class="todoitemcheck">
															<input type="checkbox" class="striked" />
														</div>
														<div class="todotext todoitem todo_width">Team Out</div>
													</div>
													<div class="col-xs-3  float-xs-right showbtns todoitembtns">
														<a href='#' class='todoedit'>
															<span class='fa fa-pencil'></span>
														</a>
														<span class='dividor'>|</span>
														<a href="#" class="tododelete redcolor">
															<span class="fa fa-trash"></span>
														</a>
													</div>
													<span class="seperator"></span>
												</div>
												<div class="todolist_list showactions">
													<div class="col-xs-9 nopad custom_textbox1">
														<div class="todo_warningbadge"></div>
														<div class="todoitemcheck">
															<input type="checkbox" class="striked" checked />
														</div>
														<div class="todotext todoitem todo_width strikethrough">Review on Sales</div>
													</div>
													<div class="col-xs-3 float-xs-right showbtnschk showbtns todoitembtns">
														<a href="#" class="todoedit">
															<span class="fa fa-pencil"></span>
														</a>
														<span class='dividor'>|</span>
														<a href="#" class="tododelete redcolor">
															<span class="fa fa-trash"></span>
														</a>
													</div>
													<span class="seperator"></span>
												</div>
												<div class="todolist_list showactions">
													<div class="col-xs-9 nopad custom_textbox1">
														<div class="todo_infobadge"></div>
														<div class="todoitemcheck">
															<input type="checkbox" class="striked" />
														</div>
														<div class="todotext todoitem todo_width">Analysis on Views</div>
													</div>
													<div class="col-xs-3 float-xs-right showbtns todoitembtns">
														<a href="#" class="todoedit">
															<span class="fa fa-pencil"></span>
														</a>
														<span class='dividor'>|</span>
														<a href="#" class="tododelete redcolor">
															<span class="fa fa-trash"></span>
														</a>
													</div>
													<span class="seperator"></span>
												</div>
												<div class="todolist_list showactions">
													<div class="col-xs-9 nopad custom_textbox1">
														<div class="todo_warningbadge"></div>
														<div class="todoitemcheck">
															<input type="checkbox" class="striked" checked />
														</div>
														<div class="todotext todoitem todo_width strikethrough">Seminar on Market</div>
													</div>
													<div class="col-xs-3 float-xs-right showbtnschk showbtns todoitembtns">
														<a href="#" class="todoedit">
															<span class="fa fa-pencil"></span>
														</a>
														<span class='dividor'>|</span>
														<a href="#" class="tododelete redcolor">
															<span class="fa fa-trash"></span>
														</a>
													</div>
													<span class="seperator"></span>
												</div>
												<div class="todolist_list showactions">
													<div class="col-xs-9 nopad custom_textbox1">
														<div class="todo_primarybadge"></div>
														<div class="todoitemcheck">
															<input type="checkbox" class="striked" />
														</div>
														<div class="todotext todoitem todo_width">Renewal Domain</div>
													</div>
													<div class="col-xs-3  loat-xs-right showbtns todoitembtns">
														<a href="#" class="todoedit">
															<span class="fa fa-pencil"></span>
														</a>
														<span class='dividor'>|</span>
														<a href="#" class="tododelete redcolor">
															<span class="fa fa-trash"></span>
														</a>
													</div>
													<span class="seperator"></span>
												</div>
											</form>
										</div>
										<form id="main_input_box" class="form-inline">
											<div class="input-group todo">
												<span class="input-group-btn">
													<a class="btn btn-primary" tabindex="0" role="button" data-toggle="popover" data-trigger="focus"
														data-contentwrapper=".mycontent" id="btn_color" data-badge="todo_mintbadge">
														Color&nbsp;&nbsp; <i class="fa fa-caret-right"> </i>
													</a>
												</span>
												<input id="custom_textbox" name="Item" type="text" required placeholder="Write and hit enter"
													class="input-md form-control" size="75" />
											</div>
										</form>
									</div>
									<div class="mycontent">
										<div class="border_color bg-danger border_danger" data-color="btn-danger" data-badge="bg-danger"></div>
										<div class="border_color bg-primary border_primary" data-color="btn-primary" data-badge="bg-primary"></div>
										<div class="border_color bg-info border_info" data-color="btn-info" data-badge="bg-info"></div>
										<div class="border_color bg-mint border_mint" data-color="btn-mint" data-badge="bg-mint"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-5 col-xs-12 m-t-35">
							<div class="block widget-notes">
								<div class="card" id="notes_section">
									<div class="card-header bg-white">Notes</div>
									<div class="content">
										<div class="notes" contenteditable="true">
											<div>
												Send e-mails. <br> Sometimes on purpose <br> It is a long established <br> Contrary to
												popular belief. <br> <i> TechParts admin</i> <br>Company status <br> Sometime is
												special <br> <b>Meeting with CEO</b> <br> Team out <br> welcome to TechParts

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.inner -->
		</div>
		<!-- /.outer -->
	</div>
	<!-- /#content -->
</div>
