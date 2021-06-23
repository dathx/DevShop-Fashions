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

<title>Dev Shop | Home</title>
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
<link rel="stylesheet" href="assets/css/home/home-01.css">

<!--[if lte IE 7]><script src="lte-ie7.js"></script><![endif]-->
<!--[if lt IE 9]><script src="assets/js/vendor/html5-3.6-respond-1.4.2.min.js"></script><![endif]-->

	<style>
.goog-te-banner-frame.skiptranslate {
	display: none !important;
}

body {
	top: 0px !important;
}
</style>
	<div class='widget Translate' data-version='1' id='Translate2'>

		<div id='google_translate_element'></div>
		<script>
			function googleTranslateElementInit() {
				new google.translate.TranslateElement(
						{
							pageLanguage : 'vi',
							autoDisplay : 'false',
							layout : google.translate.TranslateElement.InlineLayout.SIMPLE
						}, 'google_translate_element');
			}

			function googleTranslateElementInit() {
				new google.translate.TranslateElement(
						{
							pageLanguage : 'vi',
							includedLanguages : 'vi,en,ko,jp',
							layout : google.translate.TranslateElement.InlineLayout.SIMPLE
						}, 'google_translate_element');
			}
		</script>
	</div>
	<script
		src='//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit'></script>
</div>

</head>


