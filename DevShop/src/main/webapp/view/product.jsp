<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]>      <html class="no-js" lang=""> <!<![endif]-->

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

<title>Dev Shop - Product</title>
<meta name="description"
	content="Shopaholic - e-Commerce HTML5 Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="images/favicon.ico">

<link rel="stylesheet" type="text/css"
	href="assets/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="assets/css/themify-icons.css">
<link rel="stylesheet" type="text/css"
	href="assets/css/et-line-icons.css">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/themes.css">
<link rel="stylesheet" href="assets/css/shop/shop.css">

<!--[if lte IE 7]><script src="lte-ie7.js"></script><![endif]-->
<!--[if lt IE 9]><script src="assets/js/vendor/html5-3.6-respond-1.4.2.min.js"></script><![endif]-->


</head>


<body>


	<%@include file="function/header.jsp"%>



	<section class="page-name-sec page-name-sec-01">
		<div class="section-padding">
			<div class="container">
				<h3 class="page-title">Shop products</h3>
				<!-- /.page-title -->

				<div class="row">
					<div class="col-sm-7">
						<p class="description">Duis sed odio sit amet nibh vulputate
							cursus a sit amet.</p>
						<!-- /.description -->
					</div>

					<div class="col-sm-5">
						<ol class="breadcrumb text-right">
							<li><a href="#">Home</a></li>
							<li><a href="#">Shop</a></li>
							<li class="active">Products</li>
						</ol>
						<!-- /.breadcrumb -->
					</div>

				</div>
				<!-- /.row -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.section-padding -->
	</section>
	<!-- /.page-name-sec -->




	<section class="shop-contents">
		<div class="section-padding">
			<div class="container">
				<div class="row">
					<div class="col-md-8 pull-right">

						<div class="product-filter">
							<div class="row">
								<div class="col-md-4">
									<span class="filter-text">Showing 1-9 of 36 Products</span>
								</div>

								<div class="col-md-8 text-right">
									<div class="category-select">
										<span class="filter-title">Sort by:</span>
										<!-- /.filter-title -->
										<select data-select-like-alignement="never"
											class="category drop-select">
											<option value="">Name</option>
											<option value="2">Size</option>
											<option value="3">Color</option>
											<option value="4">Brand</option>
										</select>
									</div>
									<!-- /.category-select -->
									<div class="show-item">
										<span class="filter-title">Show:</span>
										<!-- /.filter-title -->
										<select id="item-number" data-select-like-alignement="never"
											class="item-number drop-select">
											<option value="">12</option>
											<option value="2">16</option>
											<option value="3">20</option>
											<option value="4">24</option>
										</select>
									</div>
									<!-- /.show-item -->

									<div class="filter-view">
										<span class="filter-title">View:</span>
										<!-- /.filter-title -->
										<ul role="tablist">
											<li class="grid-view active" id="grid-top"><a
												href="#grid" role="tab" data-toggle="tab"><i
													class="fa fa-th-large"></i></a></li>
											<li id="list-top" class="list-view"><a href="#list"
												role="tab" data-toggle="tab"><i class="fa fa-th-list"></i></a></li>
										</ul>
									</div>
									<!-- /.filter-view -->
								</div>
								<!-- /.col-md-8 -->
							</div>
						</div>
						<!-- /.product-filter -->

						<div class="shop-products">
							<div class="row">
								<div class="tab-content">
									<div role="tabpanel"
										class="tab-pane fade active in text-center" id="grid">

										<form action="/product-search" method="post">
											<div class="row">
												<div class="col-sm-8">
													<input name="keywords" class="form-control"
														value="${keywords}" placeholder="Keywords?">
												</div>
												<div class="col-sm-4">
													<button class="btn btn-primary">Search</button>
												</div>
											</div>

										</form>
										<br>
										<c:forEach var="item" items="${page.content}">
											<div class="col-sm-4">
												<input type="hidden" ${item.id}>
												<div class="item">
													<div class="item-thumbnail">
														<a class="fancybox" href="images/products/${item.image}">
															<img src="images/products/${item.image}" width="100%"
															height="250em" alt="Item Thumbnail">
														</a>
													</div>
													<!-- /.item-thumbnail -->

													<div class="item-content">
														<div class="buttons">
															<form>
																<button class="add-to-cart"
																	formaction="/cart/add/${item.id}"
																	class="btn btn-primary">
																	Add to cart <i class="fa fa-shopping-cart"></i>
																</button>

																<button class="wish-list">
																	<i class="fa fa-heart"></i>
																</button>
															</form>
														</div>
														<!-- /.buttons -->
														<h3 class="item-title">
															<a href="/product-view-${item.id}">${item.name}</a>
														</h3>
														<!-- /.item-title -->
														<div class="item-price">
															<span class="currency">$</span> <span class="price">${item.price}</span>
														</div>
														<!-- /.item-price -->
														<div class="rating">
															<input type="hidden" class="rating-tooltip-manual"
																data-filled="fa fa-star" data-empty="fa fa-star-o"
																data-fractions="5" />
														</div>
														<!-- /.rating -->

													</div>
													<!-- /.item-content -->
												</div>
												<!-- /.item -->
											</div>
										</c:forEach>


									</div>
									<!-- /.tab-pane -->



									<div role="tabpanel" class="tab-pane fade text-left" id="list">
										<c:forEach var="item" items="${page.content}">
											<div class="item media">
												<div class="item-thumbnail media-left">
													<img src="images/products/${item.image}"
														alt="Item Thumbnail"> <span class="ribbon new">new</span>
												</div>
												<!-- /.item-image -->

												<input type="hidden" ${item.id}>
												<div class="item-content media-body">
													<h3 class="item-title">
														<a href="#">" ${item.name}</a>
													</h3>
													<!-- /.item-title -->

													<div class="item-price">
														<div class="current-price">
															<span class="currency">$</span><span class="price">"
																${item.price}</span>
														</div>
														<!-- /.current-price -->
													</div>
													<!-- /.item-price -->

													<p class="description">Nam nec tellus a odio tincidunt
														auctor a ornare odio. Sed non mauris vitae erat consequat
														auctor eu in elit. Class aptent taciti sociosqu ad litora
													</p>
													<!-- /.description -->
													
													
													<form>
													<div class="item-bottom">
														<div class="buttons">
															<button formaction="/cart/add/${item.id}" class="add-to-cart"
																class="btn btn-primary">Add to cart <i
																class="fa fa-shopping-cart"></i></button>
															<button class="wish-list">
																<i class="fa fa-heart"></i>
															</button>
															<a class="fancybox" href="images/products/${item.image}"><i
																class="fa fa-search"></i></a>
															<button class="compare">
																<i class="fa fa-exchange"></i>
															</button>
														</div>
														<!-- /.buttons -->

														<div class="rating">
															<input type="hidden" class="rating-tooltip-manual"
																data-filled="fa fa-star" data-empty="fa fa-star-o"
																data-fractions="5" />
														</div>
														<!-- /.rating -->

													</div>
													</form>
													<!-- /.item-bottom -->
												</div>
												<!-- /.item-content -->
											</div>
											<!-- /.item -->
										</c:forEach>

									</div>
									<!-- /.tab-pane -->
								</div>
								<!-- /.tab-content -->
							</div>
							<!-- /.row -->
						</div>
						<!-- /.shop-products -->

						<div class="pagination pagination-02 text-center">
							<a href="/product-search?p=0" class="prev"><i
								class="ti-angle-double-left">First</i></a> <a
								href="/product-search?p=${page.number-1}" class="prev"><i
								class="ti-angle-double-left">Prev</i></a> <a
								href="/product-search?p=${page.number+1}" class="next"><i
								class="ti-angle-double-right">Next</i></a> <a
								href="/product-search?p=${page.totalPages-1}" class="next"><i
								class="ti-angle-double-right">Last</i></a>
						</div>
						<!-- /.pagination -->
					</div>

					<div class="col-md-4">
						<aside class="sidebar right-sidebar pull-left">
							<h3 class="widget-title">
								Filter By <span></span>
							</h3>
							<div class="widget widget_search_by_categories">
								<div class="heading">
									<h3 class="heading-title">Categories</h3>
									<!-- /.heading-title -->
									<div class="widget-details">
										<ul class="category-menu">
										
											<c:forEach var="ct" items="${category}">
											<form:form>
											<input type="hidden" name="categoryId" value="${ct.id}">
											<li class="menu-item menu-item-has-children"><a href="/product-${ct.id}">${ct.name}</a></li>
											</form:form>
											</c:forEach>
											
										</ul>
									</div>
									<!-- /.widget-details -->
								</div>
								<!-- /.heading -->
							</div>
							<!-- /.widget -->



							<div class="widget widget_filter_price">
								<h3 class="heading-title">Price</h3>
								<!-- /.heading-title -->
								<div class="widget-details">
									<div id="slider-range"></div>
									<div class="price-range">
										<input type="text" id="amount" readonly>

									</div>

									<button class="btn btn-xs filter-btn">Filter</button>
								</div>
								<!-- /.widget-details -->
							</div>
							<!-- /.widget -->

							<div class="widget widget_filter_sizes">
								<h3 class="heading-title">Size</h3>
								<!-- /.heading-title -->
								<div class="widget-details">
									<button>sm</button>
									<button>s</button>
									<button>m</button>
									<button>l</button>
									<button>xl</button>
									<button>xxl</button>
								</div>
								<!-- /.widget-details -->
							</div>
							<!-- /.widget -->

							<div class="widget widget_filter_color">
								<h3 class="heading-title">Color</h3>
								<!-- /.heading-title -->
								<div class="widget-details">
									<button class="black"></button>
									<button class="white"></button>
									<button class="gray"></button>
									<button class="lime-red"></button>
									<button class="light-blue"></button>
									<button class="yellow"></button>
								</div>
								<!-- /.widget-details -->
							</div>
							<!-- /.widget -->

						</aside>
						<!-- /.sidebar -->
					</div>

				</div>
				<!-- /.row -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.section-padding -->
	</section>
	<!-- /.shop-contents -->





	<%@include file="function/footer.jsp"%>

	<div id="scroll-to-top" class="scroll-to-top">
		<i class="fa fa-angle-double-up"></i>
	</div>



	<script src="assets/js/plugins.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/jquery-ui.min.js"></script>
	<script src="assets/js/bootstrap-rating.min.js"></script>


	<script type="text/javascript">
		jQuery(document).ready(
				function($) {
					"use strict";
					jQuery('.rating-tooltip-manual').rating({
						extendSymbol : function() {
							var title;
							$(this).tooltip({
								container : 'body',
								placement : 'bottom',
								trigger : 'manual',
								title : function() {
									return title;
								}
							});
							$(this).on('rating.rateenter', function(e, rate) {
								title = rate;
								$(this).tooltip('show');
							}).on('rating.rateleave', function() {
								$(this).tooltip('hide');
							});
						}
					});

					/*-------- Filter By Price -----------*/

					jQuery("#slider-range").slider(
							{
								range : true,
								min : 0,
								max : 500,
								values : [ 75, 300 ],
								slide : function(event, ui) {
									$("#amount").val(
											"$" + ui.values[0] + " - $"
													+ ui.values[1]);
								}
							});
					jQuery("#amount").val(
							"$" + $("#slider-range").slider("values", 0)
									+ " - $"
									+ $("#slider-range").slider("values", 1));

				});
	</script>



</body>

</html>