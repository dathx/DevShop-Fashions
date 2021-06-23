<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<header id="masthead" class="masthead">


	<div class="header-top">
		<div class="container">
			<div class="row">
				<div class="col-sm-5 top-left text-left">
					<p class="top-contact">
						<i class="ti-email"></i><span><a
							href="#">hxuandat2001@gmail.com</a></span> <i class="ti-mobile"></i><span>+84 393688714</span>
					</p>
					<!-- /.top-contact -->

				</div>
				<!-- /.top-left -->

				<div class="col-sm-7 top-right text-right">
					<div id="currency" class="currency dropdown">
						<a href="#" class="current-title">USD $</a>
						<ul class="unsorted-list">
							<li>EURO</li>
							<li>VND</li>
						</ul>
					</div>

					<div id="language" class="language dropdown">
						<a href="#" class="current-title">English</a>
						<ul class="unsorted-list">
							<li>Viet Nam</li>
							<li>French</li>
							<li>Spanish</li>
							<li>Mandarin</li>
						</ul>
					</div>
					<a href="?lang=vi">Tiếng việt</a> :: <a href="?lang=en">English</a>

					<div class="wish-list">
						<a href="#" class="current-title">Wishlist</a> <span class="count">0</span>
						<span><i class="ti-heart"></i></span>
					</div>

					<div class="checkout">
						<a href="/cart-view">Checkout <i class="ti-check-box"></i></a>
					</div>
					<!-- /.checkout -->

					<div class="my-account dropdown">
						<a href="#">My Account<i class="ti-user"></i></a>
						<ul class="unsorted-list">
							<li><a href="/login">Log In</a></li>
							<li><a href="/register">Register</a></li>
							<li><a href="#">My Profile</a></li>
							<li><a href="#">My Wishlist</a></li>
							<li><a href="/changepassword">Change Pass</a></li>
							<li><a href="/forgotpassword">Forgot Pass</a></li>
							<li><a href="/cart-view">My Cart</a></li>
							<li><a href="/logout">Logout</a></li>
						</ul>
					</div>
					<p style="color: red;">${sessionScope.user.fullname}</p>
					<!-- /.my-account -->

				</div>
				<!-- /.top-right -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /.header-top -->

	<div class="header-middle">
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<h1>
						<a class="navbar-brand hidden-xs" href="/home"><img
							src="images/logo.png" alt="Site Logo"></a>
					</h1>
				</div>
				<div class="col-sm-7">
					<div class="top-search-form">

						<form action="/product-search" method="post" class="menu-form">
							<fieldset>
								<select name="category" id="category">
									<option selected="selected">All Categories</option>
									<option>T-Shirts</option>
									<option>Caps & Hats</option>
									<option>Cups & Mugs</option>
									<option>Hoodie</option>
									<option>Others</option>
								</select>
							</fieldset>

							<input type="text" name="keywords" value="${keywords}"
								placeholder="Keywords ..." class="form-control">
							<button type="submit" class="btn">
								<i class="fa fa-search"></i>
							</button>
						</form>
					</div>
					<!-- /.top-search-form -->
				</div>
				<div class="col-sm-2">
					<div class="shop-cart">
						<a class="cart-control" href="#" title="View your shopping cart">
							<i class="ti-bag"></i> <span class="count">${count}</span> <span>Cart
								- </span> <span class="amount">$ ${total}</span>
						</a>
						<!-- /.cart-control -->

						<div class="cart-items">
							<div class="widget_shopping_cart_content">
								<div class="cart-top">
									<c:forEach var="item" items="${cart.items}">
										<div class="item media">
											<a class="btn" href="/cart/remove/${item.id}"><i
												class="fa fa-close"></i> </a>
											<div class="item-thumbnail media-left">
												<img src="images/products/${item.image }" width="80em"
													height="80em" alt="Item Thimbnail">
											</div>
											<!-- /.item-thumbnail -->
											<div class="item-details media-body">
												<div class="rating">
													<input type="hidden" class="rating-tooltip-manual"
														data-filled="fa fa-star" data-empty="fa fa-star-o"
														data-fractions="5" />
												</div>
												<!-- /.rating -->
												<h4 class="item-title">
													<a href="#">${item.name}</a>
												</h4>
												<!-- /.item-title -->
												<div class="item-price">
													<div class="item-price">
														<span class="currency">$</span> <span class="price">${item.price}</span>
														<span class="item-count">${item.qty}</span>
														<!-- /.item-count -->
													</div>
													<!-- /.item-price -->
												</div>
												<!-- /.item-price -->
											</div>
											<!-- /.item-details -->
										</div>
										<!-- /.item -->
									</c:forEach>

								</div>
								<!-- /.cart-top -->

								<div class="cart-middle">
									<form action="">
										<button formaction="/cart/clear" class="btn pull-left">
											<i class="ti-trash"></i> Empty Cart
										</button>
									</form>
									<div class="price-total pull-right">
										<span>Sub total:</span> <span class="currency">$</span><span
											class="price">${total}</span>
									</div>
									<!-- /.price-total -->
								</div>
								<!-- /.cart-middle -->

								<div class="cart-bottom">
									<a href="/cart-view" class="btn pull-left"><i
										class="icons icon-basket-loaded"></i> View Cart</a> <a
										href="/cart-view" class="btn pull-right">Checkout</a>
								</div>
								<!-- /.cart-bottom -->
							</div>
							<!-- /.widget_shopping_cart_content -->
						</div>
						<!-- /.scart-items -->
					</div>
				</div>
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /.header-middle -->

	<div class="header-bottom">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#main-menu"
					aria-expanded="false">
					<i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand visible-xs" href="./"> <img
					src="images/logo.png" alt="Site Logo">
				</a>
				<!-- /.navbar-brand -->
			</div>

			<nav id="main-menu" class="menu collapse navbar-collapse pull-left">
				<ul class="nav navbar-nav">
					<li class="menu-item menu-item-has-children active"><a
						href="/home">Home</a></li>
					<%-- <s:message code="menu.home"/> --%>
					<li
						class="menu-item menu-item-has-children menu-item-has-mega-menu">
						<!-- <fmt:message key="menu.shop" />  --> <a href="#">Shop</a>
						<ul class="mega-menu sub-menu">
							<li>
								<div class="container">
									<div class="menu-item col-sm-3">

										<h6 class="menu-title">Shop</h6>
										<ul class="menu-list">
											<li><a href="/product">Products</a></li>
											<li><a href="/cart-view">Shopping Cart</a></li>
											<li><a href="/checkout">Checkout</a></li>
										</ul>
									</div>

									<div class="menu-item col-sm-3">
										<h6 class="menu-title">Shop Pages</h6>

										<ul class="menu-list">
											<li><a href="#">Shop List 01</a></li>
											<li><a href="#">Shop List 02</a></li>
											<li><a href="#">Shop Details 01</a></li>
											<li><a href="#">Shop Details 02</a></li>
										</ul>
									</div>

									<div class="menu-item col-sm-3">
										<h6 class="menu-title">Accessories</h6>

										<ul class="menu-list">
											<li><a href="#">Innerwears</a></li>
											<li><a href="#">T-Shirts & Shorts</a></li>
											<li><a href="#">Caps & Scarf</a></li>
											<li><a href="#">Trousers</a></li>
										</ul>
									</div>

									<div class="menu-item col-sm-3">
										<div class="menu-content">
											<a href="#"> <img src="images/menu/shop.png" alt="Image">
												<h3 class="content-title">
													<span>-65%</span> Discount
												</h3>
											</a>
										</div>
										<!-- /.menu-content -->
									</div>
								</div>
							</li>
						</ul>
					</li>


					<li class="menu-item"><a href="/about">About</a></li>
					<li class="menu-item"><a href="/service">Service</a></li>
					<li class="menu-item"><a href="/contact">Contact</a></li>
					<li class="menu-item"><a href="/blog">Blog</a></li>



					<li class="menu-item"><a href="/faq">FAQ?</a></li>

				</ul>
				<!-- /.navbar-nav -->
			</nav>
			<!-- /.navbar-collapse -->

			<div class="menu-social pull-right">
				<a href=""><i class="ti-twitter-alt"></i></a> <a
					href="https://www.facebook.com/dathx/" target="_blank"><i
					class="ti-facebook"></i></a> <a href="#"><i
					class="ti-pinterest-alt"></i></a> <a href="#"><i
					class="ti-vimeo-alt"></i></a>
			</div>
			<!-- /.menu-social -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /.header-bottom -->

</header>
<script>
	$(document).ready(function() {
		$("a[href*=lang]").on("click", function() {
			var param = $(this).attr("href");
			$.ajax({
				url : "/home" + param,
				success : function() {
					location.reload();
				}
			});
			return false;
		})
	})

	
</script>