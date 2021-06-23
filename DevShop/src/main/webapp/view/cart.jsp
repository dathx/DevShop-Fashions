<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]>      <html class="no-js" lang=""> <!<![endif]-->
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

  <title>Dev Shop - Shopping cart</title>
  <meta name="description" content="Shopaholic - e-Commerce HTML5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="shortcut icon" href="images/favicon.ico">

  <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="assets/css/themify-icons.css">
  <link rel="stylesheet" type="text/css" href="assets/css/et-line-icons.css">  

  <link rel="stylesheet" href="assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/slick.css">
  <link rel="stylesheet" href="assets/css/magnific-popup.css"> 
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/themes.css">
  <link rel="stylesheet" href="assets/css/shop/cart.css">

  <!--[if lte IE 7]><script src="lte-ie7.js"></script><![endif]-->
  <!--[if lt IE 9]><script src="assets/js/vendor/html5-3.6-respond-1.4.2.min.js"></script><![endif]-->


</head>


<body>


  <%@include file="function/header.jsp"%>




  <section class="page-name-sec page-name-sec-01">
    <div class="section-padding">
      <div class="container">
        <h3 class="page-title">Shopping Cart</h3><!-- /.page-title -->

        <div class="row">
          <div class="col-sm-7">
            <p class="description">
              Duis sed odio sit amet nibh vulputate cursus a sit amet. 
            </p><!-- /.description -->
          </div>

          <div class="col-sm-5">
            <ol class="breadcrumb text-right">
              <li><a href="#">Home</a></li>
              <li><a href="#">Shop</a></li>
              <li class="active">Cart</li>
            </ol><!-- /.breadcrumb -->
          </div>

        </div><!-- /.row -->
      </div><!-- /.container -->
    </div><!-- /.section-padding -->
  </section><!-- /.page-name-sec -->




  <section class="cart-section">
    <div class="section-padding">
      <div class="container">
        <div class="per-order-items">

          <table class="cart-table">
            <tbody>
              <tr class="order-head">
                <th>PRODUCTS</th>
                <th>UNIT PRICE</th>
                <th>QUANTITY</th>
                <th>SUBTOTAL</th>
                <th></th>
              </tr>
                <c:forEach var="item" items="${cart.items}">
                  <form action="/cart/update/${item.id}" method="post">
               	
	              <tr>			
	                <td class="order-item">
	                <a  class="del" href="/cart/remove/${item.id}"><i class="ti-trash"></i> </a>
	                  <div class="item-thumbnail">
	                    <img src="images/products/${item.image}"  alt="images">
	                  </div><!-- /.item-thumbnail -->
	
	                  <div class="item-details">
	                    <h3 class="item-title">${item.name}</h3>
	                    <div class="product-meta">
	                      <span class="meta-id"> Color: <span class="meta-about">Black</span></span>
	                      <span class="meta-id"> Size: <span class="meta-about">XL</span></span>
	                    </div><!-- /.product-meta -->
	                  </div><!-- /.item-details -->
	                </td>
	                <td class="unit-price"><span class="currency">$</span><span class="price">${item.price}</span></td>
	
	                <td class="order-count">
	               		 <input type="number" name="qty" min="1" value="${item.qty}" onblur="this.form.submit()" >
	                  <!-- /<div class="cart-counter">
	                    <button class="item-minus"><i class="ti-minus"></i></button>
	                    <span class="item-count">${item.qty}</span>
	                    <button class="item-plus"><i class="ti-plus"></i></button>
	                  </div>.cart-counter -->
	                </td>
	
	                <td class="total-price"><span class="currency">$</span><span class="price">${item.price * item.qty}</span></td>
	
	                <td class="edit"><button type="submit" formaction="/cart/update/${item.id}"><i class="ti-pencil"></i></button>
	              </tr>
	              </form>
              </c:forEach>

            </tbody>
          </table><!-- /.cart-table -->

          <div class="cart-buttons">

			<form action="">
            <button formaction="/cart/clear" class="clear-cart">Clear shopping cart</button>
            <button formaction="/home" class="update-cart">Go to home</button>
            <button formaction="/product" class="continue pull-right">Continue shopping</button>
            </form>
          </div><!-- /.cart-buttons -->
        </div><!-- /.per-order-items -->

        <div class="billing-table">   
          <div class="row">
            <div class="discount-details col-md-4 col-sm-6">
              <h3 class="title">Have a cupon?</h3>
              <form action="#">
                <input class="form-input" type="text" placeholder="Cupon Code">
                <button type="submit" class="btn submit-code">Apply Code</button>
              </form>
            </div><!-- /.discount-details -->
   			<form action="/checkout" id="sign-in-form" >      
            <div class="shipping-details col-md-4 col-sm-6">
              <h3 class="title">Delivery address</h3>
               <h3>${msg}</h3>  
              <input type="hidden"  name="username"  class="input" value="${user.username}" placeholder="Username"/> 
     		<input class="form-input" type="text" id="user_login" name="address" placeholder="Address" required>                    
            </div><!-- /.shipping-details -->

            <div class="billing-order col-md-4 col-sm-6">
              <div class="order-cost">
                <ul>
                  <li>
                    <div class="bill-name">Sub-total</div>
                    <div class="amount"><span class="currency">$</span><span class="count"> ${total}</span></div>
                  </li>
                  <li>
                    <div class="bill-name">Shipping</div>
                    <div class="amount"><span class="currency">$</span><span class="count">25.00</span></div>
                  </li>
                  <li>
                    <div class="bill-name total">Order Total</div>
                    <div class="amount total"><span class="currency">$</span><span class="count">${total+25}</span></div>
                  </li>
                </ul>          
                <button type="submit" class="btn btn-primary">Proceed to checkout</button>              
              </div><!-- /.order-cost -->
            </div><!-- /.billing-order -->
            </form>
          </div><!-- /.row -->
        </div><!-- /.billing-table -->
      </div><!-- /.contaier -->
    </div><!-- /.section-padding -->
  </section><!-- /.cart-section -->


    
   <%@include file="function/footer.jsp"%>



  <div id="scroll-to-top" class="scroll-to-top">
    <i class="fa fa-angle-double-up"></i>    
  </div>



  <script src="assets/js/plugins.js"></script>
  <script src="assets/js/main.js"></script>



</body>
</html>