<body>


	<%@include file="function/header.jsp"%>


	<section class="banner banner-01 text-center background-bg"
		data-image-src="images/banner/banner.png">
		<div class="section-padding">
			<div class="container">
				<div class="banner-content">
					<h4 class="top-title">Brand New</h4>
					<!-- /.top-title -->
					<h2 class="main-title">Summer Collection</h2>
					<!-- /.main-title -->
					<h3 class="sub-title">The Sun is out to shine your world</h3>
					<!-- /.sub-title -->
					<p class="description">Aenean sollicitudin, lorem quis bibendum
						auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.
						Duis sed odio sit amet nibh</p>
					<!-- /.description -->
					<a href="/product" class="btn">Shop Now</a>
					<!-- /.btn -->
				</div>
				<!-- /.banner-content -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.section-padding -->
	</section>
	<!-- /.banner -->






	<section class="featured">
		<div class="section-padding">
			<div class="container">

				<!-- Nav tabs -->
				<div class="featured-navs">
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#featured"
							aria-controls="featured" role="tab" data-toggle="tab">Featured</a></li>
						<li role="presentation"><a href="#new" aria-controls="new"
							role="tab" data-toggle="tab">New</a></li>
					</ul>
					<!-- /.nav-tabs -->
				</div>
				<!-- /.featured-navs -->

				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="featured">
						<div class="featured-slider">

							<c:forEach var="item" items="${items}">
								<form>
									<div class="item">
										<input type="hidden" ${item.id}>
										<div class="item-top">
											<div class="item-thumbnail">
												<img src="images/products/${item.image}" width="100%"
													height="250em" alt="Item Image"> <span
													class="ribbon sale">Sale</span>
											</div>
											<!-- /.item-thumbnail -->

											<div class="item-inner">
												<button class="wish-list">
													<i class="fa fa-heart"></i><span>Add to wishlist </span>
												</button>
												<button formaction="/cart/add/${item.id}"
													class="add-to-cart">
													<i class="fa fa-shopping-cart"></i><span>Add to cart</span>
												</button>
												<a class="fancybox" href="images/products/${item.image}"><i
													class="fa fa-search"></i> <span> Quick View</span></a>
											</div>
											<!-- /.item-inner -->
										</div>
										<!-- /.item-top -->
										<div class="item-bottom">
											<h3 class="item-title">
												<a href="/product-view-${item.id}">${item.name}</a>
											</h3>
											<!-- /.item-title -->
											<div class="item-price">
												<span class="currency">$</span>
												<!-- /.currency -->
												<span class="price">${item.price}</span>
												<!-- /.price -->
											</div>
											<!-- /.item-price -->

											<div class="previous-price">
												<span class="currency">$</span>
												<!-- /.currency -->
												<span class="price">${item.price+14}</span>
												<!-- /.price -->
											</div>
											<!-- /.previous-price -->
										</div>
										<!-- /.item-bottom -->
									</div>
									<!-- /.item -->
								</form>
							</c:forEach>



						</div>
					</div>
				</div>
				<!-- /.tab-content -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.section-padding -->
	</section>
	<!-- /.featured -->



	<section class="discount">
		<div class="section-padding">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 left-content">
						<div class="item">
							<a href="#">
								<div class="item-thumbnail text-right">
									<img src="images/home01/thumb/3.jpg" alt="Image">
								</div> <!-- /.item-thumbnail -->
								<div class="item-details">
									<h3 class="item-title text-center">
										<span>45%</span> discount
									</h3>
									<!-- /.item-title -->
								</div> <!-- /.item-details -->
							</a>
						</div>
						<!-- /.item -->
					</div>

					<div class="col-sm-6 right-content">
						<div class="item">
							<a href="#">
								<div class="item-thumbnail text-right">
									<img src="images/home01/thumb/1.jpg" alt="Image">
								</div> <!-- /.item-thumbnail -->
								<div class="item-details">
									<h3 class="item-title text-left">
										<span>New</span> collection
									</h3>
									<!-- /.item-title -->
								</div> <!-- /.item-details -->
							</a>
						</div>
						<!-- /.item -->
					</div>
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.section-padding -->
	</section>
	<!-- /.discount -->



	<section class="trending bg-gray">
		<div class="section-padding">
			<div class="container">
				<div class="section-top">
					<h2 class="section-title">
						Trending <span></span>
					</h2>
					<!-- /.section-title -->
				</div>
				<!-- /.section-top -->

				<div class="row">
					<div class="trending-slider owl-carousel owl-theme">

						<div class="item">
							<div class="col-md-6">
								<div class="item-thumbnail">
									<img src="images/home01/trend/1.png" alt="Item Thumbnail">
								</div>
								<div class="item-inner">
									<button class="wish-list">
										<i class="fa fa-heart"></i><span>Add to wishlist </span>
									</button>
									<a class="fancybox" href="images/home01/trend/1.png"><i
										class="fa fa-search"></i> <span> Quick View</span></a>
								</div>
								<!-- /.item-inner -->
							</div>

							<div class="col-md-6">
								<div class="item-details">
									<h3 class="item-title">
										<a href="shop-details-01.html">Product name here</a>
									</h3>
									<!-- /.item-title -->
									<div class="rating">
										<input type="hidden" class="rating-tooltip-manual"
											data-filled="fa fa-star" data-empty="fa fa-star-o"
											data-fractions="5" />
									</div>
									<!-- /.rating -->
									<div class="item-price">
										<span class="currency">$</span>
										<!-- /.currency -->
										<span class="price">88.00</span>
										<!-- /.price -->
									</div>
									<!-- /.item-price -->
									<p class="description">I returned from the City about three
										o'clock on that May pretty well</p>
									<!-- /.description -->
									<a href="#" class="btn">Add to cart</a>
									<!-- /.btn -->
								</div>
							</div>
						</div>

						<div class="item">
							<div class="col-md-6">
								<div class="item-thumbnail">
									<img src="images/home01/trend/2.png" alt="Item Thumbnail">
								</div>

								<div class="item-inner">
									<button class="wish-list">
										<i class="fa fa-heart"></i><span>Add to wishlist </span>
									</button>
									<a class="fancybox" href="images/home01/trend/2.png"><i
										class="fa fa-search"></i> <span> Quick View</span></a>
								</div>
								<!-- /.item-inner -->
							</div>

							<div class="col-md-6">
								<div class="item-details">
									<h3 class="item-title">
										<a href="shop-details-01.html">Product name here</a>
									</h3>
									<!-- /.item-title -->
									<div class="rating">
										<input type="hidden" class="rating-tooltip-manual"
											data-filled="fa fa-star" data-empty="fa fa-star-o"
											data-fractions="5" />
									</div>
									<!-- /.rating -->
									<div class="item-price">
										<span class="currency">$</span>
										<!-- /.currency -->
										<span class="price">88.00</span>
										<!-- /.price -->
									</div>
									<!-- /.item-price -->
									<p class="description">had been three months in the Old
										Country, and was fed up with it</p>
									<!-- /.description -->
									<a href="#" class="btn">Add to cart</a>
									<!-- /.btn -->
								</div>
							</div>
						</div>

						<div class="item">
							<div class="col-md-6">
								<div class="item-thumbnail">
									<img src="images/home01/trend/3.png" alt="Item Thumbnail">
								</div>

								<div class="item-inner">
									<button class="wish-list">
										<i class="fa fa-heart"></i><span>Add to wishlist </span>
									</button>
									<a class="fancybox" href="images/home01/trend/3.png"><i
										class="fa fa-search"></i> <span> Quick View</span></a>
								</div>
								<!-- /.item-inner -->
							</div>

							<div class="col-md-6">
								<div class="item-details">
									<h3 class="item-title">
										<a href="shop-details-01.html">Product name here</a>
									</h3>
									<!-- /.item-title -->
									<div class="rating">
										<input type="hidden" class="rating-tooltip-manual"
											data-filled="fa fa-star" data-empty="fa fa-star-o"
											data-fractions="5" />
									</div>
									<!-- /.rating -->
									<div class="item-price">
										<span class="currency">$</span>
										<!-- /.currency -->
										<span class="price">88.00</span>
										<!-- /.price -->
									</div>
									<!-- /.item-price -->
									<p class="description">The weather made me liverish, the
										talk of the ordinary Englishman made sick</p>
									<!-- /.description -->
									<a href="#" class="btn">Add to cart</a>
									<!-- /.btn -->
								</div>
							</div>
						</div>

						<div class="item">
							<div class="col-md-6">
								<div class="item-thumbnail">
									<img src="images/home01/trend/4.png" alt="Item Thumbnail">
								</div>
								<div class="item-inner">
									<button class="wish-list">
										<i class="fa fa-heart"></i><span>Add to wishlist </span>
									</button>
									<a class="fancybox" href="images/home01/trend/4.png"><i
										class="fa fa-search"></i> <span> Quick View</span></a>
								</div>
								<!-- /.item-inner -->
							</div>

							<div class="col-md-6">
								<div class="item-details">
									<h3 class="item-title">
										<a href="shop-details-01.html">Product name here</a>
									</h3>
									<!-- /.item-title -->
									<div class="rating">
										<input type="hidden" class="rating-tooltip-manual"
											data-filled="fa fa-star" data-empty="fa fa-star-o"
											data-fractions="5" />
									</div>
									<!-- /.rating -->
									<div class="item-price">
										<span class="currency">$</span>
										<!-- /.currency -->
										<span class="price">88.00</span>
										<!-- /.price -->
									</div>
									<!-- /.item-price -->
									<p class="description">It made me bite my lips to think of
										the plans I had been building up those</p>
									<!-- /.description -->
									<a href="#" class="btn">Add to cart</a>
									<!-- /.btn -->
								</div>
							</div>
						</div>

					</div>
					<!-- /.trending-slider -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.section-padding -->
	</section>
	<!-- /.trending -->



	<section class="blog blog-01 text-center">
		<div class="section-padding">
			<div class="container">
				<div class="row">
					<div class="section-top">
						<h2 class="section-title">
							Recent Posts<span></span>
						</h2>
					</div>
					<!-- /.section-top -->

					<div class="section-details text-left">
						<div class="col-md-6">
							<article class="post type-post">
								<div class="entry-thumbnail">
									<img src="images/blog/01/1.jpg" alt="Post Thumbnail">
								</div>
								<!-- .entry-thumbnail -->
								<div class="post-content">
									<h3 class="entry-title">
										<a href="blog-single.html">The Milkman Sets Out on his
											Travels</a>
									</h3>
									<!-- /.entry-title -->
									<div class="entry-meta">
										<ul class="meta-list">
											<li><i class="ti-user"></i> <a href="#">Anthony Doe</a></li>
											<li><i class="ti-calendar"></i> on <time
													datetime="2016-05-28">28 May, 2016</time></li>
											<li><i class="ti-comment"></i> <a href="#">22
													Comments</a></li>
										</ul>
										<!-- /.meta-list -->
									</div>
									<!-- /.entry-meta -->

									<p class="description">Ghirlandaio was born to far more
										science and cunning in painting than was current in
										Benozzoâs early years, and all that industry</p>
									<!-- /.description -->
									<a href="3column.html" class="btn">Read More</a>
								</div>
								<!-- /.post-content -->
							</article>
							<!-- /.post -->
						</div>

						<div class="col-md-6">
							<article class="post type-post">
								<div class="entry-thumbnail">
									<img src="images/blog/01/2.jpg" alt="Post Thumbnail">
								</div>
								<!-- .entry-thumbnail -->
								<div class="post-content">
									<h3 class="entry-title">
										<a href="blog-single.html">The Adventure of the Literary
											Innkeeper</a>
									</h3>
									<!-- /.entry-title -->
									<div class="entry-meta">
										<ul class="meta-list">
											<li><i class="ti-user"></i> <a href="#">Anthony Doe</a></li>
											<li><i class="ti-calendar"></i> on <time
													datetime="2016-05-28">28 May, 2016</time></li>
											<li><i class="ti-comment"></i> <a href="#">22
													Comments</a></li>
										</ul>
										<!-- /.meta-list -->
									</div>
									<!-- /.entry-meta -->

									<p class="description">Ghirlandaio was born to far more
										science and cunning in painting than was current in
										Benozzoâs early years, and all that industry</p>
									<!-- /.description -->
									<a href="3column.html" class="btn">Read More</a>
								</div>
								<!-- /.post-content -->
							</article>
							<!-- /.post -->
						</div>
					</div>
					<!-- /.section-details -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.section-padding -->
	</section>
	<!-- /.blog -->







	<%@include file="function/footer.jsp"%>


	<div id="scroll-to-top" class="scroll-to-top">
		<i class="fa fa-angle-double-up"></i>
	</div>


	<script src="assets/js/plugins.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/bootstrap-rating.min.js"></script>
	<script type="text/javascript"
		src="http://free-website-translation.com/scripts/fwt.js" /></script>


</body>

</html>